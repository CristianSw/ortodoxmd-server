package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.BibleChapter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.Set;

@Repository
public interface BibleChapterRepository extends JpaRepository<BibleChapter, Long> {

    // FIX: Am schimbat tipul de date returnat în Set pentru consistență
    Set<BibleChapter> findByBookId(Long bookId);

    Optional<BibleChapter> findByBookIdAndChapterNumber(Long bookId, int chapterNumber);
}
