package edu.kh.semi.manager.meetingRoom.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

@Repository
public class MeetingRoomDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 1개 조회
//	public MeetingRoom selectMeetingRoom() {
//		return session.selectOne("meetingRoomMapper.selectMeetingRoom");
//	}


	public int getBookCount() {
		return sqlSession.selectOne("meetingRoomMapper.getBookCount");
	}

	public List<MeetingRoom> selectBookList(Pagination pagination) {
		
		int offset=(pagination.getCurrentPage()-1)*pagination.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		
		return sqlSession.selectList("meetingRoomMapper.selectBookList",rowBounds);
	}

}
