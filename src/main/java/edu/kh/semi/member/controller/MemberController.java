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
//			path = referer; // 이전페이지로 이동
			model.addAttribute("message","회원 아이디 또는 비밀번호가 일치하지 않습니다.");
//			ra.addFlashAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
		}
		
//		return "redirect:" + path;
		return "redirect:/";
		}
}
