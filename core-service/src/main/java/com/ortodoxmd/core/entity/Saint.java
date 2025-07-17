package com.example.core.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "saints", schema = "core_schema")
@Data
public class Saint {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameEn;
    private String nameRo;
    private String nameRu;

    private String descriptionEn;
    private String descriptionRo;
    private String descriptionRu;

    @ManyToOne
    @JoinColumn(name = "calendar_day_date")
    private CalendarDay calendarDay;
}
