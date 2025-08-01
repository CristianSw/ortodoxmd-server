package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.LiturgicalService;
import com.ortodoxmd.core.services.LiturgicalServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/liturgii")
public class LiturgicalServiceController {

    @Autowired
    private LiturgicalServiceService service;

    @GetMapping
    public List<LiturgicalService> getAllLiturgii() {
        return service.getAllLiturgii();
    }

    @GetMapping("/date/{date}")
    public List<LiturgicalService> getLiturgiiByDate(@PathVariable String date) {
        return service.getLiturgiiByDate(date);
    }

    @GetMapping("/type/{type}")
    public List<LiturgicalService> getLiturgiiByType(@PathVariable String type) {
        return service.getLiturgiiByType(type);
    }
//
//    @GetMapping("/randuiala/{year}")
//    public List<LiturgicalService> getLiturgiiByYear(@PathVariable int year) {
//        return service.getLiturgiiByYear(year);
//    }
}