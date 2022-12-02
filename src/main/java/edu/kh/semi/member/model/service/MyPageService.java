package edu.kh.semi.member.model.service;

import edu.kh.semi.member.model.vo.Member;

public interface MyPageService {

	
	/** 회원 정보 수정 서비스
	 * @param inputMember
	 * @return
	 */
	public abstract int updateMember(Member inputMember);

//	/** 회원 탈퇴 서비스 
//	 * @param memberNo
//	 * @param inputMember
//	 * @return
//	 */
//	public abstract int memberDelete(int memberNo, Member inputMember);


	
}
