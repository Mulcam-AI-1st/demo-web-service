package com.teamproject.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.teamproject.demo.service.MemberServiceImpl;
import com.teamproject.demo.vo.MemberVO;


@Controller
public class MemberController {
	
    @Autowired
    MemberVO memberVO;
    MemberServiceImpl memberServiceImpl;

    @RequestMapping(value="/SignIn", method = RequestMethod.GET)
    public String signin() throws Exception {
        return "signin";
    }
    
    
    @RequestMapping(value="/SignIn", method = RequestMethod.POST)
    ModelAndView signin(@RequestParam(value="id",required=false) String id, @RequestParam(value="password",required=false) String password, HttpServletRequest request) throws Exception {
    	ModelAndView modelAndView = new ModelAndView();
    	try {
    		
			boolean result = memberServiceImpl.searchMember(id, password);
			
			if ( !result) throw new Exception();
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			modelAndView.setViewName("signin");
			
		} catch(Exception e) {
			e.printStackTrace();
			modelAndView.addObject("err", "로그인 오류");
			modelAndView.setViewName("error");
		}
    	return modelAndView;
    }
    
    @RequestMapping("/SignUp")
    public String signup() throws Exception {
        return "signup";
    }

}
