package edu.kh.semi.reservation.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.vo.ReservationViewDetail;

@Repository
public class ReservationDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	

	/** 예약 조회
	 * @param loginMember
	 * @return
	 */
	public List<Book> reservationView(Member loginMember) {
		return sqlSession.selectList("reservationMapper.selectBookList", loginMember);
	}

	
	/** 예약 조회 상세보기 서비스
	 * @param memberNo
	 * @return
	 */
	public Book reservationViewDetail(int memberNo) {
		return sqlSession.selectOne("reservationMapper.reservationViewDetail",memberNo);
	}

}
