package com.ortodoxmd.media.service;

import com.ortodoxmd.media.entity.Icon;
import com.ortodoxmd.media.repository.IconRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class IconService {

    private final IconRepository repository;
    private final ResourceLoader resourceLoader; // FIX: Injectăm ResourceLoader

    @Autowired
    public IconService(IconRepository repository, ResourceLoader resourceLoader) {
        this.repository = repository;
        this.resourceLoader = resourceLoader;
    }

    @Cacheable("icons")
    public List<Icon> getAllIcons() {
        return repository.findAll();
    }

    public Optional<Icon> getIconById(Long id) {
        return repository.findById(id);
    }

    /**
     * FIX: Folosim ResourceLoader pentru a încărca fișierul, la fel ca în AudioBookService.
     * @param filePath Calea către fișier (ex: "icons/nume.jpg").
     * @return Resursa încărcată.
     */
    public Resource getIconFile(String filePath) {
        // Calea corectă pentru classpath este fără slash la început.
        String correctedPath = filePath.startsWith("/") ? filePath.substring(1) : filePath;
        Resource resource = resourceLoader.getResource("classpath:" + correctedPath);

        if (!resource.exists() || !resource.isReadable()) {
            throw new RuntimeException("Icon file not found at classpath location: " + correctedPath);
        }
        return resource;
    }
}