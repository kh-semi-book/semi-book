package edu.kh.semi.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AjaxDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	public int idDupCheck(String memberId) {

		return sqlSession.selectOne("ajaxMapper.idDupCheck", memberId);
	}
	
	
}
