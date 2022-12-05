package edu.kh.semi.member.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.member.model.vo.Member;

@Repository
public class FindIdPwDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public String findId(Member input) {
		return sqlSession.selectOne("memberMapper2.findId",input);
	}

	public int findPw(Member input) {
		return sqlSession.selectOne("memberMapper2.findPw",input);
	}

	public int changeRanPw(Map<String, Object> map) {
		return sqlSession.update("memberMapper2.changeRanPw",map);
	}

}
