package edu.kh.semi.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.member.model.dao.ReservationDAO2;
import edu.kh.semi.member.model.vo.Reservation2;

@Service
public class ReservationServiceImpl2 implements ReservationService2{
	
	@Autowired
	private ReservationDAO2 dao;
	
	@Override
	public Map<String, Object> selectBook(int cp) {
		
		int bookCount = dao.selectBookCount();
		
		Pagination pagination = new Pagination(bookCount, cp);
		
		List<Reservation2> bookList = dao.selectBookList(pagination);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("bookList",bookList);
		
		return map;
	}

}
