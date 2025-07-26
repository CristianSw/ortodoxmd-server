package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;

import java.util.Objects;

@Entity
@Table(name = "bible_verses", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class BibleVerse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int verseNumber;

    @Column(columnDefinition = "TEXT")
    private String textRo;

    @Column(columnDefinition = "TEXT")
    private String textEn;

    @Column(columnDefinition = "TEXT")
    private String textRu;

    @ManyToOne
    @JoinColumn(name = "chapter_id")
    private BibleChapter chapter;

    // Transient fields for DTO
    @Transient
    private Long bookId;

    @Transient
    private int chapterNumber;



    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        BibleVerse verse = (BibleVerse) o;
        return getId() != null && Objects.equals(getId(), verse.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}