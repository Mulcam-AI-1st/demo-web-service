package com.teamproject.demo.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.teamproject.demo.vo.HealthyDietVO;

@Mapper
@Repository
public interface HealthyDietDAO {
	
	 public ArrayList<HealthyDietVO> selectAllArticle();
	 
	 public HealthyDietVO selectArticleById(String idx);

}
