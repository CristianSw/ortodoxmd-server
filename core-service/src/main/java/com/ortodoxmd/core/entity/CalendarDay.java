package com.ortodoxmd.core.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.proxy.HibernateProxy;

import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "calendar_days", schema = "core_schema")
@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class CalendarDay {
    @Id
    private String date;  // YYYY-MM-DD stil vechi

    private boolean isFastingDay;
    private String fastingType;  // ex: "oil_allowed"

    private String fastingDescriptionEn;
    private String fastingDescriptionRo;
    private String fastingDescriptionRu;

    private String summaryTitleEn;
    private String summaryTitleRo;
    private String summaryTitleRu;

    private String titlesEn;
    private String titlesRo;
    private String titlesRu;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "calendarDay")
    @ToString.Exclude
    private List<Saint> saints;

    @Override
    public final boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
        if (thisEffectiveClass != oEffectiveClass) return false;
        CalendarDay that = (CalendarDay) o;
        return getDate() != null && Objects.equals(getDate(), that.getDate());
    }

    @Override
    public final int hashCode() {
        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
    }
}