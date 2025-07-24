package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.Prayer;
import com.ortodoxmd.core.entity.Prayer.PrayerCategory;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PrayerRepository extends JpaRepository<Prayer, Long> {

    // Găsește rugăciuni principale pe categorie sau căutare, sortate pe orderIndex
    @Query("SELECT p FROM Prayer p WHERE p.parent IS NULL AND (p.category = :category OR p.titleEn LIKE %:search% OR p.titleRo LIKE %:search% OR p.titleRu LIKE %:search%)")
    List<Prayer> findRootPrayersByCategoryOrSearch(PrayerCategory category, String search, Sort sort);  // Sort pe orderIndex
}