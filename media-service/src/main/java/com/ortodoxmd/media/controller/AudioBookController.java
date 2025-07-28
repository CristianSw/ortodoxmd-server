package com.ortodoxmd.media.controller;

import com.ortodoxmd.media.entity.AudioBook;
import com.ortodoxmd.media.service.AudioBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/audiobooks")
public class AudioBookController {

    private final AudioBookService service;

    @Autowired
    public AudioBookController(AudioBookService service) {
        this.service = service;
    }

    /**
     * Returnează lista completă de cărți audio disponibile.
     * @return O listă de obiecte AudioBook în format JSON.
     */
    @GetMapping
    public List<AudioBook> getBooks() {
        return service.getAllBooks();
    }

    /**
     * Endpoint pentru streaming-ul fișierului audio.
     * Setează antetele HTTP corecte ('Content-Type' și 'Content-Length')
     * pentru a asigura compatibilitatea cu playerele media precum ExoPlayer.
     * @param id ID-ul cărții audio solicitate.
     * @return Un stream de date audio (ResponseEntity<Resource>).
     */
    @GetMapping("/{id}/stream")
    public ResponseEntity<Resource> streamAudio(@PathVariable Long id) {
        Optional<AudioBook> bookOptional = service.getBookById(id);

        if (bookOptional.isPresent()) {
            try {
                Resource resource = service.getAudioFile(bookOptional.get().getFilePath());

                HttpHeaders headers = new HttpHeaders();
                // Setăm Content-Type corect pentru streaming audio MP3
                headers.setContentType(MediaType.parseMediaType("audio/mpeg"));
                // Setăm dimensiunea fișierului, esențială pentru seeking și bara de progres
                headers.setContentLength(resource.contentLength());

                return new ResponseEntity<>(resource, headers, HttpStatus.OK);

            } catch (IOException e) {
                // Returnează o eroare internă dacă fișierul nu poate fi citit
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
            }
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
