package com.ortodoxmd.core.services;

import com.ortodoxmd.core.entity.Sacrament;
import com.ortodoxmd.core.repository.SacramentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SacramentService {

    @Autowired
    private SacramentRepository repository;

    @Cacheable("sacramentsAll")
    public List<Sacrament> getAll() {
        return repository.findAll();
    }

    @Cacheable(value = "sacramentsByCategory", key = "#category")
    public List<Sacrament> getByCategory(String category) {
        return repository.findByCategory(category);
    }
}
