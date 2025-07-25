package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.BibleChapter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface BibleChapterRepository extends JpaRepository<BibleChapter, Long> {

    List<BibleChapter> findByBookId(Long bookId);

    Optional<BibleChapter> findByBookIdAndChapterNumber(Long bookId, int chapterNumber);
}