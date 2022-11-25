package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.List;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.meetingRoom.model.dao.MeetingRoomDAO;
import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

@Service
public class MeetingRoomServiceImpl implements MeetingRoomService{

	@Autowired
	private MeetingRoomDAO dao;
	
	
//	1개 조회 
//	@Override
//	public MeetingRoom selectMeetingRoom() {
//		return dao.selectMeetingRoom();
//	}


	// 리스트 조회 
	@Override
	public List<MeetingRoom> selectMeetingRoomList() {
		return dao.selectMeetingRoomList();
	// 예약 리스트 조회
	@Override
	public List<MeetingRoom> selectMeetingRoom() {
		return dao.selectMeetingRoom();
	}

	
//	예약 1개 조회
//	@Override
//	public MeetingRoom selectMeetingRoom() {
//		return dao.selectMeetingRoom();
//	}

//	예약 리스트 조회 + 페이징 처리 
//	@Override
//	public Map<String, Object> selectMeetingRoom(int cp) {
//		
//		// 1. 예약 전체 개수 조회 
//		int bookCount = dao.getBookCount();
//		
//		// 2. 전체 예약 수 + cp(현재페이지)를 이용해서 
//				// 페이징 처리 객체 생성
//				Pagination pagination=new Pagination(bookCount, cp);
//				
//				// 3. 페이징 처리 객체를 이용해서 게시글 목록 조회 
//				List<MeetingRoom> bookList=dao.selectBookList(pagination);
//				
//				Map<String, Object> map=new HashMap<String, Object>();
//				
//				map.put("pagination", pagination);
//				map.put("bookList",bookList);
//				
//				return map;
//		
//	}

}
