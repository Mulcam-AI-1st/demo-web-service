package com.teamproject.demo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.teamproject.demo.service.HealthyDietServiceImpl;
import com.teamproject.demo.vo.HealthyDietVO;

@Controller
public class HealthyDietController {
	
	@Autowired
	HealthyDietServiceImpl service;

	// 건강정보 목록
    @GetMapping("/HealthyDiet")
    public ModelAndView healthydiet() throws Exception {
    	
    	ModelAndView modelAndView = new ModelAndView( "healthydiet");
    	
    	ArrayList<HealthyDietVO> hdList = service.searchAllHealthyDiet();
    	
    	modelAndView.addObject("hdList", hdList);
    	
        return modelAndView;
        
    }
    
    // 건강정보 상세
    @GetMapping("/HealthyDietDetail")
    public ModelAndView healthydietdetail(@RequestParam ("idx") String idx ) throws Exception {
    	ModelAndView modelAndView = new ModelAndView("healthydiet_detail");
    	
    	System.out.println("HealthyDietDetail start" + idx);
    	
    	try {
    		//게시글 기본 정보 가져오기
    		HealthyDietVO hd = service.searchHealthyDietById(idx);
    		//건강 정보 가져오기
    		
    		//반찬 정보 가져오기 
    		
    		
    	    modelAndView.addObject("hd", hd);
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    		
    		modelAndView.addObject("err", "오류 발생");

			modelAndView.setViewName("error");
    		
    	}
    	
        return modelAndView;
        
    }

}
