package edu.kh.semi.manager.meetingRoom.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.meetingRoom.model.dao.MeetingRoomDAO;
import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

@Service
public class MeetingRoomServiceImpl implements MeetingRoomService{

	@Autowired
	private MeetingRoomDAO dao;
	
	
	@Override
	public MeetingRoom selectMeetingRoom() {
		return dao.selectMeetingRoom();
	}

}
