package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;
import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "bible_books", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class BibleBook {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameRo;
    private String nameEn;
    private String nameRu;

    @ManyToOne
    @JoinColumn(name = "testament_id")
    private Testament testament;

    @OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
    @ToString.Exclude
    @JsonIgnore  // Fix: Ignoră chapters pentru a evita nesting infinit la serializare
    private List<BibleChapter> chapters = new ArrayList<>();

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        BibleBook book = (BibleBook) o;
        return getId() != null && Objects.equals(getId(), book.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}