package edu.kh.semi.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.member.model.vo.Member;

@Repository
public class FindIdPwDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public String findId(Member inputMember) {
		
		return sqlSession.selectOne("memberMapper.findId",inputMember);
	}

}
