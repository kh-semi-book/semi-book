package edu.kh.semi.manager.cmm.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CMMDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

}
