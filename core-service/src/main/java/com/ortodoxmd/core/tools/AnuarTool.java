package com.ortodoxmd.core.tools;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.ConsoleHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

/**
 * Clasa AnuarTool scrapeaza informatii liturgice de pe site-ul Patriarhiei Moscovei si genereaza un fisier SQL pentru Flyway.
 * Poate fi integrat intr-un server Spring Boot ca un CommandLineRunner sau un serviciu scheduled.
 *
 * Caracteristici:
 * - SQL generat foloseste core_schema.liturgical_services in CREATE TABLE si INSERT.
 * - Logare detaliata in consola pentru fiecare etapa (initializare, scraping per zi, detectare sectiuni, generare SQL, scriere fisier).
 * - SQL cu newline-uri explicite (\n) folosind || '\n' || intre linii in details_ru, pentru a evita erori la executie SQL.
 * - Keywords flexibile pentru a captura variatii: "вечерня/вечерне/повечерия/бдение" (vespers),
 *   "утреня/утрене/утрени" (matins), "литургия/литургии" (liturgy).
 *
 * Dependinte: Jsoup pentru parsing HTML (adauga in pom.xml: <dependency><groupId>org.jsoup</groupId><artifactId>jsoup</artifactId><version>1.17.2</version></dependency>)
 *
 * Instructiuni de rulare standalone:
 * 1. Compileaza: javac -cp jsoup-1.17.2.jar com/ortodoxmd/core/tools/AnuarTool.java
 * 2. Ruleaza: java -cp jsoup-1.17.2.jar:com/ortodoxmd/core/tools com.ortodoxmd.core.tools.AnuarTool
 *    (Fara argumente; datele sunt hardcodate in cod.)
 * 3. Output: Genereaza V003__liturgical_services.sql in directorul curent; loguri detaliate in consola.
 *
 * Integrare in server Spring Boot:
 * - Creeaza un Spring Boot app cu Spring Initializr (adauga dependinte: Spring Web, Spring Data JPA).
 * - Copiaza clasa in package-ul com.ortodoxmd.core.tools.
 * - Adauga un CommandLineRunner: @Bean public CommandLineRunner runScraper() { return args -> { new AnuarTool().scrapeAndGenerateSql(); }; }
 * - Ruleaza app-ul: mvn spring-boot:run
 * - Atentie: Ruleaza scraping-ul doar o data sau scheduled (ex: cu @Scheduled).
 */
public class AnuarTool {

    private static final Logger LOGGER = Logger.getLogger(AnuarTool.class.getName());
    private static final String BASE_URL = "https://www.patriarchia.ru/bu/%s/print.html";
    private static final int DELAY_MS = 500; // 2 secunde delay
    private static final String START_DATE = "2025-01-01"; // Hardcoded start date (mic pentru test)
    private static final String END_DATE = "2026-01-01"; // Hardcoded end date (mic pentru test)

    static {
        // Forțează logarea în consolă cu formatare simplă
        ConsoleHandler consoleHandler = new ConsoleHandler();
        consoleHandler.setFormatter(new SimpleFormatter());
        consoleHandler.setLevel(Level.ALL);
        LOGGER.setUseParentHandlers(false);
        LOGGER.addHandler(consoleHandler);
        LOGGER.setLevel(Level.ALL);
    }

    public static void main(String[] args) {
        LOGGER.info("Etapa 1: Initializare AnuarTool");
        new AnuarTool().scrapeAndGenerateSql();
        LOGGER.info("Etapa 5: Executie AnuarTool finalizata");
    }

    public void scrapeAndGenerateSql() {
        LOGGER.info("Etapa 2: Incep scraping-ul de la " + START_DATE + " pana la " + END_DATE);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        List<LiturgicalData> dataList = new ArrayList<>();
        int daysProcessed = 0;
        int daysSuccessful = 0;

        try {
            Date startDate = sdf.parse(START_DATE);
            Date endDate = sdf.parse(END_DATE);
            LOGGER.info("Etapa 2.1: Date parsate cu succes: start=" + START_DATE + ", end=" + END_DATE);

            Calendar cal = Calendar.getInstance();
            cal.setTime(startDate);

            while (!cal.getTime().after(endDate)) {
                String dateStr = sdf.format(cal.getTime());
                LOGGER.info("Etapa 2.2: Procesez ziua: " + dateStr);
                LiturgicalData data = scrapeLiturgicalDay(dateStr);
                if (data != null) {
                    dataList.add(data);
                    daysSuccessful++;
                    LOGGER.info("Etapa 2.3: Ziua " + dateStr + " parsata cu succes. Vespers: " +
                            (data.vespersRu.isEmpty() ? "none" : "found") +
                            ", Matins: " + (data.matinsRu.isEmpty() ? "none" : "found") +
                            ", Liturgy: " + (data.liturgyRu.isEmpty() ? "none" : "found"));
                } else {
                    LOGGER.warning("Etapa 2.3: Ziua " + dateStr + " nu a fost parsata.");
                }
                daysProcessed++;
                LOGGER.info("Etapa 2.4: Astept " + DELAY_MS + "ms inainte de urmatoarea zi");
                Thread.sleep(DELAY_MS); // Delay pentru politeness
                cal.add(Calendar.DATE, 1);
            }

            if (dataList.isEmpty()) {
                LOGGER.warning("Etapa 3: Nicio zi nu a fost parsata cu succes. Verifica conexiunea sau datele.");
                return;
            }

            LOGGER.info("Etapa 3: Incep generarea SQL cu " + dataList.size() + " intrari");
            String sqlContent = generateSql(dataList);
            LOGGER.info("Etapa 3.1: SQL generat cu succes");

            LOGGER.info("Etapa 4: Incep scrierea fisierului V003__liturgical_services.sql");
            try (BufferedWriter writer = new BufferedWriter(new FileWriter("V003__liturgical_services.sql"))) {
                writer.write(sqlContent);
                LOGGER.info("Etapa 4.1: Fisier SQL generat cu succes: V003__liturgical_services.sql");
            } catch (IOException e) {
                LOGGER.log(Level.SEVERE, "Etapa 4.1: Eroare la scrierea fisierului V003__liturgical_services.sql: " + e.getMessage(), e);
            }

            LOGGER.info("Etapa 4.2: Scraping completat. Zile procesate: " + daysProcessed + ", Zile parsate cu succes: " + daysSuccessful);

        } catch (ParseException e) {
            LOGGER.log(Level.SEVERE, "Etapa 2.1: Eroare la parsarea datelor: " + e.getMessage(), e);
        } catch (InterruptedException e) {
            LOGGER.log(Level.SEVERE, "Etapa 2.4: Scraping intrerupt: " + e.getMessage(), e);
            Thread.currentThread().interrupt(); // Restabilește starea de întrerupere
        }
    }

    private LiturgicalData scrapeLiturgicalDay(String dateStr) {
        LOGGER.info("Etapa 2.2.1: Incep scraping-ul pentru: " + dateStr);
        String urlStr = String.format(BASE_URL, dateStr);
        try {
            URL url = new URL(urlStr);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            int responseCode = conn.getResponseCode();
            LOGGER.info("Etapa 2.2.2: HTTP Response Code pentru " + urlStr + ": " + responseCode);
            if (responseCode != 200) {
                LOGGER.warning("Etapa 2.2.3: HTTP Status " + responseCode + " pentru " + dateStr + ". Skip.");
                return null;
            }

            Document doc = Jsoup.connect(urlStr).get();
            Elements paragraphs = doc.select("p");
            LOGGER.info("Etapa 2.2.4: Găsit " + paragraphs.size() + " paragrafe pentru " + dateStr);

            StringBuilder vespersRu = new StringBuilder();
            StringBuilder matinsRu = new StringBuilder();
            StringBuilder liturgyRu = new StringBuilder();
            String currentService = null;

            for (var p : paragraphs) {
                String text = p.text().trim();
                if (text.isEmpty()) continue;

                String lowerText = text.toLowerCase(); // Case-insensitive pentru flexibilitate

                // Detecteaza keyword nou pe baza de radacini si schimba sectiunea
                if (lowerText.contains("вечерня") || lowerText.contains("вечерне") || lowerText.contains("повечерия") || lowerText.contains("бдение")) {
                    currentService = "vespers";
                    LOGGER.fine("Etapa 2.2.5: Detectat secțiune vespers: " + text);
                } else if (lowerText.contains("утреня") || lowerText.contains("утрене") || lowerText.contains("утрени")) {
                    currentService = "matins";
                    LOGGER.fine("Etapa 2.2.5: Detectat secțiune matins: " + text);
                } else if (lowerText.contains("литургия") || lowerText.contains("литургии")) {
                    currentService = "liturgy";
                    LOGGER.fine("Etapa 2.2.5: Detectat secțiune liturgy: " + text);
                }

                if (currentService != null) {
                    // Adauga textul la sectiunea curenta, cu newline pentru citibilitate
                    switch (currentService) {
                        case "vespers" -> vespersRu.append(text).append("\n");
                        case "matins" -> matinsRu.append(text).append("\n");
                        case "liturgy" -> liturgyRu.append(text).append("\n");
                    }
                }
            }

            // Verifica dacă s-a capturat ceva util
            if (vespersRu.length() == 0 && matinsRu.length() == 0 && liturgyRu.length() == 0) {
                LOGGER.warning("Etapa 2.2.6: Niciun conținut liturgic găsit pentru " + dateStr);
                return null;
            }

            LOGGER.info("Etapa 2.2.7: scrapeLiturgicalDay completat pentru: " + dateStr);
            return new LiturgicalData(dateStr, vespersRu.toString().trim(), matinsRu.toString().trim(), liturgyRu.toString().trim());

        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "Etapa 2.2.3: Eroare la scraping pentru " + dateStr + ": " + e.getMessage(), e);
            return null;
        }
    }

    private String generateSql(List<LiturgicalData> dataList) {
        LOGGER.info("Etapa 3.1: Incep generarea SQL cu " + dataList.size() + " intrari");
        StringBuilder sql = new StringBuilder();

        sql.append("-- V003__liturgical_services.sql\n\n");
        sql.append("CREATE TABLE IF NOT EXISTS core_schema.liturgical_services (\n");
        sql.append("    id SERIAL PRIMARY KEY,\n");
        sql.append("    calendar_date DATE NOT NULL REFERENCES core_schema.calendar_days(date) ON DELETE CASCADE,\n");
        sql.append("    service_type VARCHAR(20) NOT NULL,\n");
        sql.append("    details_ru TEXT,\n");
        sql.append("    details_ro TEXT,\n");
        sql.append("    details_en TEXT\n");
        sql.append(");\n\n");
        sql.append("-- Inserts for data\n");

        for (LiturgicalData data : dataList) {
            if (!data.vespersRu.isEmpty()) {
                // Split vespersRu în linii și adaugă || '\n' || între ele
                String[] vespersLines = data.vespersRu.split("\n");
                StringBuilder vespersSql = new StringBuilder();
                for (int i = 0; i < vespersLines.length; i++) {
                    String line = vespersLines[i].replace("'", "''");
                    vespersSql.append("'").append(line).append("'");
                    if (i < vespersLines.length - 1) {
                        vespersSql.append(" || '\\n' || ");
                    }
                }
                sql.append(String.format("INSERT INTO core_schema.liturgical_services (calendar_date, service_type, details_ru, details_ro, details_en) VALUES ('%s', 'vespers', %s, '', '');\n",
                        data.date, vespersSql));
                LOGGER.fine("Etapa 3.2: Adăugat INSERT pentru vespers, data: " + data.date);
            }
            if (!data.matinsRu.isEmpty()) {
                // Split matinsRu în linii și adaugă || '\n' || între ele
                String[] matinsLines = data.matinsRu.split("\n");
                StringBuilder matinsSql = new StringBuilder();
                for (int i = 0; i < matinsLines.length; i++) {
                    String line = matinsLines[i].replace("'", "''");
                    matinsSql.append("'").append(line).append("'");
                    if (i < matinsLines.length - 1) {
                        matinsSql.append(" || '\\n' || ");
                    }
                }
                sql.append(String.format("INSERT INTO core_schema.liturgical_services (calendar_date, service_type, details_ru, details_ro, details_en) VALUES ('%s', 'matins', %s, '', '');\n",
                        data.date, matinsSql));
                LOGGER.fine("Etapa 3.2: Adăugat INSERT pentru matins, data: " + data.date);
            }
            if (!data.liturgyRu.isEmpty()) {
                // Split liturgyRu în linii și adaugă || '\n' || între ele
                String[] liturgyLines = data.liturgyRu.split("\n");
                StringBuilder liturgySql = new StringBuilder();
                for (int i = 0; i < liturgyLines.length; i++) {
                    String line = liturgyLines[i].replace("'", "''");
                    liturgySql.append("'").append(line).append("'");
                    if (i < liturgyLines.length - 1) {
                        liturgySql.append(" || '\\n' || ");
                    }
                }
                sql.append(String.format("INSERT INTO core_schema.liturgical_services (calendar_date, service_type, details_ru, details_ro, details_en) VALUES ('%s', 'liturgy', %s, '', '');\n",
                        data.date, liturgySql));
                LOGGER.fine("Etapa 3.2: Adăugat INSERT pentru liturgy, data: " + data.date);
            }
        }

        LOGGER.info("Etapa 3.3: Generare SQL completată");
        return sql.toString();
    }

    private static class LiturgicalData {
        String date;
        String vespersRu;
        String matinsRu;
        String liturgyRu;

        LiturgicalData(String date, String vespersRu, String matinsRu, String liturgyRu) {
            this.date = date;
            this.vespersRu = vespersRu;
            this.matinsRu = matinsRu;
            this.liturgyRu = liturgyRu;
        }
    }
}