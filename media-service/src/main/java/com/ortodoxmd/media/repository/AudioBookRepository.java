package com.ortodoxmd.media.repository;

import com.ortodoxmd.media.entity.AudioBookEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// Repository pentru CRUD auto pe entitate (analog cu DAO în backend Java)
@Repository  // Marca ca component Spring
public interface AudioBookRepository extends JpaRepository<AudioBookEntity, Long> {
    // Metode custom viitoare: ex: findByTitle(String title);
}