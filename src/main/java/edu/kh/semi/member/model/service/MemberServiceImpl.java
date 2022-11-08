package edu.kh.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.member.model.dao.MemberDAO;
import edu.kh.semi.member.model.vo.Member;

 @Service
public class MemberServiceImpl implements MemberService{
	
	 @Autowired
	 private MemberDAO dao;
	 
	@Override
	public Member view() {
		
		Member loginMember = dao.view();
		
		return loginMember;
	}

}
