package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.ApologeticsEntry;
import com.ortodoxmd.core.services.ApologeticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/apologetics")
public class ApologeticsController {

    @Autowired
    private ApologeticsService service;

    @GetMapping
    public List<ApologeticsEntry> getAll() {
        return service.getAll();
    }

    @GetMapping("/category/{category}")
    public List<ApologeticsEntry> getByCategory(@PathVariable String category) {
        return service.getByCategory(category.toUpperCase());
    }
}
