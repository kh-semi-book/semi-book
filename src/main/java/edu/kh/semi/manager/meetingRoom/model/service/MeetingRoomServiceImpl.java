package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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
	}

}
