package com.ortodoxmd.core.dto;

import com.ortodoxmd.core.entity.BibleVerse;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Setter
@Getter
public class BibleChapterFullDto {
    private int chapterNumber;
    // FIX: Schimbat din List în Set pentru a se potrivi cu entitatea
    private Set<BibleVerse> verses;

    public BibleChapterFullDto(int chapterNumber, Set<BibleVerse> verses) {
        this.chapterNumber = chapterNumber;
        this.verses = verses;
    }
}
