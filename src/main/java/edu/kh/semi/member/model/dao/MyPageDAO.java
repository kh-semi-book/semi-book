package edu.kh.semi.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.member.model.vo.Member;

@Repository
public class MyPageDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int updateInfo(Member inputMember) {

		return sqlSession.update("");
	}
}
