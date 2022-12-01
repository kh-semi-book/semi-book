package edu.kh.semi.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.kh.semi.member.model.service.MyPageService;
import edu.kh.semi.member.model.vo.Member;

@RequestMapping("/member")
@SessionAttributes("loginMember") // 탈퇴 성공시 로그아웃에 사용
@Controller
public class MyPageController {
	
	@Autowired
	private MyPageService service;
	
	@PostMapping("/memberEdit")
	public String updateMember(Member inputMember) {
		
		return null;
		
	}
	
	
}
