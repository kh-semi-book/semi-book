package edu.kh.semi.reservation.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.reservation.model.vo.Guest;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

@Repository
public class ReserveDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public List<Promotion> selectPromotion(Reserve reserve) {
		
		return sqlSession.selectList("reserveMapper.selectPromotion", reserve);
	}

	public List<String> selectRoomType(int promotionNo) {
		
		return sqlSession.selectList("reserveMapper.selectRoomType", promotionNo);
	}

	public List<String> selectBedType(int promotionNo) {
		return sqlSession.selectList("reserveMapper.selectBedType", promotionNo);
	}

	public List<Option> selectOption() {
		
		return sqlSession.selectList("reserveMapper.selectOption");
	}

	/** 카드 번호
	 * @param inputGuest
	 * @return
	 */
	public int insertPayment(Guest inputGuest) {
		return sqlSession.insert("reserveMapper.insertPayment",inputGuest);
	}

	public int insertGuest(Guest inputGuest) {
		return sqlSession.insert("reserveMapper.insertGuest",inputGuest);
	}

	public int insertBook(Reserve reserve) {
		return sqlSession.insert("reserveMapper.insertBook",reserve);
	}

	
	
	
}
