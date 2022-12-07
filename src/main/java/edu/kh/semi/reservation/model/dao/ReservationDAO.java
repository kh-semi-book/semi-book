package edu.kh.semi.reservation.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.vo.Option;
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

	public List<Book> reservationView(Map<String, Object> nonMemberMap) {
		return sqlSession.selectList("reservationMapper.selectBookList2", nonMemberMap);
	}
	
	/** 예약 조회 상세보기 
	 * @param bookNo
	 * @return
	 */
	public Book reservationViewDetail(int bookNo) {
		return sqlSession.selectOne("reservationMapper.reservationViewDetail",bookNo);
	}


	
	/** 예약 옵션 리스트
	 * @param bookNo
	 * @return
	 */
	public List<Option> selectOptionList(int bookNo) {
		return sqlSession.selectList("reservationMapper.selectOptionList",bookNo);
	}


	

}
