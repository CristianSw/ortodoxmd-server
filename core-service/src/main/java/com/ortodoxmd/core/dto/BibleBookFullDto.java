package com.ortodoxmd.core.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
public class BibleBookFullDto {
    // Getters and setters...
    private Long id;
    private String nameRo;
    private String nameEn;
    private String nameRu;
    private Long testamentId;
    private List<BibleChapterFullDto> chapters;

    // Constructors, getters, setters
    public BibleBookFullDto(Long id, String nameRo, String nameEn, String nameRu, Long testamentId, List<BibleChapterFullDto> chapters) {
        this.id = id;
        this.nameRo = nameRo;
        this.nameEn = nameEn;
        this.nameRu = nameRu;
        this.testamentId = testamentId;
        this.chapters = chapters;
    }

}