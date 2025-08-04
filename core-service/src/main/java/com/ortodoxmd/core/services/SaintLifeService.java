package com.ortodoxmd.core.services;

import com.ortodoxmd.core.entity.SaintLife;
import com.ortodoxmd.core.repository.SaintLifeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SaintLifeService {

    @Autowired
    private SaintLifeRepository repository;

    @Cacheable("saintLivesAll")
    public List<SaintLife> getAllSaintLives() {
        return repository.findAll();
    }
}
