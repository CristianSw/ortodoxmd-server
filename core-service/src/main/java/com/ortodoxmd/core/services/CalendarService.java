package com.example.core.service;

import com.example.core.entity.CalendarDay;
import com.example.core.entity.Saint;
import com.example.core.repository.CalendarDayRepository;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.*;

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
                        dayEntity.setIsFastingDay(json.path("fast_level").asInt() > 0);
                        dayEntity.setFastingType(mapFastingType(json.path("fast_level").asText()));

                        String fastingDescEn = json.path("fast_level_desc").asText();
                        dayEntity.setFastingDescriptionEn(fastingDescEn);
                        dayEntity.setFastingDescriptionRo(enableTranslation ? translateText(fastingDescEn, "Romanian") : fastingDescEn);
                        dayEntity.setFastingDescriptionRu(enableTranslation ? translateText(fastingDescEn, "Russian") : fastingDescEn);

                        String otherEn = json.path("readings").asText();  // Ajustează dacă field diferă
                        dayEntity.setOtherCommemorationsEn(otherEn);
                        dayEntity.setOtherCommemorationsRo(enableTranslation ? translateText(otherEn, "Romanian") : otherEn);
                        dayEntity.setOtherCommemorationsRu(enableTranslation ? translateText(otherEn, "Russian") : otherEn);

                        List<Saint> saints = new ArrayList<>();
                        JsonNode commems = json.path("commemorations");
                        for (JsonNode commem : commems) {
                            Saint saint = new Saint();
                            String nameEn = commem.path("title").asText();
                            String descEn = commem.path("description").asText();

                            saint.setNameEn(nameEn);
                            saint.setNameRo(enableTranslation ? translateText(nameEn, "Romanian") : nameEn);
                            saint.setNameRu(enableTranslation ? translateText(nameEn, "Russian") : nameEn);

                            saint.setDescriptionEn(descEn);
                            saint.setDescriptionRo(enableTranslation ? translateText(descEn, "Romanian") : descEn);
                            saint.setDescriptionRu(enableTranslation ? translateText(descEn, "Russian") : descEn);

                            saint.setCalendarDay(dayEntity);
                            saints.add(saint);
                        }
                        dayEntity.setSaints(saints);

                        repository.save(dayEntity);
                        logger.info("Populated data for {}", dateStr);
                    } catch (Exception e) {
                        logger.error("Error populating day {}-{}-{}: {}", year, month, day, e.getMessage());
                    }
                }
            }
        }
    }

    private String translateText(String text, String targetLang) {
        // ... codul de traducere neschimbat, dar nu se apelează acum
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
                day.setFastingDescription(day.getFastingDescriptionEn());
                day.setOtherCommemorations(day.getOtherCommemorationsEn());
                day.getSaints().forEach(s -> {
                    s.setName(s.getNameEn());
                    s.setDescription(s.getDescriptionEn());
                });
            }
            case "ro" -> {
                day.setFastingDescription(day.getFastingDescriptionRo());
                day.setOtherCommemorations(day.getOtherCommemorationsRo());
                day.getSaints().forEach(s -> {
                    s.setName(s.getNameRo());
                    s.setDescription(s.getDescriptionRo());
                });
            }
            case "ru" -> {
                day.setFastingDescription(day.getFastingDescriptionRu());
                day.setOtherCommemorations(day.getOtherCommemorationsRu());
                day.getSaints().forEach(s -> {
                    s.setName(s.getNameRu());
                    s.setDescription(s.getDescriptionRu());
                });
            }
            default -> throw new IllegalArgumentException("Unsupported lang: " + lang);
        }

        return day;
    }
}
