package edu.kh.semi.nav.specialOffer.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.nav.specialOffer.model.vo.Dining;
import edu.kh.semi.nav.specialOffer.model.vo.Event;

public interface SpecialOfferService {
	
	
	
	/** 객실 프로모션 메인
	 * @return
	 */
	List<Promotion> selectPromotionList();

	/** 객실 프로모션 상세조회
	 * @param promotionNo
	 * @return
	 */
	Promotion roomPromotionDetail(int promotionNo);
	
	

	/** 다이닝 메인
	 * @return
	 */
	List<Dining> selectDiningList();

	/** 다이닝 상세조회
	 * @param diningNo
	 * @return
	 */
	Dining dininigDetail(int diningNo);

	
	
	/** 이벤트 메인
	 * @return
	 */
	List<Event> selectEventList();

	/** 이벤트 상세 조회
	 * @param eventNo
	 * @return
	 */
	Event eventDetail(int eventNo);

}
