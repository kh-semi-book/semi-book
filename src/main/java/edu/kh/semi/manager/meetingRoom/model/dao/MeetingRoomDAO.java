package edu.kh.semi.manager.meetingRoom.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

@Repository
public class MeetingRoomDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
//	1개 조회 
//	public MeetingRoom selectMeetingRoom() {
//		return sqlSession.selectOne("meetingRoomMapper.selectMeetingRoom");
//	}

	// 미팅룸 리스트 조회
	public List<MeetingRoom> selectMeetingRoomList() {
		return sqlSession.selectList("meetingRoomMapper.selectMeetingRoomList");
	}

}
