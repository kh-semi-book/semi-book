package edu.kh.semi.nav.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NavDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

}
