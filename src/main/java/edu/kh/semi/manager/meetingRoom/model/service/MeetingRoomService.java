package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.List;

import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

public interface MeetingRoomService {

//	public abstract MeetingRoom selectMeetingRoom();

	/** 미팅룸 예약 리스트 조회
	 * @param model
	 * @return
	 */
	public abstract List<MeetingRoom> selectMeetingRoomList();
	
	
}
