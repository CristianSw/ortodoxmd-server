package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.Sacrament;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SacramentRepository extends JpaRepository<Sacrament, Long> {

    /**
     * Găsește toate înregistrările după o anumită categorie.
     * @param category Categoria căutată (ex: "TAINA").
     * @return O listă de Taine/Slujbe.
     */
    List<Sacrament> findByCategory(String category);
}
