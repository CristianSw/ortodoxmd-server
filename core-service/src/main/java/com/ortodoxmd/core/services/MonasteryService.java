package com.ortodoxmd.core.services;

import com.ortodoxmd.core.entity.Monastery;
import com.ortodoxmd.core.repository.MonasteryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MonasteryService {

    @Autowired
    private MonasteryRepository repository;

    /**
     * Returnează o listă cu toate mănăstirile din baza de date.
     * Rezultatul este cache-uit pentru performanță.
     * @return Lista de mănăstiri.
     */
    @Cacheable("monasteries")
    public List<Monastery> getAllMonasteries() {
        return repository.findAll();
    }
}
