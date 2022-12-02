package edu.kh.semi.manager.meetingRoom.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;
import edu.kh.semi.member.model.vo.Member;

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

		System.out.println(pm.get("searchDateInput").equals(""));
		System.out.println(pm.get("searchDateInput").equals(null));
		System.out.println(pm.get("searchDateInput").equals("null"));
		
		return sqlSession.selectList("meetingRoomMapper.selectBookList_search", pm ,rowBounds);
	}

	// 진행상태 변경
	public int changeProcess(int input) {
		return sqlSession.update("meetingRoomMapper.changeProcess",input);
	}
	
	// 미팅룸 예약 문의 추가
	public int meetingBookAdd(MeetingRoom inputMeetingRoom) {
		
		return sqlSession.insert("meetingRoomMapper.meetingBookAdd",inputMeetingRoom);
	}

	// 미팅룸 예약 상세 페이지 조회 DAO
	public MeetingRoom meetingRoomDetail(int meetingBookNo) {
		return sqlSession.selectOne("meetingRoomMapper.meetingRoomDetail",meetingBookNo);
	}
	
	
	


}
