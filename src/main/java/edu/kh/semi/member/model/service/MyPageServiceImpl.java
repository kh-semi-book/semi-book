package edu.kh.semi.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kh.semi.member.model.dao.MyPageDAO;
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
		public int updateMember(Member inputMember) {
			
	    	int result = -1;
	    	
	    	if(inputMember.getMemberPw().equals("")) {
	    		
	    		result = dao.updateMember(inputMember);
	    		
	    	} else {
	    		
	    		String encPw = bcrypt.encode(inputMember.getMemberPw());
	    		inputMember.setMemberPw(encPw);
	    		
	    		result = dao.updateMemberPw(inputMember);
	    		
	    	}
	     
			return result;
		}

//	    // 회원 탈퇴 서비스 
//		@Override
//		public int memberDelete(int memberNo, Member inputMember) {
//			
//			// 회원 정보를 조회 
//			Member member = dao.selectMemberInfo(memberNo); 
//			
//			// 조회된 정보와 입력값이 일치할 경우 삭제 
//			if(bcrypt.matches(inputMember.memberPw, member.getMemberPw())) {
//				
//				int result = dao.memberDelete(memberNo);
//				
//				return result;
//			} 
//			
//			
//		}

	 
	    
}
