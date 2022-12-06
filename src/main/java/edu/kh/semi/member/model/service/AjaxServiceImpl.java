package edu.kh.semi.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.member.model.dao.AjaxDAO;

@Service
public class AjaxServiceImpl implements AjaxService {
		
	@Autowired
	private AjaxDAO dao;
	
	// 아이디 중복검사 서비스
	@Override
	public int idDupCheck(String memberId) {

		return dao.idDupCheck(memberId);
	}
}
