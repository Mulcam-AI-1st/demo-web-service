package com.teamproject.demo.service;

import com.teamproject.demo.vo.MemberVO;

public interface MemberService {
	
	Boolean searchMember(String id, String password);
	
	void registerMember(MemberVO mb); 

}
