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

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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
                .orElse(null);  // Return null if not found
    }

    @Cacheable("bibleAll")
    public List<BibleBookFullDto> getEntireBible() {
        List<BibleBookFullDto> bible = new ArrayList<>();

        List<BibleBook> books = bookRepository.findAll();
        for (BibleBook book : books) {
            BibleBookFullDto bookDto = new BibleBookFullDto(
                    book.getId(),
                    book.getNameRo(),
                    book.getNameEn(),
                    book.getNameRu(),
                    book.getTestament().getId(),
                    new ArrayList<>()
            );

            List<BibleChapter> chapters = chapterRepository.findByBookId(book.getId());
            for (BibleChapter chapter : chapters) {
                BibleChapterFullDto chapterDto = new BibleChapterFullDto(
                        chapter.getChapterNumber(),
                        new ArrayList<>()
                );

                List<BibleVerse> verses = verseRepository.findByChapterId(chapter.getId());
                for (BibleVerse verse : verses) {
                    verse.setBookId(book.getId());  // Set bookId
                    verse.setChapterNumber(chapter.getChapterNumber());  // Set chapterNumber
                    chapterDto.getVerses().add(verse);
                }

                bookDto.getChapters().add(chapterDto);
            }

            bible.add(bookDto);
        }

        return bible;
    }
}