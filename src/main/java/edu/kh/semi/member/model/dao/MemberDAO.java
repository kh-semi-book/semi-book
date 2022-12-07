package edu.kh.semi.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Book;
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







	/** 회원가입 기능
	 * @param inputMember
	 * @return
	 */
	public int signUp(Member inputMember) {
		
		//2) int memberNo = 0;
		
		int result = sqlSession.insert("memberMapper.signUp", inputMember);
		if(result > 0)  result = inputMember.getMemberNo();
		// 1) result는 memberNo로 바꿔서 생각해도 됨.
		
		return result;
	}

	public int signUp2(Add inputAdd) {

		return sqlSession.insert("memberMapper.signUp2", inputAdd);
	}







	public List<Book> reservationView(Member loginMember) {
		return sqlSession.selectList("reservationMapper.selectBookList", loginMember);
	}



	

	
	


}
