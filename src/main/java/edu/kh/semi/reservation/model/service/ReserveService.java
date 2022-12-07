package edu.kh.semi.reservation.model.service;

import java.util.List;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.vo.Guest;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

public interface ReserveService {

	
	/** 날짜에 해당하는 프로모션 조회
	 * @param reserve
	 * @return
	 */
	List<Promotion> selectPromotion(Reserve reserve);

	List<Option> selectOption();

	/** 예약
	 * @param loginMember
	 * @param reserve
	 * @param inputGuest
	 * @param optionList 
	 * @return
	 */
	int reservation4(Member loginMember, Reserve reserve, Guest inputGuest, String[] optionList);

	Member login(Member inputMember);

}
