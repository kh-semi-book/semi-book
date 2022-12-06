package edu.kh.semi.nav.cmm.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.nav.cmm.model.dao.CMMDAO;

@Service
public class CMMServiceImpl implements CMMService{
	
	@Autowired
	private CMMDAO dao;
	
	@Override
	public CMM cmmContent(int cmmNo) {
		return dao.cmmContent(cmmNo);
	}

}
