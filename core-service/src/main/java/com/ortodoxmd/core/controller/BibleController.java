package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.dto.BibleBookFullDto;
import com.ortodoxmd.core.entity.BibleBook;
import com.ortodoxmd.core.entity.BibleChapter;
import com.ortodoxmd.core.entity.BibleVerse;
import com.ortodoxmd.core.services.BibleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/api/bible")
public class BibleController {

    @Autowired
    private BibleService service;

    @GetMapping("/books")
    public List<BibleBook> getBooks(@RequestParam(required = false) Long testamentId) {
        return service.getBooks(testamentId);
    }

    @GetMapping("/books/{bookId}/chapters")
    public Set<BibleChapter> getChapters(@PathVariable Long bookId) {
        return service.getChapters(bookId);
    }

    @GetMapping("/books/{bookId}/chapters/{chapterNumber}/verses")
    public Set<BibleVerse> getVerses(@PathVariable Long bookId, @PathVariable int chapterNumber) {
        Long chapterId = service.getChapterId(bookId, chapterNumber);
        if (chapterId == null) {
            return Set.of();
        }
        return service.getVerses(chapterId);
    }

    @GetMapping("/all")
    public List<BibleBookFullDto> getEntireBible() {
        return service.getEntireBible();
    }
}
