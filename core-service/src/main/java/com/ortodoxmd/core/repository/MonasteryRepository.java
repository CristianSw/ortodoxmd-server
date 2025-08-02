package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.Monastery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MonasteryRepository extends JpaRepository<Monastery, Long> {
    // Nu sunt necesare metode custom pentru funcționalitatea de bază.
}
