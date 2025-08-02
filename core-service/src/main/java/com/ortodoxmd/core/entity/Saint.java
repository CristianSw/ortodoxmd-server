package com.ortodoxmd.core.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;

import java.util.Objects;

@Entity
@Table(name = "saints", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class Saint {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameAndDescriptionRo;
    private String nameAndDescriptionEn;
    private String nameAndDescriptionRu;

    @Column(columnDefinition = "TEXT")
    private String lifeDescriptionRo;

    @Column(columnDefinition = "TEXT")
    private String lifeDescriptionEn;

    @Column(columnDefinition = "TEXT")
    private String lifeDescriptionRu;

    // FIX: Stocăm ID-ul icoanei din media-service, nu calea.
    private Long iconId;

    // FIX: Relația ManyToOne corectă către CalendarDay
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "calendar_day_date")
    @JsonIgnore // Esențial pentru a preveni buclele de serializare
    @ToString.Exclude
    private CalendarDay calendarDay;

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        Saint saint = (Saint) o;
        return getId() != null && Objects.equals(getId(), saint.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}