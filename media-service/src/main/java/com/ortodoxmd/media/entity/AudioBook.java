package com.ortodoxmd.media.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;

import java.util.Objects;

/**
 * Entitatea JPA care mapează tabela 'audio_books'.
 * Structura este identică cu cea originală pentru a menține compatibilitatea API.
 */
@Getter
@Setter
@ToString
@RequiredArgsConstructor
@Entity
@Table(name = "audio_books", schema = "media_schema")
public class AudioBook {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titleRo;
    private String titleEn;
    private String titleRu;

    private String authorRo;
    private String authorEn;
    private String authorRu;

    // Calea către fișier în 'src/main/resources'. Exemplu: "/audio/sf_vasile.mp3"
    private String filePath;

    private String lang;

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        AudioBook audioBook = (AudioBook) o;
        return getId() != null && Objects.equals(getId(), audioBook.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}
