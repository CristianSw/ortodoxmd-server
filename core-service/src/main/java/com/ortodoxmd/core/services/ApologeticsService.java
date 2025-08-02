package com.ortodoxmd.core.services;

import com.ortodoxmd.core.entity.ApologeticsEntry;
import com.ortodoxmd.core.repository.ApologeticsEntryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApologeticsService {

    @Autowired
    private ApologeticsEntryRepository repository;

    @Cacheable("apologeticsAll")
    public List<ApologeticsEntry> getAll() {
        return repository.findAll();
    }

    @Cacheable(value = "apologeticsByCategory", key = "#category")
    public List<ApologeticsEntry> getByCategory(String category) {
        return repository.findByCategory(category);
    }
}
