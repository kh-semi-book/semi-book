package edu.kh.semi.reservation.model.service;

import java.util.List;
import java.util.Map;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.vo.Guest;
import edu.kh.semi.reservation.model.vo.NonMember;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

/**
 * @author user
 *
 */
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
	 * @param nonMember 
	 * @return
	 */
	int reservation4(Member loginMember, Reserve reserve, Guest inputGuest, String[] optionList, NonMember nonMember);

	Member login(Member inputMember);


	/** 예약 완료 이메일 보내기
	 * @param map
	 * @return
	 */
	int sendBookNo(Map<String, Object> map); 


}
