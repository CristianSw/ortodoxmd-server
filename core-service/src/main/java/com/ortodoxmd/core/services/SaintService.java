package com.ortodoxmd.core.services;

import com.ortodoxmd.core.entity.Saint;
import com.ortodoxmd.core.repository.SaintRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SaintService {

    @Autowired
    private SaintRepository repository;

    /**
     * FIX: Serviciul nu mai are nevoie de Feign Client.
     * Responsabilitatea de a construi URL-ul imaginii este transferată clientului (app mobil/web),
     * care va folosi 'iconId' returnat în obiectul Saint.
     */
    @Cacheable("saintDetails")
    public Optional<Saint> getSaintDetails(Long id) {
        // Logica este acum mult mai simplă: doar găsește și returnează sfântul.
        return repository.findById(id);
    }
//    @Cacheable("saintsWithLife")
//    public List<Saint> getSaintsWithLifeDescription() {
//        return repository.findSaintsWithLifeDescription();
//    }
}
