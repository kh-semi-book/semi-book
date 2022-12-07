package edu.kh.semi.reservation.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.dao.ReservationDAO;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDAO dao;
	
	// 로그인 예약조회
	@Override
	public List<Book> reservationView(Member loginMember) {
		return dao.reservationView(loginMember);
	}
	
	// 비회원 조회
	@Override
	public int selectNonMemberNo(Map<String, String> nonMemberMap) {
		return dao.selectNonMemberNo(nonMemberMap);
	}
	
	
	// 비회원 예약 조회
	@Override
	public List<Book> reservationView(int nonMemberBookNo) {
		
		return dao.reservationView(nonMemberBookNo);
	}
	
	// 예약 조회 상세보기 서비스 
	@Override
	public Book reservationViewDetail(int bookNo) {
		
		Book book = dao.reservationViewDetail(bookNo);
		
		if(book!=null) {
			book.setOptionList(dao.selectOptionList(bookNo));
		}
		
		return book;
	}

}
