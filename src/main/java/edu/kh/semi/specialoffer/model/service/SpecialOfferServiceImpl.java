package edu.kh.semi.specialoffer.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.specialoffer.model.dao.SpecialOfferDAO;
import edu.kh.semi.specialoffer.model.vo.Dining;
import edu.kh.semi.specialoffer.model.vo.Event;

@Service
public class SpecialOfferServiceImpl implements SpecialOfferService{
	
	@Autowired
	private SpecialOfferDAO dao;
	
	
	// 객실 프로모션 메인
	@Override
	public List<Promotion> selectPromotionList() {
		return dao.selectPromotionList();
	}
	
	// 객실 프로모션 상세 조회
	@Override
	public Promotion roomPromotionDetail(int promotionNo) {
		return dao.roomPromotionDetail(promotionNo);
	}

	
	// 다이닝 메인
	@Override
	public List<Dining> selectDiningList() {
		return dao.selectDiningList();
	}
	
	// 다이닝 상세 조회
	@Override
	public Dining dininigDetail(int diningNo) {
		return dao.dininigDetail(diningNo);
	}
	
	// 이벤트 메인
	@Override
	public List<Event> selectEventList() {
		return dao.selectEventList();
	}
	
	// 이벤트 상세 조회
	@Override
	public Event eventDetail(int eventNo) {
		return dao.eventDetail(eventNo);
	}

}
