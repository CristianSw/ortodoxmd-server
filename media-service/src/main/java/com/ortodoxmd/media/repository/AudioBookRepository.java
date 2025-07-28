package com.ortodoxmd.media.repository;

import com.ortodoxmd.media.entity.AudioBook;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AudioBookRepository extends JpaRepository<AudioBook, Long> {
    // Aici pot fi adăugate în viitor metode custom, ex: List<AudioBook> findByLang(String lang);
}
