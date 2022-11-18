package edu.kh.semi.manager.meetingRoom.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

@Repository
public class MeetingRoomDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	
	public MeetingRoom selectMeetingRoom() {
		return session.selectOne("meetingRoomMapper.selectMeetingRoom");
	}

}
