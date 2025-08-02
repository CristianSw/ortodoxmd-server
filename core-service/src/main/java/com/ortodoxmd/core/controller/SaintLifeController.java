package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.SaintLife;
import com.ortodoxmd.core.services.SaintLifeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/saint-lives")
public class SaintLifeController {

    @Autowired
    private SaintLifeService service;

    /**
     * Endpoint nou care returnează lista unică cu viețile sfinților.
     * @return O listă de obiecte SaintLife.
     */
    @GetMapping
    public List<SaintLife> getAllSaintLives() {
        return service.getAllSaintLives();
    }
}
