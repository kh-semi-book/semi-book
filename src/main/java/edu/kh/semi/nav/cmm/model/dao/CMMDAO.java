package edu.kh.semi.nav.cmm.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.board.model.vo.CMM;


@Repository
public class CMMDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public CMM cmmContent(int cmmNo) {
		return sqlSession.selectOne("boardMapper.cmmDetail", cmmNo);
	}

}
