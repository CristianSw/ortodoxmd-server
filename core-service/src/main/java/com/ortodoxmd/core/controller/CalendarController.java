package com.ortodoxmd.core.controller;

import com.ortodoxmd.core.entity.CalendarDay;
import com.ortodoxmd.core.services.CalendarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/calendar")
public class CalendarController {
    @Autowired
    private CalendarService service;

    @GetMapping("/{date}")
    public CalendarDay getCalendarDay(@PathVariable String date, @RequestParam(defaultValue = "ro") String lang) {
        return service.getCalendarDay(date, lang);
    }

    @PostMapping("/populate")
    public String populate(@RequestParam(name = "startYear") int startYear,
                           @RequestParam(name = "startMonth") int startMonth,
                           @RequestParam(name = "endYear") int endYear,
                           @RequestParam(name = "endMonth") int endMonth) {
        service.populateForPeriod(startYear, startMonth, endYear, endMonth);
        return "Populate completed";
    }
}