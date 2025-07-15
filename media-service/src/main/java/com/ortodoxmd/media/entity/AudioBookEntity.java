package com.ortodoxmd.media.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

// Exemplu de entitate pentru cărți audio (tabel DB; extinde pentru mai multe fields, ex: url_stream, duration)
@Data  // Lombok generează getters/setters/equals (reduce boilerplate, similar cu Java records)
@Entity  // Marca ca tabel JPA; numele tabelului va fi "audio_book_entity" auto
public class AudioBookEntity {
    @Id  // Cheie primară
    @GeneratedValue(strategy = GenerationType.IDENTITY)  // Auto-increment PostgreSQL
    private Long id;
    private String title;  // Titlu carte audio
    private String author;  // Autor
    private String audioUrl;  // URL pentru streaming/download (ex: din Librivox API)
    // Adaugă fields viitoare: duration, category, etc.
}