package com.teamproject.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.teamproject.demo.vo.HealthyDietDetailVO;
import com.teamproject.demo.vo.HealthyDietVO;

@Mapper
@Repository
public interface HealthyDietDAO {
	
	 public ArrayList<HealthyDietVO> selectAllArticle();
	 
	 public HealthyDietVO selectArticleById(String idx);
	 
	 public List<HealthyDietDetailVO> selectArticleDetailById(String idx);

}
