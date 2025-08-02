package com.ortodoxmd.core.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "media-service", url = "http://localhost:8081/api/icons")
public interface MediaFeignClient {
    @GetMapping("/{id}/stream")
    String getIconUrl(@PathVariable Long id);  // Returnează URL pentru stream
}