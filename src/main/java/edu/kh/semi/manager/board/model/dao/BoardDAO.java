package edu.kh.semi.manager.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.manager.board.model.vo.Promotion;


@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int saveCmmPost(CMM cmm) {
		return sqlSession.insert("cmmMapper.saveCmmPost", cmm);
	}

	public int savePromotionPost(Promotion promotion) {
		return sqlSession.insert("promotionMapper.savePromotionPost", promotion);
	}

}
