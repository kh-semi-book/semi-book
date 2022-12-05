package edu.kh.semi.reservation.model.service;

import java.util.Map;

import edu.kh.semi.manager.book.model.vo.Book;

public interface ReservationService {

	Map<String, Object> selectBook(int cp, int memberNo);

	// 예약 조회 상세보기 서비스
	Book reservationViewDetail(int memberNo);
	

}
