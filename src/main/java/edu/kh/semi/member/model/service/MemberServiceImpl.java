package edu.kh.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import edu.kh.semi.member.model.dao.MemberDAO;
import edu.kh.semi.member.model.vo.Member;

 @Service
public class MemberServiceImpl implements MemberService{
	

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
	
	// 회원 가입 기능
	@Override
	public int signUp(Member inputMember) {
		
		//비밀번호 암호화
		String encPw = bcrypt.encode(inputMember.getMemberPw()); // 암호화된 비밀번호
		
		inputMember.setMemberPw(encPw);
		
		int result = dao.signUp(inputMember);
		
		return 0;
	}
}
