package edu.kh.semi.reservation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.reservation.model.dao.ReserveDAO;
import edu.kh.semi.reservation.model.vo.Reserve;

@Service
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveDAO dao;

	@Override
	public List<Promotion> selectPromotion(Reserve reserve) {
		
		return dao.selectPromotion(reserve);
	}
}
