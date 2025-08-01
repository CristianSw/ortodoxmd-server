package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.CalendarDay;
import com.ortodoxmd.core.entity.Saint;
import com.ortodoxmd.core.services.CalendarService;
import com.ortodoxmd.core.services.SaintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/calendar")
public class CalendarController {

    @Autowired
    private CalendarService service;

    @Autowired
    private SaintService saintService;

    @GetMapping("/{date}")
    public CalendarDay getCalendarDay(@PathVariable String date, @RequestParam(defaultValue = "ro") String lang) {
        CalendarDay day = service.getCalendarDay(date, lang);
        if (day != null) {
            day.getSaints().forEach(saint -> saintService.getSaintDetails(saint.getId()));  // Load details for each saint
        }
        return day;
    }

    @PostMapping("/populate")
    public String populate(@RequestParam(name = "startYear") int startYear,
                           @RequestParam(name = "startMonth") int startMonth,
                           @RequestParam(name = "endYear") int endYear,
                           @RequestParam(name = "endMonth") int endMonth) {
        if (startYear > endYear || (startYear == endYear && startMonth > endMonth)) {
            throw new IllegalArgumentException("Invalid date range");
        }
        service.populateForPeriod(startYear, startMonth, endYear, endMonth);
        return "Populate completed";
    }

    @GetMapping("/{date}/saints/details")
    public List<Saint> getSaintsDetails(@PathVariable String date) {
        CalendarDay day = service.getCalendarDay(date, "ro");  // Default lang
        return day.getSaints().stream()
                .map(saint -> saintService.getSaintDetails(saint.getId()).orElse(saint))
                .collect(Collectors.toList());
    }
}