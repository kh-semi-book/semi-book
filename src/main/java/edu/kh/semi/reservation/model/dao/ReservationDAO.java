package edu.kh.semi.reservation.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.reservation.model.vo.ReservationViewDetail;

@Repository
public class ReservationDAO {

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
	public List<ReservationViewDetail> selectBookList(Pagination pagination) {
		return sqlSession.selectList("reservationMapper.selectBookList");
	}

}