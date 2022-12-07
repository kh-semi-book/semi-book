package edu.kh.semi.main.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.board.model.vo.Dining;
import edu.kh.semi.manager.board.model.vo.Promotion;

@Repository
public class mainDAO {
	
	@Autowired 
	private SqlSession sqlSession;

	
	public List<Promotion> selectPromotion() {
		return sqlSession.selectList("boardMapper.selectPromotionList");
	}

	public List<Dining> selectDining() {
		return sqlSession.selectList("boardMapper.selectDiningList");
	}
}
