package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;

import java.util.Objects;

/**
 * Entitate pentru a stoca date despre mănăstiri, inclusiv coordonatele geografice.
 */
@Entity
@Table(name = "monasteries", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class Monastery {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameRo;
    private String nameEn; // Câmp adăugat
    private String nameRu; // Câmp adăugat

    @Column(columnDefinition = "TEXT")
    private String descriptionRo;

    @Column(columnDefinition = "TEXT")
    private String descriptionEn; // Câmp adăugat

    @Column(columnDefinition = "TEXT")
    private String descriptionRu; // Câmp adăugat

    // Coordonate geografice
    private Double latitude;
    private Double longitude;

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        Monastery monastery = (Monastery) o;
        return getId() != null && Objects.equals(getId(), monastery.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}
