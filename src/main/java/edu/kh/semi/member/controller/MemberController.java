//package edu.kh.semi.member.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestHeader;
//import org.springframework.web.bind.annotation.SessionAttributes;
//
//import edu.kh.semi.member.model.service.MemberService;
//import edu.kh.semi.member.model.vo.Member;
//
//@Controller
//@SessionAttributes({"loginMember"})
//public class MemberController {
//	
//	@Autowired
//	private MemberService service;
//	
//	
//	
//	
//	
//	@GetMapping("/member/signUp2")
//	public String signUp2() {
//		return "/member/signUp2";
//	}
//	
//	// 11월 18일 22시 45분 로그인
//	@PostMapping("/member/login")
//	public String login(String inputId, String inputPw , Model model) {
//		
//		Member loginMember = service.login(inputId, inputPw);
//		
//		
//		model.addAttribute("loginMember", loginMember);
//		
//		return "nav/dining/diningBeyond";
//	
//	
//	
//	
//}
//	
//}
