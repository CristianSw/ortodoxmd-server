package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.Prayer;
import com.ortodoxmd.core.entity.Prayer.PrayerCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PrayerRepository extends JpaRepository<Prayer, Long> {

    @Query("SELECT p FROM Prayer p WHERE p.parent IS NULL AND (:category IS NULL OR p.category = :category) AND (:search IS NULL OR :search = '' OR p.titleEn LIKE %:search% OR p.titleRo LIKE %:search% OR p.titleRu LIKE %:search%)")
    List<Prayer> findRootPrayersByCategoryOrSearch(PrayerCategory category, String search, Sort sort);
}