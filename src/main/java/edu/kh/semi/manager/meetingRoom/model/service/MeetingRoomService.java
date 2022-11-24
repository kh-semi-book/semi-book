package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.Map;

import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

public interface MeetingRoomService {

//	단순 1개의 객실 조회
//	public abstract MeetingRoom selectMeetingRoom();

//	미팅룸 리스트 조회
	public abstract Map<String, Object> selectMeetingRoom(int cp);
	
	
}
