package edu.kh.semi.reservation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.dao.ReserveDAO;
import edu.kh.semi.reservation.model.vo.Guest;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

@Service
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveDAO dao;

	// 날짜에 해당하는 프로모션 조회
	@Override
	public List<Promotion> selectPromotion(Reserve reserve) {
		
		// 날짜에 해당하는 프로모션들을 얻어옴
		List<Promotion> promotion=dao.selectPromotion(reserve);
		
		for(int i=0;i<promotion.size();i++) {
			List<String> roomType=dao.selectRoomType(promotion.get(i).getPromotionNo());
			List<String> bedType=dao.selectBedType(promotion.get(i).getPromotionNo());
			promotion.get(i).setRoomType(roomType);
			promotion.get(i).setBedType(bedType);
		}
		
		return promotion;
	}

	@Override
	public List<Option> selectOption() {
		
		return dao.selectOption();
	}
	
	// 예약
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int reservation4(Member loginMember, Reserve reserve, Guest inputGuest) {
		
		int result = dao.insertPayment(inputGuest);
		
		if(result>0) {
			result = dao.insertGuest(inputGuest);
			
			if(result >0) {
				if(loginMember!=null) {
					reserve.setMemberNo(loginMember.getMemberNo());
					reserve.setNonMemberNo(0);
				} else {
					
					reserve.setMemberNo(0);
					reserve.setNonMemberNo(0);
				}
				
				result= dao.insertBook(reserve);
			}
		}
		
		
		
		
		return 0;
	}
	
	
	
	
	
	
}
