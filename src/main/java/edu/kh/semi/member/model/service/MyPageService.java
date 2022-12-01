package edu.kh.semi.member.model.service;

import edu.kh.semi.member.model.vo.Member;

public interface MyPageService {

	/** 회원정보 수정 서비스
	 * @param inputMember
	 * @return result
	 */
	int updateInfo(Member inputMember);
}
