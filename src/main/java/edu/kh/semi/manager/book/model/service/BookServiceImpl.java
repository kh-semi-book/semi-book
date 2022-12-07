package edu.kh.semi.manager.book.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.book.model.dao.BookDAO;
import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.book.model.vo.Room;
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
	public Map<String, Object> selectBook(Map<String, Object> pm, int cp) {
		// 1. 검색 결과 개수 조회 
		int bookCount=dao.getBookCount(pm);
		
		// 2. 전체 예약 수 + cp(현재페이지)를 이용해서 
		// 페이징 처리 객체 생성
		Pagination pagination=new Pagination(bookCount, cp);
		
		// 3. 페이징 처리 객체를 이용해서 게시글 목록 조회 
		List<Book> bookList=dao.selectBookList(pagination, pm);
		
		Map<String, Object> map=new HashMap<String, Object>();
		
		map.put("pagination", pagination);
		map.put("bookList",bookList);
		
		return map;
	}
	

	// 해당 예약번호의 룸타입, 전망타입 조회
	@Override
	public Room searchRoom(int bookNo) {
		
		return dao.searchRoom(bookNo);
	}


	// 해당 예약번호의 룸타입, 전망타입 에 맞는 방 번호 출력
	@Override
	public List<Room> selectRoom(Room inputRoom) {
		return dao.selectRoom(inputRoom);
	}
	
	
	
	
	@Override
	public int updateBook(Book bookPerson) {
		
		int result=dao.updateBook(bookPerson);
		
		if(bookPerson.getRoomCancelFlag().equals(1)) {
	
			int checkBook=dao.checkBookRoom(bookPerson);
			
			if(checkBook==0) {
				result=dao.insertBookRoom(bookPerson);
			}else {
				result=dao.updateBookRoom(bookPerson);
			}
			
			return result;
		}
			
		
		return result;
		
		
		
	}
}
