package edu.kh.semi.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.kh.semi.member.model.service.MemberService;
import edu.kh.semi.member.model.vo.Member;

@Controller
@SessionAttributes({"loginMember", "message"})
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	
	
	
	
	@GetMapping("/member/signUp2")
	public String signUp2() {
		return "/member/signUp2";
	}
	
	// 11월 18일 22시 45분 로그인
	
	@PostMapping("/member/login")
	public String login(Member inputMember , Model model) {
		
		Member loginMember = service.login(inputMember);
		
		// 로그인 성공시 loginMember를 세션에 추가
		// 로그인 실패시 "아이디 또는 비밀번호가 일치하지 않습ㄴ디ㅏ." 세션에 추가
		if(loginMember != null) {
		model.addAttribute("loginMember", loginMember);
		
		}else{
			
			model.addAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.")
		}
		
		return "nav/dining/diningBeyond";
	
	
	
	
}
	
}
