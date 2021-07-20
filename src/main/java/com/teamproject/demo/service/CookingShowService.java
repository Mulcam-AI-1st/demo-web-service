package com.teamproject.demo.service;

import java.util.List;

import com.teamproject.demo.vo.CookingShowVO;

public interface CookingShowService {
	
	List<CookingShowVO> searchAllArticle();
	
	void addRecommendation(String articleId);
	
	String searchRecommendation(String articleId);
	
	
	

}
