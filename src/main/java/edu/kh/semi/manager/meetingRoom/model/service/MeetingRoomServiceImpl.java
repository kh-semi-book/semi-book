package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.meetingRoom.model.dao.MeetingRoomDAO;
import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;
import edu.kh.semi.member.model.vo.Member;

@Service
public class MeetingRoomServiceImpl implements MeetingRoomService{

	@Autowired
	private MeetingRoomDAO dao;

	
	// 예약 리스트 조회(검색이 없는 경우)
	@Override
	public Map<String, Object> selectBookList(int cp) {
				
				// 1. 예약 전체 개수 조회 
				int bookCount=dao.getBookCount();
				
				// 2. 전체 예약 수 + cp(현재페이지)를 이용해서 
				// 페이징 처리 객체 생성
				Pagination pagination=new Pagination(bookCount, cp);
				
				// 3. 페이징 처리 객체를 이용해서 게시글 목록 조회 
				List<MeetingRoom> bookList=dao.selectBookList(pagination);
				
				Map<String, Object> map=new HashMap<String, Object>();
				
				map.put("pagination", pagination);
				map.put("bookList",bookList);
				
				return map;
	}

	// 예약 리스트 조회(검색이 있는 경우)
	@Override
	public Map<String, Object> selectBookList(Map<String, Object> pm, int cp) {
				
				// 1. 검색 결과 개수 조회 
				int bookCount = dao.getBookCount(pm);
				
				// 2. 전체 예약 수 + cp(현재페이지)를 이용해서 
				// 페이징 처리 객체 생성
				Pagination pagination = new Pagination(bookCount, cp);
				
				// 3. 페이징 처리 객체를 이용해서 게시글 목록 조회 
				List<MeetingRoom> bookList = dao.selectBookList(pagination, pm);
				
				Map<String, Object> map=new HashMap<String, Object>();
				
				map.put("pagination", pagination);
				map.put("bookList",bookList);
				
				return map;
	}

	
	
	// 미팅룸 예약 문의 추가
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int meetingBookAdd(MeetingRoom inputMeetingRoom) {
		
		int result = dao.meetingBookAdd(inputMeetingRoom);
		
		return result;
	}

	// 미팅룸 예약 상세보기 서비스
	@Override
	public MeetingRoom meetingRoomDetail(int meetingBookNo) {
		
		return dao.meetingRoomDetail(meetingBookNo);
	}

	// 미팅룸 예약 상세보기 수정 서비스 
	@Transactional
	@Override
	public int meetingRoomDetailUpdate(MeetingRoom inputMeetingRoom) {
		return dao.meetingRoomDetailUpdate(inputMeetingRoom);
	}


	// 저장클릭시 업데이트
	@Override
	public int processUpdate(MeetingRoom meetingRoom) {
		
		return dao.processUpdate(meetingRoom);
	}

	

}
