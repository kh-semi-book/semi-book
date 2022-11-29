package edu.kh.semi.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String login(Member inputMember , Model model,
			RedirectAttributes ra,
			@RequestParam(value="saveId", required = false) String saveId,
			HttpServletResponse resp,
			@RequestHeader(value="referer") String referer) {
		
		Member loginMember = service.login(inputMember);
		
		String path = null;
		
		
		if(loginMember != null) {
		path = "/"; 
		model.addAttribute("loginMember", loginMember);
			
			Cookie cookie = new Cookie("saveId", loginMember.getMemberId());
			
			if(saveId != null) {
				
				cookie.setMaxAge(60 * 60 * 24 * 365);
				
			}else {
				cookie.setMaxAge(0);
			}
			cookie.setPath("/");
			
			resp.addCookie(cookie);
		
		}else{
			path = referer; // 이전페이지로 이동
//			model.addAttribute("message","회원 아이디 또는 비밀번호가 일치하지 않습니다.");
			ra.addFlashAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
		}
		
		return "redirect:" + path;
		}


	//로그아웃
	@GetMapping("/member/logout")
	public String logout(SessionStatus status) {
			
			status.setComplete(); // 세션 무효화
		
		
		return "redirect:/";
	}
	
	/*
	 * //회원가입페이지
	 * 
	 * @GetMapping("/member/signUp") public String signUpPage() {
	 * 
	 * return "member/signUp2"; }
	 */
	//회원가입 진행
	@PostMapping("/member/signUp")
	public String signUp(Member inputMember,
			String[] memberPhone,String[] memberEmail, String[] memberBirth,
			String[]memberWedding, String[] memberTel, String[] memberAddress,
			RedirectAttributes ra, 
			@RequestHeader("referer") String referer){
		// 배열 값이 작성되지 않은 경우 ==> null로 변환
		// 작성된 경우 값,값,값  (값 사이에 ,)
//		if(inputMember.getMemberPhone().equals(",,")) {
//			
//			inputMember.setMemberPhone(null);
//		} else {
//			inputMember.setMemberPhone(String.join(",,", memberPhone));
//		}
		String temp = memberPhone[0] + memberPhone[1] + memberPhone[2];
		inputMember.setMemberPhone(temp);
			
		if(inputMember.getMemberEmail().equals(",,")) {
			
			inputMember.setMemberEmail(null);
		} else {
			inputMember.setMemberEmail(String.join(",,", memberEmail));
		}
		
		String temp2 = memberBirth[0]+"-" +  memberBirth[1]+"-" + memberBirth[2];
//		if(inputMember.getMemberBirth().equals(",,")) {
		inputMember.setMemberBirth(temp2);
//			
//			inputMember.setMemberBirth(null);
//		} else {
//			inputMember.setMemberBirth(String.join(",,", memberBirth));
//		}
		
//		if(inputAdd.getMemberWedding().equals(",,")) {
//			
//			inputAdd.setMemberWedding(null);
//		} else {
//			inputAdd.setMemberWedding(String.join(",,", memberWedding));
//		}
//		
//		if(inputAdd.getMemberTel().equals(",,")) {
//			
//			inputAdd.setMemberTel(null);
//		} else {
//			inputAdd.setMemberTel(String.join(",,", memberTel));
//		}
//		if(inputAdd.getMemberAddress().equals(",,")) {
//			
//			inputAdd.setMemberAddress(null);
//		} else {
//			inputAdd.setMemberAddress(String.join(",,", memberAddress));
//		}
		
		int result = service.signUp(inputMember);
		
		String path = null;
		String message = null;
		
		if(result > 0) {
			path="/";
			message = "회원가입 성공";
		} else {
			path = referer;
			message = "회원 가입 실패";
			
			inputMember.setMemberPw(null);
			ra.addFlashAttribute("tempMember", inputMember);
		}
		ra.addFlashAttribute("message", message);
		
		return "redirect:" + path;
	}
	
	
	
	

}