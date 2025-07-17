package com.example.core.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.util.List;

@Entity
@Table(name = "calendar_days", schema = "core_schema")
@Data
public class CalendarDay {
    @Id
    private String date;  // YYYY-MM-DD stil vechi

    private boolean isFastingDay;
    private String fastingType;  // ex: "oil_allowed"

    private String fastingDescriptionEn;
    private String fastingDescriptionRo;
    private String fastingDescriptionRu;

    private String otherCommemorationsEn;
    private String otherCommemorationsRo;
    private String otherCommemorationsRu;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "calendarDay")
    private List<Saint> saints;
}
