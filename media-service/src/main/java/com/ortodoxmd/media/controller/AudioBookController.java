package com.ortodoxmd.media.controller;

import com.ortodoxmd.media.entity.AudioBookEntity;
import com.ortodoxmd.media.repository.AudioBookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

// Controller REST pentru API endpoints (analog cu un endpoint backend Java pentru fetch data)
@RestController
@RequestMapping("/api/media")
        public class AudioBookController {

            private final AudioBookRepository repository;

            @Autowired  // Injectare dependency (Spring gestionează)
            public AudioBookController(AudioBookRepository repository) {
                this.repository = repository;
            }

            @GetMapping("/audio-books")
            public List<AudioBookEntity> getAllAudioBooks() {
                return repository.findAll();  // Returnează toate înregistrările din DB
            }
        }
