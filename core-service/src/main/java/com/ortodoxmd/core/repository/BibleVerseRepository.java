package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.BibleVerse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface BibleVerseRepository extends JpaRepository<BibleVerse, Long> {

    List<BibleVerse> findByChapterId(Long chapterId);

    Optional<BibleVerse> findByChapterIdAndVerseNumber(Long chapterId, int verseNumber);
}