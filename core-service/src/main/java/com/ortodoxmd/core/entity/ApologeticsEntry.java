package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;

import java.util.Objects;

/**
 * Entitate pentru a stoca întrebări și răspunsuri de apologetică.
 */
@Entity
@Table(name = "apologetics_entries", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class ApologeticsEntry {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String questionRo;
    private String questionEn;
    private String questionRu;

    @Column(columnDefinition = "TEXT")
    private String answerRo;

    @Column(columnDefinition = "TEXT")
    private String answerEn;

    @Column(columnDefinition = "TEXT")
    private String answerRu;

    /**
     * Categorie pentru a grupa întrebările.
     * Ex: "ICOANE", "TRADITIE", "MAICA_DOMNULUI"
     */
    private String category;

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        ApologeticsEntry that = (ApologeticsEntry) o;
        return getId() != null && Objects.equals(getId(), that.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}
