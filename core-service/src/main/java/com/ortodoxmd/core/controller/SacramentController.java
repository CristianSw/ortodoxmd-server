package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.Sacrament;
import com.ortodoxmd.core.services.SacramentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/sacraments")
public class SacramentController {

    @Autowired
    private SacramentService service;

    /**
     * Returnează lista completă cu descrieri pentru Taine și slujbe.
     * @return O listă de obiecte Sacrament.
     */
    @GetMapping
    public List<Sacrament> getAll() {
        return service.getAll();
    }

    /**
     * Returnează descrierile filtrate după o anumită categorie.
     * @param category Categoria căutată (ex: "TAINA", "SLUJBA").
     * @return O listă de obiecte Sacrament.
     */
    @GetMapping("/category/{category}")
    public List<Sacrament> getByCategory(@PathVariable String category) {
        return service.getByCategory(category.toUpperCase());
    }
}
