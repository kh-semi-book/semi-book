package edu.kh.semi.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.member.model.vo.Add;
import edu.kh.semi.member.model.vo.Member;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;



//public Member login(String memberId, String memberPw) {
//
//	
//	return sqlSession.selectOne("memberMapper.login" , );
//	}




	/** 로그인 DAO
	 * @param memberEmail
	 * @return
	 */
	public Member login(String memberId) {
		return sqlSession.selectOne("memberMapper.login", memberId  );
	}







	public int signUp(Member inputMember) {
		
		return sqlSession.insert("memberMapper.signUp", inputMember);
	}



	

	
	


}
