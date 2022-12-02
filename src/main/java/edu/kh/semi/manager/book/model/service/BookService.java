package edu.kh.semi.manager.book.model.service;

import java.util.List;
import java.util.Map;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Room;
import edu.kh.semi.manager.book.model.vo.SearchOption;

public interface BookService {

	// 예약 조회 
	Map<String, Object> selectBook(int cp);

	// 예약 검색 
	Map<String, Object> selectBook(Map<String, Object> pm, int cp);

	// 해당 예약번호의 룸타입, 전망타입 조회
	Room searchRoom(int bookNo);
	
	// 룸타입, 전망타입 충족하는 방 조회(새창)
	List<Room> selectRoom(Room inputRoom);
	
	
	// 저장 클릭시 업데이트
	int updateBook(Book bookPerson);


}
