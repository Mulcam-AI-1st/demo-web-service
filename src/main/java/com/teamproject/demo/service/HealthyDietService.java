package com.teamproject.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.teamproject.demo.vo.HealthyDietDetailVO;
import com.teamproject.demo.vo.HealthyDietVO;

@Service
public interface HealthyDietService {
		
	 public ArrayList<HealthyDietVO> searchAllHealthyDiet();
	 
	 public HealthyDietVO searchHealthyDietById(String idx);
	 
	 public List<HealthyDietDetailVO>  searchCompositionById(String idx);

}
