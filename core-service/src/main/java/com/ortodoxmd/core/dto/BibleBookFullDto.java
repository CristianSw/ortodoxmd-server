package com.ortodoxmd.core.dto;

import java.util.List;

public class BibleBookFullDto {
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

    // Getters and setters...
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNameRo() {
        return nameRo;
    }

    public void setNameRo(String nameRo) {
        this.nameRo = nameRo;
    }

    public String getNameEn() {
        return nameEn;
    }

    public void setNameEn(String nameEn) {
        this.nameEn = nameEn;
    }

    public String getNameRu() {
        return nameRu;
    }

    public void setNameRu(String nameRu) {
        this.nameRu = nameRu;
    }

    public Long getTestamentId() {
        return testamentId;
    }

    public void setTestamentId(Long testamentId) {
        this.testamentId = testamentId;
    }

    public List<BibleChapterFullDto> getChapters() {
        return chapters;
    }

    public void setChapters(List<BibleChapterFullDto> chapters) {
        this.chapters = chapters;
    }
}