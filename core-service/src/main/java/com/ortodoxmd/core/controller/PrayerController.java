package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.Prayer;
import com.ortodoxmd.core.entity.Prayer.PrayerCategory;
import com.ortodoxmd.core.services.PrayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/prayers")
public class PrayerController {

    @Autowired
    private PrayerService service;

    @GetMapping
    public List<Prayer> getPrayers(
            @RequestParam(required = false) String category,
            @RequestParam(required = false) String search) {
        PrayerCategory categoryEnum = null;
        if (category != null && !category.trim().isEmpty()) {
            try {
                categoryEnum = PrayerCategory.valueOf(category.toUpperCase());
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid category: " + category + ". Valid values: " + List.of(PrayerCategory.values()));
            }
        }
        return service.getPrayers(categoryEnum, search);
    }
}