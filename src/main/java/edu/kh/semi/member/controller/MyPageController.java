package edu.kh.semi.member.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.member.model.service.MyPageService;
import edu.kh.semi.member.model.vo.Member;

@RequestMapping("/member")
@SessionAttributes("loginMember") // 탈퇴 성공시 로그아웃에 사용
@Controller
public class MyPageController {
	
	@Autowired
	private MyPageService service;
	
	
	// 내 정보 페이지 수정
	@PostMapping("/memberEdit")
	public String updateMember(Member inputMember, String[] memberAddress, String[] memberPhone,
							   @SessionAttribute("loginMember") Member loginMember,
							   RedirectAttributes ra) {
	
		inputMember.setMemberNo(loginMember.getMemberNo());
		
			String phone = memberPhone[0]+memberPhone[1]+memberPhone[2];
			inputMember.setMemberPhone(phone);
		
		int result = service.updateMember(inputMember);
		
		
		String path =null;
		String message = null;
		
		if(result>0) {
			
			message = "회원 정보가 수정되었습니다.";
			
			loginMember.setMemberPw(inputMember.getMemberPw());
			loginMember.setMemberPhone(inputMember.getMemberPhone());
			loginMember.setMemberEmail(inputMember.getMemberEmail());
			loginMember.setMemberGender(inputMember.getMemberGender());
			loginMember.setEmailFlag(inputMember.getEmailFlag());
			loginMember.setSmsFlag(inputMember.getSmsFlag());
		
		}
		else { 
			message = "회원 정보 수정이 실패했습니다.";
		}
		
		ra.addAttribute("message",message);
		
		System.out.println(loginMember);
		System.out.println(inputMember);
		
		return "redirect:memberEdit";
		
	}
	
	
	
	// 회원 탈퇴 서비스 페이지 이동 
	@GetMapping("/memeberDelete")
	public String memberDeletePage() {
		
		return "member/memberSecession";
	}
	
	
	// 회원 탈퇴 서비스 
	@PostMapping("/memberSecession")
	public String memberDelete(@SessionAttribute("loginMember") Member loginMember, Member inputMember,
								SessionStatus status, RedirectAttributes ra) {
		
		
		
		int result = service.memberDelete(loginMember.getMemberNo() ,inputMember);
		
		String path = null;
		String message = null;
		
			
		if(result>0) {
			
			message = "회원 탈퇴되었습니다.";
			path = "/";
			 
		} else {
			
			message = "회원 탈퇴 실패했습니다.";
			path ="referer";
		}
			
		return path;
	}
	
	
}
