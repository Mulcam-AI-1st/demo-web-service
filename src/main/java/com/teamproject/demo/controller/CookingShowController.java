package com.teamproject.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.teamproject.demo.service.CookingShowServiceImpl;
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
	public String cookingshow_detail() throws Exception {
		return "cookingshow_detail";
	}
	
	@RequestMapping(value = "/addCookingShow", method = RequestMethod.GET)
	public String addddcookingshow_detail() throws Exception {
		return "addCookingShow";
	}

}
