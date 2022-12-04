package edu.kh.semi.reservation.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.board.model.vo.Promotion;
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

	public List<Option> selectOption() {
		
		return sqlSession.selectList("reserveMapper.selectOption");
	}
	
	
	
}
