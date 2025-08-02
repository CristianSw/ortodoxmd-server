package com.ortodoxmd.media.controller;

import com.ortodoxmd.media.entity.Icon;
import com.ortodoxmd.media.service.IconService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/icons")
public class IconController {

    @Autowired
    private IconService service;

    @GetMapping
    public List<Icon> getIcons() {
        return service.getAllIcons();
    }

    @GetMapping("/{id}/stream")
    public ResponseEntity<Resource> streamIcon(@PathVariable Long id) {
        Optional<Icon> iconOptional = service.getIconById(id);
        if (iconOptional.isPresent()) {
            Icon icon = iconOptional.get();
            Resource resource = service.getIconFile(icon.getFilePath());
            return ResponseEntity.ok()
                    .contentType(MediaType.IMAGE_JPEG) // Adjust for PNG if needed
                    .body(resource);
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}