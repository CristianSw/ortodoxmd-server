package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.ApologeticsEntry;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ApologeticsEntryRepository extends JpaRepository<ApologeticsEntry, Long> {

    /**
     * Găsește toate înregistrările după o anumită categorie.
     * @param category Categoria căutată (ex: "ICOANE").
     * @return O listă de înregistrări de apologetică.
     */
    List<ApologeticsEntry> findByCategory(String category);
}
