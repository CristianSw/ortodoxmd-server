package com.ortodoxmd.media.service;

import com.ortodoxmd.media.entity.AudioBook;
import com.ortodoxmd.media.repository.AudioBookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AudioBookService {

    private final AudioBookRepository repository;
    private final ResourceLoader resourceLoader;

    @Autowired
    public AudioBookService(AudioBookRepository repository, ResourceLoader resourceLoader) {
        this.repository = repository;
        this.resourceLoader = resourceLoader;
    }

    public List<AudioBook> getAllBooks() {
        return repository.findAll();
    }

    public Optional<AudioBook> getBookById(Long id) {
        return repository.findById(id);
    }

    /**
     * Încarcă fișierul audio ca o resursă Spring.
     * @param filePath Calea către fișier (ex: "audio/nume.mp3").
     * @return Resursa încărcată.
     */
    public Resource getAudioFile(String filePath) {
        // Logica ta de a elimina slash-ul este corectă dacă datele din DB sunt inconsistente.
        // Calea corectă pentru classpath este fără slash la început.
        String correctedPath = filePath.startsWith("/") ? filePath.substring(1) : filePath;

        Resource resource = resourceLoader.getResource("classpath:" + correctedPath);

        if (!resource.exists() || !resource.isReadable()) {
            throw new RuntimeException("Audio file not found at classpath location: " + correctedPath);
        }
        return resource;
    }
}
