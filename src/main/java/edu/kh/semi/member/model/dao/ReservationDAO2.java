package edu.kh.semi.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.member.model.vo.Reservation2;

@Repository
public class ReservationDAO2 {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/** 예약 수 조회 
	 * @return 
	 */
	public int selectBookCount() {
		return sqlSession.selectOne("reservationMapper.selectBookCount");
	}

	/** 예약 리스트 조회 
	 * @param pagination
	 * @return
	 */
	public List<Reservation2> selectBookList(Pagination pagination) {
		return sqlSession.selectList("reservationMapper.selectBookList");
	}

}
