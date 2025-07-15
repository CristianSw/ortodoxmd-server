package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.HolidayEntity;
import com.ortodoxmd.core.repository.HolidayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/calendar")
public class HolidayController {

    private final HolidayRepository repository;

    @Autowired
    public HolidayController(HolidayRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/holidays")
    public List<HolidayEntity> getAllHolidays() {
        return repository.findAll();  // Returnează din DB
    }
}