package com.ortodoxmd.core.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data  // Lombok pentru getters/setters
@Entity  // Marca ca tabel DB
public class HolidayEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String date;  // Ex: "2025-07-15"
    private String name;  // Ex: "Sf. Vladimir"
}