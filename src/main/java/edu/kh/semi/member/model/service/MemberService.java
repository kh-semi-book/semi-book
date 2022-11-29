package edu.kh.semi.member.model.service;

import edu.kh.semi.member.model.vo.Member;

public interface MemberService {



	/** 로그인 기능
	 * @param inputMember
	 * @return
	 */
	public abstract Member login(Member inputMember);

	/** 회원 가입 기능
	 * @param inputMember
	 * @return
	 */
	public abstract int signUp(Member inputMember);




}
