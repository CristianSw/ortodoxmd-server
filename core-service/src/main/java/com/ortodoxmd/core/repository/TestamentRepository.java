package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.Testament;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TestamentRepository extends JpaRepository<Testament, Long> {
}