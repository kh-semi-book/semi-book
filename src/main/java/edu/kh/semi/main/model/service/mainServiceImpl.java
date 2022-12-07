package edu.kh.semi.main.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.main.model.dao.mainDAO;
import edu.kh.semi.manager.board.model.vo.Dining;
import edu.kh.semi.manager.board.model.vo.Promotion;

@Service
public class mainServiceImpl implements mainService{
	
	@Autowired
	private mainDAO dao;

	@Override
	public List<Promotion> selectPromotion() {
		
		return dao.selectPromotion();
	}

	@Override
	public List<Dining> selectDining() {
		return dao.selectDining();
	}

}
