package edu.kh.semi.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.member.model.vo.Member;

@Repository
public class MyPageDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/** 회원 정보 수정 서비스 DAO (비밀번호가 없을 때) 
	 * @param inputMember
	 * @return result
	 */
	public int updateMember(Member inputMember) {
		
		int result = sqlSession.update("myPageMapper.updateMember", inputMember);
		System.out.println(result);
		
		return result;
	}

	
	/** 회원 정보 수정 서비스 DAO (비밀번호가 있을 때)
	 * @param inputMember
	 * @return result
	 */
	public int updateMemberPw(Member inputMember) {
		
		return sqlSession.update("myPageMapper.updateMemberPw",inputMember);
	}

}
