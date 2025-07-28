package com.ortodoxmd.core.tools;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.io.PrintWriter;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.List;

public class CalendarParser {
    private static final String ORTHOCAL_BASE = "https://orthocal.info/api/julian/";
    private static final boolean enableTranslation = false;  // Setează true pentru traduceri reale

    private static final RestTemplate restTemplate = new RestTemplate();
    private static final ObjectMapper objectMapper = new ObjectMapper();

    public static void main(String[] args) {
        int startYear = 2025;  // Ajustează perioada dorită
        int endYear = 2035;

        int migrationVersion = 6;  // Începe de la V6; incrementat per grup de 3 luni

        for (int year = startYear; year <= endYear; year++) {
            // Prima grupă: ianuarie-martie
            String sqlFile1 = "V" + migrationVersion + "__calendar_" + year + "_jan_mar.sql";
            processGroupMonths(year, 1, 3, sqlFile1);
            migrationVersion++;

            // A doua grupă: aprilie-iunie
            String sqlFile2 = "V" + migrationVersion + "__calendar_" + year + "_apr_jun.sql";
            processGroupMonths(year, 4, 6, sqlFile2);
            migrationVersion++;

            // A treia grupă: iulie-septembrie
            String sqlFile3 = "V" + migrationVersion + "__calendar_" + year + "_jul_sep.sql";
            processGroupMonths(year, 7, 9, sqlFile3);
            migrationVersion++;

            // A patra grupă: octombrie-decembrie
            String sqlFile4 = "V" + migrationVersion + "__calendar_" + year + "_oct_dec.sql";
            processGroupMonths(year, 10, 12, sqlFile4);
            migrationVersion++;
        }

        System.out.println("SQL files generated for each group of 3 months. Copy to Flyway migration folder.");
    }

    private static void processGroupMonths(int year, int startMonth, int endMonth, String sqlFile) {
        try (PrintWriter pw = new PrintWriter(sqlFile)) {  // Try-with-resources pentru a închide automat
            pw.println("-- " + sqlFile);
            pw.println("-- Insert-uri generate din API pentru calendar anul " + year + " (luni " + startMonth + "-" + endMonth + ") (stil vechi, ortodox)");

            System.out.println("Generating SQL for year " + year + " months " + startMonth + "-" + endMonth + "...");

            for (int month = startMonth; month <= endMonth; month++) {
                System.out.println("  Processing month " + month + " for year " + year + "...");
                int daysInMonth = YearMonth.of(year, month).lengthOfMonth();
                for (int day = 1; day <= daysInMonth; day++) {
                    System.out.println("    Day " + day + " (" + year + "-" + month + "-" + day + ")");
                    try {
                        String dateStr = String.format("%04d-%02d-%02d", year, month, day);
                        String apiUrl = ORTHOCAL_BASE + year + "/" + month + "/" + day + "/";

                        ResponseEntity<String> response = restTemplate.getForEntity(apiUrl, String.class);
                        JsonNode json = objectMapper.readTree(response.getBody());

                        // Insert pentru calendar_days
                        boolean isFastingDay = json.path("fast_level").asInt() > 0;
                        String fastingType = mapFastingType(json.path("fast_level").asText());
                        String fastingDescEn = json.path("fast_level_desc").asText().replace("'", "''");
                        String fastingDescRo = enableTranslation ? translateText(fastingDescEn, "Romanian") : fastingDescEn;
                        String fastingDescRu = enableTranslation ? translateText(fastingDescEn, "Russian") : fastingDescEn;

                        String summaryTitleEn = json.path("summary_title").asText().replace("'", "''");
                        String summaryTitleRo = enableTranslation ? translateText(summaryTitleEn, "Romanian") : summaryTitleEn;
                        String summaryTitleRu = enableTranslation ? translateText(summaryTitleEn, "Russian") : summaryTitleEn;

                        JsonNode titlesNode = json.path("titles");
                        String titlesEn = "";
                        if (titlesNode.isArray()) {
                            List<String> titleList = new ArrayList<>();
                            for (JsonNode node : titlesNode) {
                                titleList.add(node.asText().replace("'", "''"));
                            }
                            titlesEn = String.join(", ", titleList);
                        } else {
                            titlesEn = titlesNode.asText().replace("'", "''");
                        }
                        String titlesRo = enableTranslation ? translateText(titlesEn, "Romanian") : titlesEn;
                        String titlesRu = enableTranslation ? translateText(titlesEn, "Russian") : titlesEn;

                        pw.println("INSERT INTO core_schema.calendar_days (date, is_fasting_day, fasting_type, fasting_description_en, fasting_description_ro, fasting_description_ru, summary_title_en, summary_title_ro, summary_title_ru, titles_en, titles_ro, titles_ru) VALUES (" +
                                "'" + dateStr + "', " + isFastingDay + ", '" + fastingType + "', '" + fastingDescEn + "', '" + fastingDescRo + "', '" + fastingDescRu + "', '" + summaryTitleEn + "', '" + summaryTitleRo + "', '" + summaryTitleRu + "', '" + titlesEn + "', '" + titlesRo + "', '" + titlesRu + "');");

                        // Insert pentru saints
                        JsonNode saintsNode = json.path("saints");
                        if (saintsNode.isArray() && saintsNode.size() > 0) {
                            for (JsonNode saintJson : saintsNode) {
                                String nameAndDescEn = saintJson.asText().replace("'", "''");
                                String nameAndDescRo = enableTranslation ? translateText(nameAndDescEn, "Romanian") : nameAndDescEn;
                                String nameAndDescRu = enableTranslation ? translateText(nameAndDescEn, "Russian") : nameAndDescEn;

                                pw.println("INSERT INTO core_schema.saints (calendar_day_date, name_and_description_en, name_and_description_ro, name_and_description_ru) VALUES (" +
                                        "'" + dateStr + "', '" + nameAndDescEn + "', '" + nameAndDescRo + "', '" + nameAndDescRu + "');");
                            }
                        }

                    } catch (Exception e) {
                        System.err.println("Error for year " + year + ", month " + month + ", day " + day + ": " + e.getMessage());
                    }
                }
            }
        } catch (Exception e) {
            System.err.println("Error opening/closing file " + sqlFile + ": " + e.getMessage());
        }

        System.out.println("SQL file generated for group of 3 months " + year + " months " + startMonth + "-" + endMonth + ".");
    }

    // Helper pentru translateText (simplificat, fără dependințe externe)
    private static String translateText(String text, String targetLang) {
        if (text == null || text.isEmpty()) return "";
        // Placeholder: fără API real, returnează textul original
        return text;
    }

    private static String mapFastingType(String level) {
        return switch (level) {
            case "0" -> "no_fast";
            case "1" -> "strict";
            case "2" -> "oil_allowed";
            case "3" -> "fish_allowed";
            default -> "unknown";
        };
    }
}