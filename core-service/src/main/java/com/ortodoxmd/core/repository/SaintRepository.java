package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.Saint;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SaintRepository extends JpaRepository<Saint, Long> {
    // Metoda findSaintsWithLifeDescription() a fost eliminată.
    // Logica pentru viețile sfinților a fost mutată în SaintLifeRepository.
}
