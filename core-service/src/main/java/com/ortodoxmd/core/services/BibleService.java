package com.ortodoxmd.core.services;

import com.ortodoxmd.core.dto.BibleBookFullDto;
import com.ortodoxmd.core.dto.BibleChapterFullDto;
import com.ortodoxmd.core.entity.BibleBook;
import com.ortodoxmd.core.entity.BibleChapter;
import com.ortodoxmd.core.entity.BibleVerse;
import com.ortodoxmd.core.repository.BibleBookRepository;
import com.ortodoxmd.core.repository.BibleChapterRepository;
import com.ortodoxmd.core.repository.BibleVerseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BibleService {

    @Autowired
    private BibleBookRepository bookRepository;

    @Autowired
    private BibleChapterRepository chapterRepository;

    @Autowired
    private BibleVerseRepository verseRepository;

    @Cacheable("bibleBooks")
    public List<BibleBook> getBooks(Long testamentId) {
        if (testamentId != null) {
            return bookRepository.findByTestamentId(testamentId);
        }
        return bookRepository.findAll();
    }

    @Cacheable("bibleChapters")
    public List<BibleChapter> getChapters(Long bookId) {
        return chapterRepository.findByBookId(bookId);
    }

    @Cacheable("bibleVerses")
    public List<BibleVerse> getVerses(Long chapterId) {
        return chapterId != null ? verseRepository.findByChapterId(chapterId) : List.of();
    }

    public Long getChapterId(Long bookId, int chapterNumber) {
        return chapterRepository.findByBookIdAndChapterNumber(bookId, chapterNumber)
                .map(BibleChapter::getId)
                .orElse(null);
    }

    @Cacheable("bibleAll")
    @Transactional(readOnly = true) // Bună practică pentru operațiuni complexe de citire
    public List<BibleBookFullDto> getEntireBible() {
        // FIX: Folosim noua metodă optimizată pentru a încărca totul eficient
        List<BibleBook> books = bookRepository.findAllWithChaptersAndVerses();

        // Maparea la DTO-uri rămâne, dar acum operează pe date deja încărcate în memorie.
        return books.stream().map(book -> {
            List<BibleChapterFullDto> chapterDtos = book.getChapters().stream().map(chapter -> {
                // Setăm câmpurile tranziente direct pe versete
                chapter.getVerses().forEach(verse -> {
                    verse.setBookId(book.getId());
                    verse.setChapterNumber(chapter.getChapterNumber());
                });
                return new BibleChapterFullDto(
                        chapter.getChapterNumber(),
                        chapter.getVerses()
                );
            }).collect(Collectors.toList());

            return new BibleBookFullDto(
                    book.getId(),
                    book.getNameRo(),
                    book.getNameEn(),
                    book.getNameRu(),
                    book.getTestament().getId(),
                    chapterDtos
            );
        }).collect(Collectors.toList());
    }
}