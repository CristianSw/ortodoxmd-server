package com.example.core.controller;

import com.example.core.entity.CalendarDay;
import com.example.core.service.CalendarService;
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
    public String populate(@RequestParam int startYear, @RequestParam int startMonth,
                           @RequestParam int endYear, @RequestParam int endMonth) {
        service.populateForPeriod(startYear, startMonth, endYear, endMonth);
        return "Populate completed";
    }
}
