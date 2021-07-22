package com.teamproject.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthyDietController {
	

    @RequestMapping("/HealthyDiet")
    public String healthydiet() throws Exception {
        return "healthydiet";
        
    }
    
    @RequestMapping("/HealthyDietDetail")
    public String healthydietdetail() throws Exception {
        return "healthydiet_detail";
        
    }

}
