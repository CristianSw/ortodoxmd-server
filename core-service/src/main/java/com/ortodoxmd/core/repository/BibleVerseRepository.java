package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.BibleVerse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.Set;

@Repository
public interface BibleVerseRepository extends JpaRepository<BibleVerse, Long> {

    // FIX: Am schimbat tipul de date returnat în Set pentru consistență
    Set<BibleVerse> findByChapterId(Long chapterId);

    Optional<BibleVerse> findByChapterIdAndVerseNumber(Long chapterId, int verseNumber);
}
