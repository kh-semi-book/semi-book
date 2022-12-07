package edu.kh.semi.reservation.model.service;

import java.util.List;
import java.util.Map;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.member.model.vo.Member;

public interface ReservationService {


	// 예약 조회 상세보기 서비스
	Book reservationViewDetail(int memberNo);

	// 로그인 예약 조회
	List<Book> reservationView(Member loginMember);

	// 비회원 예약 조회
	List<Book> reservationView(Map<String, Object> nonMemberMap);
	

}
