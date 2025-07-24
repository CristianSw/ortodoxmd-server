package com.ortodoxmd.core.services;

import com.ortodoxmd.core.entity.Prayer;
import com.ortodoxmd.core.entity.Prayer.PrayerCategory;
import com.ortodoxmd.core.repository.PrayerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PrayerService {

    @Autowired
    private PrayerRepository repository;

    @Cacheable("prayers")
    public List<Prayer> getPrayers(PrayerCategory category, String search) {
        if (search == null) {
            search = "";
        }
        Sort sort = Sort.by(Sort.Direction.ASC, "orderIndex");  // Sortează pe orderIndex ascending
        return repository.findRootPrayersByCategoryOrSearch(category, search, sort);
    }
}