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
            @RequestParam(required = false) PrayerCategory category,
            @RequestParam(required = false) String search) {
        return service.getPrayers(category, search);
    }
}