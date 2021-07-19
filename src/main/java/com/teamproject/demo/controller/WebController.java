package com.teamproject.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WebController {

	/**
     * Jsp 호출 
     * @param 
     * @return
     * @throws Exception
     */

    @RequestMapping("/")
    public String index() throws Exception {
        return "index";
    }
    
    @RequestMapping("/info")
    public String info() throws Exception {
        return "readme";
    }

    
    @RequestMapping("/CheckOut")
    public String checkout() throws Exception {
        return "checkout";
           
    }
    
    @RequestMapping("/RegularOrder")
    public String regularorder() throws Exception {
        return "regularorder";
           
    }
    
    @RequestMapping("/HealthyDiet")
    public String healthydiet() throws Exception {
        return "healthydiet";
        
    }
    
    @RequestMapping("/HealthyDietDetail")
    public String healthydietdetail() throws Exception {
        return "healthydiet_detail";
        
    }
    
    //@ResponseBody 어노테이션을 이용시 @RestController 처럼 데이터 형태로 결과를 반환
    @RequestMapping("/thisworld")
    public @ResponseBody String abcd2() throws Exception {
        return "thisworld";
    }
    
    
	/**
	
	 * html 호출 테스트
	 * @param model
	 * @return
	 * @throws Exception
	 */
	
@RequestMapping("/bootstrap-album.do")
	
	public String album(Model model) throws Exception {
	    model.addAttribute("greeting", "Hello Thymeleaf!");
	return "thymeleaf/album/index";
	
	}
	
	@RequestMapping("/bootstrap-blog.do")
	
	public String blog(Model model) throws Exception {
	    model.addAttribute("greeting", "Hello Thymeleaf!");
	return "thymeleaf/blog/index";
	
	}
	
	@RequestMapping("/bootstrap-carousel.do")
	            
	public String carousel(Model model) throws Exception {
	    model.addAttribute("greeting", "Hello Thymeleaf!");
	return "thymeleaf/carousel/index";
	
	}
	
	@RequestMapping("/bootstrap-dashboard.do")
	
	public String dashboard(Model model) throws Exception {
	    model.addAttribute("greeting", "Hello Thymeleaf!");
	return "thymeleaf/dashboard/index";
	
	}
	
	@RequestMapping("/bootstrap-grid.do")
	
	public String grid(Model model) throws Exception {
	    model.addAttribute("greeting", "Hello Thymeleaf!");
	return "thymeleaf/grid/index";
	
	}
	
	@RequestMapping("/bootstrap-masonry.do")
	
	public String masonry(Model model) throws Exception {
	    model.addAttribute("greeting", "Hello Thymeleaf!");
	return "thymeleaf/masonry/index";
	
	}
	
@RequestMapping("/bootstrap-jumbotron.do")
	
	public String jumbotron(Model model) throws Exception {
	    model.addAttribute("greeting", "Hello Thymeleaf!");
	return "thymeleaf/jumbotron/index";
	
	}

}

