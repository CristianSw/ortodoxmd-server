package com.ortodoxmd.core.repository;


import com.ortodoxmd.core.entity.CalendarDay;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CalendarDayRepository extends JpaRepository<CalendarDay, String> {
}
