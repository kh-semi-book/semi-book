package edu.kh.semi.manager.book.model.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.book.model.dao.BookDAO;
import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.book.model.vo.Room;
import edu.kh.semi.manager.book.model.vo.SearchOption;
import edu.kh.semi.reservation.model.vo.Option;

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
		
		if(bookPerson.getRoomProcess().contains("1")) { // 저장일 경우 업데이트 인데 
	
			// 날짜별로 다 넣어줘야하는데 
			int checkBook=dao.checkBookRoom(bookPerson);
			
			if(checkBook==0) {
				String checkIn=bookPerson.getCheckIn();
				String checkOut=bookPerson.getCheckOut();
				
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

				LocalDate startDate = LocalDate.parse(checkIn, formatter);
				LocalDate endDate = LocalDate.parse(checkOut, formatter);
				
				List<LocalDate> dateList=getDatesBetweenTwoDates(startDate, endDate);
				
				for(int i=0;i<dateList.size();i++) {
					bookPerson.setBookRoomDate(dateList.get(i).format(formatter));
					result=dao.insertBookRoom(bookPerson);
				}
				
				
			}else {
				result=dao.updateBookRoom(bookPerson);
			}
			
			return result;
		}else if(bookPerson.getRoomProcess().contains("2")) {
			result=dao.deleteBookRoom(bookPerson);
		}
			
		
		return result;
		
		
		
	}
	
	
	
	public static List<LocalDate> getDatesBetweenTwoDates(LocalDate startDate, LocalDate endDate) {
		int numOfDaysBetween = (int) ChronoUnit.DAYS.between(startDate, endDate);
		return IntStream.iterate(0, i -> i + 1)
        	.limit(numOfDaysBetween)
        	.mapToObj(i -> startDate.plusDays(i))
		.collect(Collectors.toList());
	}
	
	
}
