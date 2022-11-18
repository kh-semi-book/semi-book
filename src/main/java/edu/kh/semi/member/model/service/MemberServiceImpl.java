package edu.kh.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.member.model.dao.MemberDAO;
import edu.kh.semi.member.model.vo.Member;

 @Service
public class MemberServiceImpl implements MemberService{
	
	 @Autowired
	 private BCryptPasswordEncoder bcrypt;
	 
	 @Autowired
	 private MemberDAO dao;
	 

	// 로그인 기능
//	@Override
//	public Member login(Member inputMember) {
//
//		Member loginMember = dao.login(inputMember);
//		
//		return loginMember;
//	}

	
	
}
