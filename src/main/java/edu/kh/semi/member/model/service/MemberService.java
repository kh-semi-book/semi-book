package edu.kh.semi.member.model.service;

import java.util.List;
import java.util.Map;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.member.model.vo.Add;
import edu.kh.semi.member.model.vo.Member;

public interface MemberService {



	/** 로그인 기능
	 * @param inputMember
	 * @return
	 */
	public abstract Member login(Member inputMember);


	/** 회원가입 기능
	 * @param inputMember
	 * @param inputAdd 
	 * @return
	 */
	public abstract int signUp(Member inputMember, Add inputAdd);


	public abstract List<Book> reservationView(Member loginMember);


//	public abstract int signUp(Member[] inputMember);








}
