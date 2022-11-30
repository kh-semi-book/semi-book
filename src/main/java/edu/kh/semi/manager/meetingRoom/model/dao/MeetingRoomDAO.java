package edu.kh.semi.manager.meetingRoom.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

@Repository
public class MeetingRoomDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	// 예약 게시글 수 조회
	public int getBookCount() {
		return sqlSession.selectOne("meetingRoomMapper.getBookCount");
	}

	// 예약 조회 목록 수 조회 
	public List<MeetingRoom> selectBookList(Pagination pagination) {
		
		int offset=(pagination.getCurrentPage()-1)*pagination.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		
		return sqlSession.selectList("meetingRoomMapper.selectBookList", rowBounds);
	}

	//  검색 결과 게시글 수 조회
	public int getBookCount(Map<String, Object> pm) {
		
		return sqlSession.selectOne("meetingRoomMapper.getBookCount_search",pm);
	}
	
	
	// 검색 결과 게시글 목록 수 조회
	public List<MeetingRoom> selectBookList(Pagination pagination, Map<String, Object> pm) {

		int offset=(pagination.getCurrentPage()-1)*pagination.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());

		return sqlSession.selectList("meetingRoomMapper.selectBookList_search", pm ,rowBounds);
	}
	
	
	


}
