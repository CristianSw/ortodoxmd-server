package com.ortodoxmd.core.services;

import com.ortodoxmd.core.entity.LiturgicalService;
import com.ortodoxmd.core.repository.LiturgicalServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LiturgicalServiceService {

    @Autowired
    private LiturgicalServiceRepository repository;

    @Cacheable("liturgiiAll")
    public List<LiturgicalService> getAllLiturgii() {
        return repository.findAll();
    }

    @Cacheable("liturgiiByDate")
    public List<LiturgicalService> getLiturgiiByDate(String date) {
        return repository.findByCalendarDate(date);
    }

    @Cacheable("liturgiiByType")
    public List<LiturgicalService> getLiturgiiByType(String type) {
        return repository.findByServiceType(type);
    }

//    @Cacheable("liturgiiByYear")
//    public List<LiturgicalService> getLiturgiiByYear(int year) {
//        return repository.findByYear(year);
//    }
}