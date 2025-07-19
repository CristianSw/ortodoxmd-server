package com.ortodoxmd.core.services;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ortodoxmd.core.entity.CalendarDay;
import com.ortodoxmd.core.entity.Saint;
import com.ortodoxmd.core.repository.CalendarDayRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CalendarService {
    private static final Logger logger = LoggerFactory.getLogger(CalendarService.class);

    @Autowired
    private CalendarDayRepository repository;

    @Value("${grok.api.url}")
    private String grokApiUrl;

    @Value("${grok.api.key}")
    private String grokApiKey;

    private final RestTemplate restTemplate = new RestTemplate();
    private final ObjectMapper objectMapper = new ObjectMapper();
    private static final String ORTHOCAL_BASE = "https://orthocal.info/api/julian/";

    // Flag pentru activare traducere; setează la true când vrei traduceri reale și rulează populate din nou
    private final boolean enableTranslation = false;

    public void populateForPeriod(int startYear, int startMonth, int endYear, int endMonth) {
        for (int year = startYear; year <= endYear; year++) {
            int sm = (year == startYear) ? startMonth : 1;
            int em = (year == endYear) ? endMonth : 12;
            for (int month = sm; month <= em; month++) {
                int daysInMonth = java.time.YearMonth.of(year, month).lengthOfMonth();
                for (int day = 1; day <= daysInMonth; day++) {
                    try {
                        String dateStr = String.format("%04d-%02d-%02d", year, month, day);
                        String apiUrl = ORTHOCAL_BASE + year + "/" + month + "/" + day + "/";

                        ResponseEntity<String> response = restTemplate.getForEntity(apiUrl, String.class);
                        JsonNode json = objectMapper.readTree(response.getBody());

                        CalendarDay dayEntity = repository.findById(dateStr).orElse(new CalendarDay());
                        dayEntity.setDate(dateStr);
                        dayEntity.setFastingDay(json.path("fast_level").asInt() > 0);
                        dayEntity.setFastingType(mapFastingType(json.path("fast_level").asText()));

                        String fastingDescEn = json.path("fast_level_desc").asText();
                        dayEntity.setFastingDescriptionEn(fastingDescEn);
                        dayEntity.setFastingDescriptionRo(enableTranslation ? translateText(fastingDescEn, "Romanian") : fastingDescEn);
                        dayEntity.setFastingDescriptionRu(enableTranslation ? translateText(fastingDescEn, "Russian") : fastingDescEn);

                        // New: summary_title
                        String summaryTitleEn = json.path("summary_title").asText();
                        dayEntity.setSummaryTitleEn(summaryTitleEn);
                        dayEntity.setSummaryTitleRo(enableTranslation ? translateText(summaryTitleEn, "Romanian") : summaryTitleEn);
                        dayEntity.setSummaryTitleRu(enableTranslation ? translateText(summaryTitleEn, "Russian") : summaryTitleEn);

                        // New: titles (join array)
                        JsonNode titlesNode = json.path("titles");
                        String titlesEn = "";
                        if (titlesNode.isArray()) {
                            List<String> titleList = new ArrayList<>();
                            for (JsonNode node : titlesNode) {
                                titleList.add(node.asText());
                            }
                            titlesEn = String.join(", ", titleList);
                        } else {
                            titlesEn = titlesNode.asText();
                        }
                        dayEntity.setTitlesEn(titlesEn);
                        dayEntity.setTitlesRo(enableTranslation ? translateText(titlesEn, "Romanian") : titlesEn);
                        dayEntity.setTitlesRu(enableTranslation ? translateText(titlesEn, "Russian") : titlesEn);

                        List<Saint> saints = new ArrayList<>();
                        JsonNode saintsNode = json.path("saints");
                        if (saintsNode.isArray() && saintsNode.size() > 0) {
                            for (JsonNode saintJson : saintsNode) {
                                Saint saint = new Saint();
                                String nameAndDescEn = saintJson.asText();  // Entire string as name_and_description

                                saint.setNameAndDescriptionEn(nameAndDescEn);
                                saint.setNameAndDescriptionRo(enableTranslation ? translateText(nameAndDescEn, "Romanian") : nameAndDescEn);
                                saint.setNameAndDescriptionRu(enableTranslation ? translateText(nameAndDescEn, "Russian") : nameAndDescEn);

                                saint.setCalendarDay(dayEntity);
                                saints.add(saint);
                                logger.debug("Added Saint: {} for date {}", nameAndDescEn, dateStr);
                            }
                        } else {
                            logger.info("No saints found for date {}", dateStr);
                        }
                        dayEntity.setSaints(saints);

                        repository.save(dayEntity);
                        logger.info("Populated data for {} with {} saints", dateStr, saints.size());
                    } catch (Exception e) {
                        logger.error("Error populating day {}-{}-{}: {}", year, month, day, e.getMessage());
                    }
                }
            }
        }
    }

    private String translateText(String text, String targetLang) {
        if (text == null || text.isEmpty()) return "";

        try {
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            headers.set("Authorization", "Bearer " + grokApiKey);

            Map<String, Object> body = new HashMap<>();
            body.put("model", "grok-4");
            body.put("messages", List.of(
                    Map.of("role", "system", "content", "You are a translator."),
                    Map.of("role", "user", "content", "Translate the following text to " + targetLang + ": " + text)
            ));

            HttpEntity<Map<String, Object>> request = new HttpEntity<>(body, headers);
            ResponseEntity<String> response = restTemplate.postForEntity(grokApiUrl, request, String.class);

            JsonNode json = objectMapper.readTree(response.getBody());
            return json.path("choices").get(0).path("message").path("content").asText().trim();
        } catch (Exception e) {
            logger.error("Translation error for {}: {}", targetLang, e.getMessage());
            return text;
        }
    }

    private String mapFastingType(String level) {
        return switch (level) {
            case "0" -> "no_fast";
            case "1" -> "strict";
            case "2" -> "oil_allowed";
            case "3" -> "fish_allowed";
            default -> "unknown";
        };
    }

    public CalendarDay getCalendarDay(String date, String lang) {
        CalendarDay day = repository.findById(date).orElseThrow(() -> new RuntimeException("Date not found: " + date));

        String effectiveLang = (lang == null || lang.isEmpty()) ? "ro" : lang.toLowerCase();

        switch (effectiveLang) {
            case "en" -> {
                day.setFastingDescriptionEn(day.getFastingDescriptionEn());
                day.getSaints().forEach(s -> {
                    s.setNameAndDescriptionEn(s.getNameAndDescriptionEn());
                });
            }
            case "ro" -> {
                day.setFastingDescriptionRo(day.getFastingDescriptionRo());
                day.getSaints().forEach(s -> {
                    s.setNameAndDescriptionRo(s.getNameAndDescriptionRo());
                });
            }
            case "ru" -> {
                day.setFastingDescriptionRu(day.getFastingDescriptionRu());
                day.getSaints().forEach(s -> {
                    s.setNameAndDescriptionRu(s.getNameAndDescriptionRu());
                });
            }
            default -> throw new IllegalArgumentException("Unsupported lang: " + lang);
        }

        return day;
    }
}