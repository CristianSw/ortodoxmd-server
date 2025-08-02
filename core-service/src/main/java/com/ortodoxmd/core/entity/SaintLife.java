package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;
import java.util.Objects;

/**
 * Entitate dedicată pentru a stoca viața unică a unui sfânt,
 * decuplată de calendar.
 */
@Entity
@Table(name = "saint_lives", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class SaintLife {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameRo;
    private String nameEn;
    private String nameRu;

    @Column(columnDefinition = "TEXT")
    private String lifeDescriptionRo;

    @Column(columnDefinition = "TEXT")
    private String lifeDescriptionEn;

    @Column(columnDefinition = "TEXT")
    private String lifeDescriptionRu;

    private Long iconId;

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        SaintLife saintLife = (SaintLife) o;
        return getId() != null && Objects.equals(getId(), saintLife.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}
