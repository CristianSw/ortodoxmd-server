package com.ortodoxmd.core.tools;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BibleParser {
    public static void main(String[] args) throws Exception {
        String txtFile = "biblia.txt";  // Ajustează path-ul la TXT-ul tău
        String sqlFile = "V5__insert_bible_data.sql";  // Output pentru Flyway

        BufferedReader br = new BufferedReader(new FileReader(txtFile));
        PrintWriter pw = new PrintWriter(sqlFile);

        pw.println("-- V5__insert_bible_data.sql");
        pw.println("-- Insert-uri generate din text Biblia Ortodoxă Română");

        // Inserează testamentele explicit la început cu ID-uri fixe
        pw.println("INSERT INTO core_schema.bible_testaments (id, name_ro, name_en, name_ru) VALUES (1, 'Vechiul Testament', 'Old Testament', 'Ветхий Завет');");
        pw.println("INSERT INTO core_schema.bible_testaments (id, name_ro, name_en, name_ru) VALUES (2, 'Noul Testament', 'New Testament', 'Новый Завет');");

        String line;
        String currentTestament = "";
        String currentBook = "";
        int currentChapter = 0;
        Set<String> insertedBooks = new HashSet<>();
        Set<String> insertedChapters = new HashSet<>();  // Format "book-chapter"

        Pattern testamentPattern = Pattern.compile("^Testament: (VECHIUL TESTAMENT|NOUL TESTAMENT)$");  // Detectează testamente cu prefix
        Pattern bookPattern = Pattern.compile("^Carte: (.*)$");  // Detectează cărți cu prefix
        Pattern chapterPattern = Pattern.compile("^Capitolul (\\d+)\\. (.*)$");  // Ex: "Capitolul 1. Facerea lumii și a omului"
        Pattern specialChapterPattern = Pattern.compile("^(Plângerea întâi|Plângerea a doua|Plângerea a treia|Plângerea a patra|Plângerea a cincea)$");  // Special pentru Plângeri
        Pattern psalmPattern = Pattern.compile("^Psalmul (\\d+)\\.?(.*)$");  // Ex: "Psalmul 1." sau "Psalmul 2. Al lui David" (capturează numărul și textul suplimentar)
        Pattern versePattern = Pattern.compile("^(\\d+)\\. (.*)$");  // Ex: "1. Fericit bărbatul..."

        while ((line = br.readLine()) != null) {
            line = line.trim();
            if (line.isEmpty()) continue;

            Matcher testamentMatcher = testamentPattern.matcher(line);
            if (testamentMatcher.matches()) {
                currentTestament = testamentMatcher.group(1);
                continue;
            }

            Matcher bookMatcher = bookPattern.matcher(line);
            if (bookMatcher.matches()) {
                currentBook = bookMatcher.group(1).trim();
                if (!insertedBooks.contains(currentBook)) {
                    int testamentId = currentTestament.equals("VECHIUL TESTAMENT") ? 1 : 2;
                    pw.println("INSERT INTO core_schema.bible_books (name_ro, name_en, name_ru, testament_id) VALUES ('" + currentBook + "', '', '', " + testamentId + ");");
                    insertedBooks.add(currentBook);
                }
                currentChapter = 0;
                continue;
            }

            // Handle special chapter for Plângeri
            Matcher specialChapterMatcher = specialChapterPattern.matcher(line);
            if (specialChapterMatcher.matches()) {
                String chapterName = specialChapterMatcher.group(1);
                currentChapter = getChapterNumberFromName(chapterName);
                String chapterKey = currentBook + "-" + currentChapter;
                if (!insertedChapters.contains(chapterKey)) {
                    pw.println("INSERT INTO core_schema.bible_chapters (book_id, chapter_number) VALUES ((SELECT id FROM core_schema.bible_books WHERE name_ro = '" + currentBook + "'), " + currentChapter + ");");
                    insertedChapters.add(chapterKey);
                }
                continue;
            }

            // Handle Psalmul as chapter in Psalmi (ignora textul suplimentar după număr)
            Matcher psalmMatcher = psalmPattern.matcher(line);
            if (psalmMatcher.matches() && currentBook.equals("PSALMII")) {
                currentChapter = Integer.parseInt(psalmMatcher.group(1));  // Numărul psalmului
                String chapterKey = currentBook + "-" + currentChapter;
                if (!insertedChapters.contains(chapterKey)) {
                    pw.println("INSERT INTO core_schema.bible_chapters (book_id, chapter_number) VALUES ((SELECT id FROM core_schema.bible_books WHERE name_ro = '" + currentBook + "'), " + currentChapter + ");");
                    insertedChapters.add(chapterKey);
                }
                continue;  // Skip to next line to avoid processing as verse
            }

            Matcher chapterMatcher = chapterPattern.matcher(line);
            if (chapterMatcher.matches()) {
                currentChapter = Integer.parseInt(chapterMatcher.group(1));
                String chapterKey = currentBook + "-" + currentChapter;
                if (!insertedChapters.contains(chapterKey)) {
                    pw.println("INSERT INTO core_schema.bible_chapters (book_id, chapter_number) VALUES ((SELECT id FROM core_schema.bible_books WHERE name_ro = '" + currentBook + "'), " + currentChapter + ");");
                    insertedChapters.add(chapterKey);
                }
                continue;
            }

            Matcher verseMatcher = versePattern.matcher(line);
            if (verseMatcher.matches()) {
                int verse = Integer.parseInt(verseMatcher.group(1));
                String textRo = verseMatcher.group(2).replace("'", "''");  // Escape single quotes

                pw.println("INSERT INTO core_schema.bible_verses (chapter_id, verse_number, text_ro) VALUES (" +
                           "(SELECT id FROM core_schema.bible_chapters WHERE book_id = (SELECT id FROM core_schema.bible_books WHERE name_ro = '" + currentBook + "') AND chapter_number = " + currentChapter + "), " +
                           verse + ", '" + textRo + "');");
            }
        }

        pw.close();
        br.close();
        System.out.println("SQL generated in " + sqlFile + ". Copy to Flyway migration.");
    }

    // Helper pentru Plângeri: "Plângerea întâi" = 1, etc.
    private static int getChapterNumberFromName(String chapterName) {
        return switch (chapterName) {
            case "Plângerea întâi" -> 1;
            case "Plângerea a doua" -> 2;
            case "Plângerea a treia" -> 3;
            case "Plângerea a patra" -> 4;
            case "Plângerea a cincea" -> 5;
            default -> 0;  // Error case
        };
    }
}
