package edu.kh.semi.reservation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.reservation.model.dao.ReserveDAO;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

@Service
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveDAO dao;

	@Override
	public List<Promotion> selectPromotion(Reserve reserve) {
		
		// 날짜에 해당하는 프로모션들을 얻어옴
		List<Promotion> promotion=dao.selectPromotion(reserve);
		
		for(int i=0;i<promotion.size();i++) {
			List<String> roomType=dao.selectRoomType(promotion.get(i).getPromotionNo());
			promotion.get(i).setRoomType(roomType);
		}
		
		return promotion;
	}

	@Override
	public List<Option> selectOption() {
		
		return dao.selectOption();
	}
}
