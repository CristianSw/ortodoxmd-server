package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;
import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "bible_chapters", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class BibleChapter {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int chapterNumber;

    @ManyToOne
    @JoinColumn(name = "book_id")
    private BibleBook book;

    @OneToMany(mappedBy = "chapter", cascade = CascadeType.ALL)
    @ToString.Exclude
    @JsonIgnore  // Fix: Ignoră verses pentru a evita nesting infinit la serializare
    private List<BibleVerse> verses = new ArrayList<>();

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        BibleChapter chapter = (BibleChapter) o;
        return getId() != null && Objects.equals(getId(), chapter.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}