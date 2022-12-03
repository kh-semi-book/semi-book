package edu.kh.semi.reservation.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.reservation.model.dao.ReservationDAO;
import edu.kh.semi.reservation.model.vo.ReservationViewDetail;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDAO dao;
	
	@Override
	public Map<String, Object> selectBook(int cp) {
		
		int bookCount = dao.selectBookCount();
		
		Pagination pagination = new Pagination(bookCount, cp);
		
		List<ReservationViewDetail> bookList = dao.selectBookList(pagination);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("bookList",bookList);
		
		return map;
	}
	
	// 예약 조회 상세보기 서비스 
	@Override
	public Book reservationViewDetail(int memberNo) {
		return dao.reservationViewDetail(memberNo);
	}

}
