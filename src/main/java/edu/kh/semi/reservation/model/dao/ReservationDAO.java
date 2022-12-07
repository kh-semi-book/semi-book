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

	/** 비회원 예약 조회
	 * @param nonMemberBookNo
	 * @return
	 */
	public List<Book> reservationView(int nonMemberBookNo) {
		return sqlSession.selectList("reservationMapper.selectBookList2", nonMemberBookNo);
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

	/** 비회원 번호 얻어 오기
	 * @param nonMemberMap
	 * @return
	 */
	public int selectNonMemberNo(Map<String, String> nonMemberMap) {
		return sqlSession.selectOne("reservationMapper.selectNonMemberNo",nonMemberMap);
	}


	

}
