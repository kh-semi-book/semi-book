package edu.kh.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import edu.kh.semi.member.model.dao.MyPageDAO;
import edu.kh.semi.member.model.vo.Member;

@Service
public class MyPageServiceImpl implements MyPageService {
	
		@Autowired
	    private MyPageDAO dao;

	    @Autowired
	    private BCryptPasswordEncoder bcrypt;
	    
	    @Override
	    public int updateInfo(Member inputMember) {
		    int result = dao.updateInfo(inputMember);
		    
		    return result;
	    }
}
