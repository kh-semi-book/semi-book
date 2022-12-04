package edu.kh.semi.member.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.member.model.dao.FindIdPwDAO;
import edu.kh.semi.member.model.vo.Member;

@Service
public class FindIdPwServiceImpl implements FindIdPwService{
	
	@Autowired
	private FindIdPwDAO dao;

	@Override
	public String findId(Member input) {
		
		return dao.findId(input);
	}

	@Override
	public int findPw(Member input) {
	
		return dao.findPw(input);
	}

}
