package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.Monastery;
import com.ortodoxmd.core.services.MonasteryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/monasteries")
public class MonasteryController {

    @Autowired
    private MonasteryService service;

    /**
     * Endpoint care returnează lista tuturor mănăstirilor cu coordonatele lor.
     * @return O listă de obiecte Monastery.
     */
    @GetMapping
    public List<Monastery> getAllMonasteries() {
        return service.getAllMonasteries();
    }
}
