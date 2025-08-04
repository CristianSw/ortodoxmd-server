package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.SaintLife;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SaintLifeRepository extends JpaRepository<SaintLife, Long> {
}
