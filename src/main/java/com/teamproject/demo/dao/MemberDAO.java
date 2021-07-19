package com.teamproject.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.teamproject.demo.vo.MemberVO;

@Mapper
public interface MemberDAO {

	public MemberVO selectMember(String id, String password);
	
	public void insertMember(MemberVO mb); 

	
	
}
