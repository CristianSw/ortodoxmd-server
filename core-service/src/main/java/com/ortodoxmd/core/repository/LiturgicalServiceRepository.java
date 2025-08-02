package com.ortodoxmd.core.repository;

import com.ortodoxmd.core.entity.LiturgicalService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LiturgicalServiceRepository extends JpaRepository<LiturgicalService, Long> {

    List<LiturgicalService> findByCalendarDate(String date);

    List<LiturgicalService> findByServiceType(String type);

//    @Query("SELECT l FROM LiturgicalService l WHERE l.year = :year")
//    List<LiturgicalService> findByYear(int year);
}