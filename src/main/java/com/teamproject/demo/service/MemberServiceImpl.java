package com.teamproject.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamproject.demo.dao.MemberDAO;
import com.teamproject.demo.vo.MemberVO;


@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;
	
	
	@Override
	public Boolean searchMember(String id, String password) {
		
		MemberVO mb = memberDAO.selectMember(id, password);
		
		if (mb == null) {
			return false;
		} else {
			return true;
		}
	
	}

	@Override
	public void registerMember(MemberVO mb) {
		memberDAO.insertMember(mb);
	}

}
