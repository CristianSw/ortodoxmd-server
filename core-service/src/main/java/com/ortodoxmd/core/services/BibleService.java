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
import java.util.Set;
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
    public Set<BibleChapter> getChapters(Long bookId) {
        // Repository-ul returnează direct Set, deci nu mai este necesară conversia.
        return chapterRepository.findByBookId(bookId);
    }

    @Cacheable("bibleVerses")
    public Set<BibleVerse> getVerses(Long chapterId) {
        // Repository-ul returnează direct Set, deci nu mai este necesară conversia.
        return chapterId != null ? verseRepository.findByChapterId(chapterId) : Set.of();
    }

    public Long getChapterId(Long bookId, int chapterNumber) {
        return chapterRepository.findByBookIdAndChapterNumber(bookId, chapterNumber)
                .map(BibleChapter::getId)
                .orElse(null);
    }

    @Cacheable("bibleAll")
    @Transactional(readOnly = true)
    public List<BibleBookFullDto> getEntireBible() {
        List<BibleBook> books = bookRepository.findAllWithChaptersAndVerses();

        return books.stream().map(book -> {
            Set<BibleChapterFullDto> chapterDtos = book.getChapters().stream().map(chapter -> {
                chapter.getVerses().forEach(verse -> {
                    verse.setBookId(book.getId());
                    verse.setChapterNumber(chapter.getChapterNumber());
                });
                return new BibleChapterFullDto(
                        chapter.getChapterNumber(),
                        chapter.getVerses()
                );
            }).collect(Collectors.toSet());

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
