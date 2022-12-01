package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.Map;

import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;


public interface MeetingRoomService {

	Map<String, Object> selectBookList(int cp);

	Map<String, Object> selectBookList(Map<String, Object> pm, int cp);

	// 미팅룸 예약 문의 추가 
	int meetingBookAdd(MeetingRoom inputMeetingRoom);


}
