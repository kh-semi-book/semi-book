package edu.kh.semi.member.model.service;

import java.util.Map;

import edu.kh.semi.member.model.vo.Member;

public interface FindIdPwService {

	String findId(Member input);

	int findPw(Member input);

}
