package edu.kh.semi.member.model.service;

import edu.kh.semi.member.model.vo.Add;
import edu.kh.semi.member.model.vo.Member;

public interface MyPageService {

	
	/** 회원 정보 수정 서비스 (member)
	 * @param inputMember
	 * @param inputAdd 
	 * @param add 
	 * @return
	 */
	public abstract int updateMember(Member inputMember, Member loginMember,String newPw, Add add, Add inputAdd);

//	/** 회원 정보 수정 서비스 (add)
//	 * @param add
//	 * @return
//	 */
//	public abstract int updateAdd(Add add);
	
	/** 회원 탈퇴 서비스 
	 * @param memberNo
	 * @param inputMember
	 * @return
	 */
	public abstract int memberDelete(int memberNo, Member inputMember);

	/** 로그인 정보 조회 서비스 
	 * @param memberNo
	 * @return
	 */
	public abstract Member selectMember(int memberNo);

	/** 로그인 추가 정보 조회 서비스 
	 * @param memberNo
	 * @return
	 */
	public abstract Add selectAdd(int memberNo);



	
}
