package com.teamproject.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.teamproject.demo.service.HealthyDietServiceImpl;
import com.teamproject.demo.vo.HealthyDietDetailVO;
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
    	    System.out.println("건강식단 상세  getIdx :: " + hd.getIdx());
    	    System.out.println("건강식단 상세  getCategoryid :: " + hd.getCategoryid());
    	    System.out.println("건강식단 상세  getTitle :: " + hd.getTitle());
    	    System.out.println("건강식단 상세  getContents :: " + hd.getContents());
    	    System.out.println("건강식단 상세  getImageurl  :: " + hd.getImageurl());
    	    System.out.println("건강식단 상세  getPostdate :: " + hd.getPostdate());
    	    System.out.println("건강식단 상세  getNutrients :: " + hd.getNutrients());

    		//식단 구성 정보 가져오기
    	    List<HealthyDietDetailVO> hddList = service.searchCompositionById(idx);
    	    for(HealthyDietDetailVO list : hddList ) {
    	    	   System.out.println("");
		    	    System.out.println("식단구성  getIdx :: " + list.getIdx());
		    	    System.out.println("식단구성  getCompositionno :: " + list.getCompositionno());
		    	    System.out.println("식단구성  getCid :: " + list.getCid());
		    	    System.out.println("식단구성  getTitle :: " + list.getTitle());
		    	    System.out.println("식단구성  getRecipe  :: " + list.getRecipe());
		    	    System.out.println("식단구성  getIngredients :: " + list.getIngredients());
		    	    System.out.println("");
	    	    }
    		//반찬 정보 가져오기 
    		
    		
    	    modelAndView.addObject("hd", hd);
    	    modelAndView.addObject("hddList", hddList);
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    		
    		modelAndView.addObject("err", "오류 발생");

			modelAndView.setViewName("error");
    		
    	}
    	
        return modelAndView;
        
    }

}
