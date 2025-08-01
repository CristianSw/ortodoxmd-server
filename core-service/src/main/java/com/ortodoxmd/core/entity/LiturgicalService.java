package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;

import java.util.Objects;

@Entity
@Table(name = "liturgical_services", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class LiturgicalService {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "calendar_date")
    private String calendarDate;  // YYYY-MM-DD, NULLable for general slujbe

    @Column(name = "service_type")
    private String serviceType;  // ex: "vespers", "matins", "liturgy"

    @Column(columnDefinition = "TEXT")
    private String detailsRu;

    @Column(columnDefinition = "TEXT")
    private String detailsRo;

    @Column(columnDefinition = "TEXT")
    private String detailsEn;
//
//    @Column(name = "year")
//    private Integer year;  // For yearly randuiala

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        LiturgicalService service = (LiturgicalService) o;
        return getId() != null && Objects.equals(getId(), service.getId());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}