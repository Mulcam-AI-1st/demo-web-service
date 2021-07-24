package com.teamproject.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.demo.dao.HealthyDietDAO;
import com.teamproject.demo.vo.HealthyDietDetailVO;
import com.teamproject.demo.vo.HealthyDietVO;

@Service
public class HealthyDietServiceImpl implements HealthyDietService {
	
	@Autowired
	HealthyDietDAO dao;
		
	@Override
	public ArrayList<HealthyDietVO> searchAllHealthyDiet() {
		
		return dao.selectAllArticle();
	}

	@Override
	public HealthyDietVO searchHealthyDietById(String idx) {
		
	 System.out.println("searchHealthyDietById  idx  " + idx );
		
		return dao.selectArticleById(idx);
	}

	@Override
	public List<HealthyDietDetailVO> searchCompositionById(String idx) {
		
		System.out.println("searchCompositionById  idx  " + idx );
		
		return dao.selectArticleDetailById(idx);
	}

}
