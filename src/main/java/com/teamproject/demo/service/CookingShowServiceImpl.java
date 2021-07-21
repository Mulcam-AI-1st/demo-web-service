package com.teamproject.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.demo.dao.CookingShowDAO;
import com.teamproject.demo.vo.CookingShowCommentsVO;
import com.teamproject.demo.vo.CookingShowDetailVO;
import com.teamproject.demo.vo.CookingShowVO;

@Service
public class CookingShowServiceImpl implements CookingShowService {

	@Autowired
	CookingShowDAO cookingShowDAO;
	
	@Override
	public List<CookingShowVO> searchAllArticle() {
		
		System.out.println("CookingShowServiceImpl searchAllArticle");

		return cookingShowDAO.selectAllArticle();
	}

	@Override
	public void addRecommendation(String articleId) {
		System.out.println("CookingShowServiceImpl addRecommendation");
		
		cookingShowDAO.updateRecommendation(articleId);
		
	}
	
	@Override
	public String searchRecommendation(String articleId) {
		System.out.println("CookingShowServiceImpl searchRecommendation");
		
		return cookingShowDAO.selectRecommendationById(articleId);
	}
	
	@Override
	public CookingShowVO searchCookingShowById(String articleId) {
		System.out.println("searchCookingShowById");
		
		return cookingShowDAO.selectArticleById(articleId);
	}

	@Override
	public List<CookingShowDetailVO> searchCookingShowDetailById(String articleId) {
		System.out.println("searchCookingShowDetailById");
		
		return cookingShowDAO.selectArticleDetailById(articleId);
	}

	@Override
	public List<CookingShowCommentsVO> searchCookingShowCommentsById(String articleId) {
		System.out.println("searchCookingShowCommentsById");
		
		return cookingShowDAO.selectArticleCommentsById(articleId);
	}

	
	
}
