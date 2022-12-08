package edu.kh.semi.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.member.model.vo.Add;
import edu.kh.semi.member.model.vo.Member;

@Repository
public class MyPageDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 회원 정보 변경 
	// 1. 로그인 회원 번호를 이용한 비밀번호 조회  
	public String selectPw(int memberNo) {
		return sqlSession.selectOne("myPageMapper.selectPw",memberNo);
	}
	
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

	/** 회원 정보 수정 서비스 DAO (회원 가입시 추가 정보를 입력한 경우)
	 * @param inputAdd
	 * @return
	 */
	public int updateAdd(Add inputAdd) {
		return sqlSession.update("addMapper.updateMemberAdd", inputAdd);
	}
	
	/** 회원 정보 수정 서비스 DAO (회원 가입시 추가 정보를 입력하지 않은 경우)
	 * @param inputAdd
	 * @return
	 */
	public int insertAdd(Add inputAdd) {
		return sqlSession.insert("addMapper.insertMemberAdd", inputAdd);
	}
	
	/** 회원 탈퇴 회원 정보 조회 DAO 
	 * @param memberNo
	 * @return
	 */
	public Member selectMemberInfo(int memberNo) {
		return sqlSession.selectOne("myPageMapper.selectMemberInfo", memberNo);
	}

	/** 회원 탈퇴 DAO 
	 * @param memberNo
	 * @return
	 */
	public int memberDelete(int memberNo) {
		return sqlSession.update("myPageMapper.memberDelete", memberNo);
	}

	/** 로그인 정보 조회 DAO
	 * @param memberNo
	 * @return
	 */
	public Member selectMember(int memberNo) {
		return sqlSession.selectOne("myPageMapper.selectMember",memberNo);
	}

	/** 로그인 추가 정보 조회 DAO
	 * @param memberNo
	 * @return
	 */
	public Add selectAdd(int memberNo) {
		return sqlSession.selectOne("addMapper.selectAdd",memberNo);
	}

	
	




}
