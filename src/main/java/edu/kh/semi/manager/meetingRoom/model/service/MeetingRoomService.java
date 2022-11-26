package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.List;

import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

public interface MeetingRoomService {

//	예약 1개의 객실 조회
//	public abstract MeetingRoom selectMeetingRoom();
	

	/** 미팅룸 예약 리스트 조회
	 * @param model
	 * @return
	 */
	public abstract List<MeetingRoom> selectMeetingRoomList();
	
	
//	미팅룸 리스트 조회 + 페이징 처리
// 	public Map<String, Object> selectMeetingRoom(int cp);
	
}
