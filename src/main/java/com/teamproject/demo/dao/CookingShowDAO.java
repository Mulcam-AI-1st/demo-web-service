package com.teamproject.demo.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.teamproject.demo.vo.CookingShowVO;

@Mapper
@Repository("cookingShowDAO")
public interface CookingShowDAO {
	
	public List<CookingShowVO> selectAllArticle();
	
	public void updateRecommendation(String articleId);
	
	public String selectRecommendationById(String articleId);

}
