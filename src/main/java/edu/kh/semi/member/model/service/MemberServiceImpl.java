package edu.kh.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import edu.kh.semi.member.model.dao.MemberDAO;
import edu.kh.semi.member.model.vo.Member;

 @Service
public class MemberServiceImpl implements MemberService{
	

 @Autowired
	 private BCryptPasswordEncoder bcrypt;
	
 @Autowired

	 // spring -security.xml에서 등록한 bean을 의존성 주입
	 @Autowired
	 private BCryptPasswordEncoder bcrypt;
	 
	 @Autowired

	 private MemberDAO dao;

	// 로그인 기능
	@Override
	public Member login(Member inputMember) {
		
//		System.out.println(inputMember.getMemberPw());
//		System.out.println(bcrypt.Encode(inputMember.getMemberPw()));
		
		Member loginMember = dao.login(inputMember.getMemberId());
		
		if(loginMember != null) {
			
			if(bcrypt.matches(inputMember.getMemberPw(), loginMember.getMemberPw())) {
				
				loginMember.setMemberPw(null);
				
			} else {
				loginMember = null;
			}
		}
		
		return loginMember;
	}
	
}
