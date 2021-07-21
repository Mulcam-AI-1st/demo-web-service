package com.teamproject.demo.controller;

import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.teamproject.demo.service.CookingShowServiceImpl;
import com.teamproject.demo.vo.CookingShowCommentsVO;
import com.teamproject.demo.vo.CookingShowDetailVO;
import com.teamproject.demo.vo.CookingShowVO;

@Controller
public class CookingShowController {

	@Autowired
	CookingShowServiceImpl service;

	@RequestMapping(value = "/CookingShow", method = RequestMethod.GET)
	ModelAndView cookingshow() throws Exception {

		ModelAndView modelAndView = new ModelAndView();

		System.out.println("CookingShowController start");

		List<CookingShowVO> csList = null;

		try {
			csList = service.searchAllArticle();

			modelAndView.addObject("csList", csList);

		} catch (Exception e) {

			modelAndView.addObject("err", "오류 발생");

			modelAndView.setViewName("error");
		}

		// 받아온 게시글 리스트를 항목별로 반복해서 출력
		for (CookingShowVO cs : csList) {
			System.out.println("CookingShowVO idx " + cs.getIdx());
			System.out.println("CookingShowVO author_id " + cs.getAuthorid());
			System.out.println("CookingShowVO title " + cs.getTitle());
			System.out.println("CookingShowVO category_id " + cs.getCategoryid());
			System.out.println("CookingShowVO contents " + cs.getContents());
			System.out.println("CookingShowVO image_url " + cs.getImageurl());
			System.out.println("CookingShowVO recommendation " + cs.getRecommendation());
			System.out.println("CookingShowVO post_date " + cs.getPostdate());
			System.out.println("CookingShowVO modify_date " + cs.getModifydate());
		}
		System.out.println("CookingShowController end");
		modelAndView.addObject("csList", csList);
		modelAndView.setViewName("cookingshow");

		return modelAndView;
	}

	@RequestMapping(value = "/CookingShowDetail", method = RequestMethod.GET)
	ModelAndView cookingshow_detail(@RequestParam(value = "idx", required = true) String idx, HttpServletResponse response) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("cookingshow_detail start" + idx);
		
		try {
			
		// 게시글 정보 가져오기 	
		CookingShowVO cs = service.searchCookingShowById(idx);
		

		// 본문 추천이유 가져오기 
		List<CookingShowDetailVO> csdList = service.searchCookingShowDetailById(idx);
		
		
		// 커멘트 가져오기
		List<CookingShowCommentsVO> cscList = service.searchCookingShowCommentsById(idx);

	
		
		modelAndView.addObject("cs", cs);
		
		modelAndView.addObject("csdList", csdList);
		
		modelAndView.addObject("cscList", cscList);
				
		modelAndView.setViewName("cookingshow_detail");
		
		} catch (Exception e) {
			e.printStackTrace();
			modelAndView.addObject("err", "오류 발생");

			modelAndView.setViewName("error");
		}
		return modelAndView;
	}
	
	@RequestMapping(value = "/addCookingShowComments", method = RequestMethod.POST)
	ModelAndView addCookingShowComments(@ModelAttribute("csc") CookingShowCommentsVO csc) throws Exception {
		
		System.out.println("addCookingShowComments start");
		ModelAndView modelAndView = new ModelAndView();
		
		try {
			service.addCookingShowComments(csc);
			modelAndView.addObject("csc", csc);
			modelAndView.setViewName("redirect:./CookingShowDetail?idx="+csc.getIdx());
		
		} catch (Exception e) {
			e.printStackTrace();
			modelAndView.addObject("err", "오류 발생");
			modelAndView.setViewName("error");
			
		}
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/addCookingShow", method = RequestMethod.GET)
	public String addddcookingshow_detail() throws Exception {
		return "addCookingShow";
	}

	@RequestMapping(value = "/CookingShowRecommendation", method = RequestMethod.GET)
	void cookignshowrecommendation(@RequestParam(value = "idx", required = true) String idx, HttpServletResponse response) throws Exception {
		
	
		service.addRecommendation(idx);
		
		String recommendationCnt = service.searchRecommendation(idx);
		
		PrintWriter out= response.getWriter();
		
		DecimalFormat decFormat = new DecimalFormat("###,###");

		String recommendationCntStr = decFormat.format(Integer.parseInt(recommendationCnt));
		 
		out.append(recommendationCntStr);

		out.flush();
		out.close();
		System.out.println("CookingShowRecommendation start" + idx);
	
		
	}	

	
	
}
