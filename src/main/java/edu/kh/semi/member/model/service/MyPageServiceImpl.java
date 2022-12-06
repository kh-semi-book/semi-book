package edu.kh.semi.member.model.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kh.semi.member.model.dao.MyPageDAO;
import edu.kh.semi.member.model.vo.Add;
import edu.kh.semi.member.model.vo.Member;

@Service
public class MyPageServiceImpl implements MyPageService {
	
		@Autowired
	    private MyPageDAO dao;

	    @Autowired
	    private BCryptPasswordEncoder bcrypt;

	    // 회원 정보 수정 서비스
	    @Transactional
		@Override
		public int updateMember(Member inputMember, Member loginMember, String newPw, Add add, Add inputAdd) {
			
	    	int result = -1;
	    
	    	// 1. 현재 로그인한 회원의 회원번호를 이용해 비밀번호 조회  
	    	String loginPw = dao.selectPw(loginMember.getMemberNo());
	    	
	    	System.out.println("inputMember.getMemberPw : " + inputMember.getMemberPw());
	    	// 2. inputMember의 비밀번호랑  로그인한 회원의 비밀번호 비교 
	    	if(bcrypt.matches(inputMember.getMemberPw(), loginPw)) {
	    		
	    		
	    		inputMember.setMemberPw(newPw);
	    		
	    		
	    		// 3. 2번이 일치할 때 새비밀번호 입력 여부 newPw 빈칸인가를 따진다. 
	    		if(newPw.equals("")) {
	    			
	    			// 4-1 빈칸인 경우 정보 수정 -> dao.updateMember(inputMember)
	    			result = dao.updateMember(inputMember);
	    			
	    			return result;
	    			
	    			
	    		} else {
	    			
	    			// 4-2 빈칸이 아닌경우 newPw암호화 inputMemeber에 세팅 -> dao.updateMemberPw(inputMember)
	    			
	    			result = dao.updateMemberPw(inputMember);
	    			String encPw = bcrypt.encode(inputMember.getMemberPw());
	    			inputMember.setMemberPw(encPw);	
	    			
	    			return result;
	    		}
	    		
	    	}
	    	
	    	return 0;
	    	
	    }

	    
	    
	    // 회원 탈퇴 서비스 
		@Override
		public int memberDelete(int memberNo, Member inputMember) {
			
			// 회원 정보를 조회 
			Member member = dao.selectMemberInfo(memberNo); 
			
			
			// 조회된 정보와 입력값이 일치할 경우 삭제 
			if(bcrypt.matches(inputMember.getMemberPw(), member.getMemberPw())) {
				
				if((inputMember.getMemberName().equals(member.getMemberName())) && 
				   (inputMember.getMemberEmail().equals(member.getMemberEmail())) &&
				   (inputMember.getMemberId().equals(member.getMemberId()))) {
					
					int result = dao.memberDelete(memberNo);
					
					return result;
				}
				
			}
			return 0; 
			
			
		}

	


	 
	    
}
