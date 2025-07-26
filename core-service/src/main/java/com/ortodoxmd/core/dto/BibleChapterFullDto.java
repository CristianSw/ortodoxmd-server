package com.ortodoxmd.core.dto;

import com.ortodoxmd.core.entity.BibleVerse;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
public class BibleChapterFullDto {
    // Getters and setters...
    private int chapterNumber;
    private List<BibleVerse> verses;

    // Constructors, getters, setters
    public BibleChapterFullDto(int chapterNumber, List<BibleVerse> verses) {
        this.chapterNumber = chapterNumber;
        this.verses = verses;
    }

}