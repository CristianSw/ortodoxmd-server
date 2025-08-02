package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.BibleBook;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface BibleBookRepository extends JpaRepository<BibleBook, Long> {

    List<BibleBook> findByTestamentId(Long testamentId);

    // FIX: Adăugăm o metodă care încarcă întreaga ierarhie (Carte -> Capitole -> Versete)
    // într-o singură interogare la baza de date pentru a evita problema N+1.
    @Query("SELECT DISTINCT b FROM BibleBook b LEFT JOIN FETCH b.chapters c LEFT JOIN FETCH c.verses v ORDER BY b.id, c.chapterNumber, v.verseNumber")
    List<BibleBook> findAllWithChaptersAndVerses();
}