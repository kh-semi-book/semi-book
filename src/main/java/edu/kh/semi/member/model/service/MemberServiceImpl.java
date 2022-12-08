package edu.kh.semi.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.member.model.dao.MemberDAO;
import edu.kh.semi.member.model.vo.Add;
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
	
	// 회원가입 기능 
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int signUp(Member inputMember, Add inputAdd) {
//		비밀번호 암호화
		String encPw = bcrypt.encode(inputMember.getMemberPw()); // 암호화된 비밀번호
		
		inputMember.setMemberPw(encPw);		
		
		int result = dao.signUp(inputMember);
		//memberNo

		if(result > 0) {
			// 추가항목들에 입력된 값이 있다면
			if(inputAdd.getMemberWedding() != null || inputAdd.getMemberTel() != null 
					|| inputAdd.getMemberAddress() != null || inputAdd.getMarriageFlag() != null) {
				inputAdd.setMemberNo(result);
				result = dao.signUp2(inputAdd);
			}
		}
		System.out.println(inputAdd);
		return result;
	}
	
	@Override
	public List<Book> reservationView(Member loginMember) {
		return dao.reservationView(loginMember);
	}
	

		
}
