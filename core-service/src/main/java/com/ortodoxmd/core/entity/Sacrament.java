package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;

import java.util.Objects;

/**
 * Entitate pentru a stoca descrieri ale Tainelor și slujbelor Bisericii.
 */
@Entity
@Table(name = "sacraments", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class Sacrament {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titleRo;
    private String titleEn;
    private String titleRu;

    @Column(columnDefinition = "TEXT")
    private String descriptionRo;

    @Column(columnDefinition = "TEXT")
    private String descriptionEn;

    @Column(columnDefinition = "TEXT")
    private String descriptionRu;

    /**
     * Categorie pentru a grupa înregistrările.
     * Ex: "TAINA", "SLUJBA"
     */
    private String category;

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        Sacrament sacrament = (Sacrament) o;
        return getId() != null && Objects.equals(getId(), sacrament.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}
