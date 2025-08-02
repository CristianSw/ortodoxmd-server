package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.Saint;
import com.ortodoxmd.core.services.SaintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/api/saints")
public class SaintController {

    @Autowired
    private SaintService service;

    /**
     * Acest endpoint rămâne pentru a obține detaliile unui sfânt
     * așa cum apare el într-o anumită zi din calendar.
     */
    @GetMapping("/{id}/details")
    public Optional<Saint> getSaintDetails(@PathVariable Long id) {
        return service.getSaintDetails(id);
    }

    // Endpoint-ul /with-life a fost eliminat.
    // Folosiți noul endpoint /api/saint-lives pentru a obține lista unică de vieți.
}
