package edu.kh.semi.nav.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.board.model.vo.CMM;



@Repository
public class NavDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<CMM> selectCmmList() {
		return sqlSession.selectList("selectCmmList");
	}
	
	

}
