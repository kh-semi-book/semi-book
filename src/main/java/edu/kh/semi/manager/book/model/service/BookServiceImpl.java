package edu.kh.semi.manager.book.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.book.model.dao.BookDAO;
import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.book.model.vo.SearchOption;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired 
	public BookDAO dao;

	@Override
	public Map<String, Object> selectBook(int cp) {
		
		// 1. 예약 전체 개수 조회 
		int bookCount=dao.getBookCount();
		
		// 2. 전체 예약 수 + cp(현재페이지)를 이용해서 
		// 페이징 처리 객체 생성
		Pagination pagination=new Pagination(bookCount, cp);
		
		// 3. 페이징 처리 객체를 이용해서 게시글 목록 조회 
		List<Book> bookList=dao.selectBookList(pagination);
		
		Map<String, Object> map=new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("bookList",bookList);
		
		return map;
	}

	@Override
	public Map<String, Object> searchBook(int cp, SearchOption sc) {
		List<Book> bookList=null;
		int bookCount = 0;
		
		String condition="";
		String option=sc.getSearchOption();
		String optionInput=sc.getSearchOptionInput();
		
		String dateOption=sc.getSearchDateOption();
		String dateOptionInput1=sc.getSearchDateInput1();
		String dateOptionInput2=sc.getSearchDateInput2();
		
		switch(option) {
		case "bookerName":
			option="MEMBER_NAME"; break;
		case "roomNum":
			option="ROOM_NUM"; break;
		case "bookStatus":
			option="BOOK_PROCESS"; break;
		}
		
		
		
		if(sc.getSearchDateInput1()=="" && sc.getSearchDateInput2()=="") {	
			condition="WHERE "+option+"='"+optionInput+"'";

		}
		
		else {
			
			switch(dateOption) {
			case "bookDate":
				dateOption="BOOK_DATE"; break;
			case "checkIn":
				dateOption="CHECK_IN"; break;
			case "checkOut":
				dateOption="CHECK_OUT"; break;
			}
			
			condition="WHERE "+option+"='"+optionInput+"' AND "+dateOption+" BETWEEN '"+dateOptionInput1+"' AND '"+dateOptionInput2+"'";
			
		}
		
		bookList=dao.searchAll(condition);
		bookCount=bookList.size();
		
		
		
		Pagination pagination=new Pagination(bookCount, cp);
		
		Map<String, Object> map=new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("bookList",bookList);
		
		return map;
	}

}
