package edu.kh.semi.nav.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.nav.model.dao.NavDAO;

@Service
public class NavServiceImpl implements NavService{
	
	@Autowired
	private NavDAO dao;
	
	@Override
	public List<CMM> selectCmmList() {
		return dao.selectCmmList();
	}

}
