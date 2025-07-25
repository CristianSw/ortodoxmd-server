package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.BibleBook;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BibleBookRepository extends JpaRepository<BibleBook, Long> {

    /**
     * Finds all Bible books by Testament ID.
     * Reference: https://docs.spring.io/spring-data/jpa/reference/jpa/query-methods.html
     * @param testamentId ID of the Testament
     * @return List of BibleBooks in the Testament
     */
    List<BibleBook> findByTestamentId(Long testamentId);
}