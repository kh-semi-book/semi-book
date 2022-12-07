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
import edu.kh.semi.member.model.vo.Add;
import edu.kh.semi.member.model.vo.Member;

@Controller
@SessionAttributes({ "loginMember", "message" })
public class MemberController {

	@Autowired
	private MemberService service;

	@GetMapping("/member/signUp2")
	public String signUp2() {
		return "/member/signUp2";
	}

	@PostMapping("/member/login")
	public String login(Member inputMember, Model model, RedirectAttributes ra,
			@RequestParam(value = "saveId", required = false) String saveId, HttpServletResponse resp,
			@RequestHeader(value = "referer") String referer) {

		Member loginMember = service.login(inputMember);

		String path = null;

		if (loginMember != null) {
			model.addAttribute("loginMember", loginMember);
			
			if(loginMember.getAuthority()==2) {
				path="/manager/selectBook";
			} else {
				ra.addFlashAttribute("message", loginMember.getMemberName()+"("+loginMember.getMemberId()+")님 환영합니다!");
				
				path = "/";
				
				Cookie cookie = new Cookie("saveId", loginMember.getMemberId());
				
				if (saveId != null) {
					
					cookie.setMaxAge(60 * 60 * 24 * 365);
					
				} else {
					cookie.setMaxAge(0);
				}
				cookie.setPath("/");
				
				resp.addCookie(cookie);
			}
			

		} else {
			path = referer; // 이전페이지로 이동
			// model.addAttribute("message","회원 아이디 또는 비밀번호가 일치하지 않습니다.");
			ra.addFlashAttribute("message", "회원 아이디 또는 비밀번호가 일치하지 않습니다.\n\n 확인 후 다시 시도하시기 바랍니다.");
		}

		return "redirect:" + path;
	}

	// 로그아웃
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
	// 회원가입 진행
	@PostMapping("/member/signUp")
	public String signUp(Member inputMember, Add inputAdd,  String[] memberPhone, String[] memberEmail, String[] memberBirth,
			String[] memberWedding, String[] memberTel, String[] memberAddress, RedirectAttributes ra,
			@RequestHeader("referer") String referer) {

//		inputMember.setMemberId(MemberId);
		
		String phone = memberPhone[0] + memberPhone[1] + memberPhone[2];
		inputMember.setMemberPhone(phone);

		String email = memberEmail[0] + "@" + memberEmail[1] /* + memberEmail[2] */;
		inputMember.setMemberEmail(email);

		String birth = memberBirth[0] + "-" + memberBirth[1] + "-" + memberBirth[2];
		inputMember.setMemberBirth(birth);

		// 회원가입 추가항목
		// 결횬유무 기혼 선택시 가져올 데이터
		String weddingDate = memberWedding[0] + memberWedding[1] + memberWedding[2];
		inputAdd.setMemberWedding(weddingDate);
		
		String tel = memberTel[0]+ "-"  + memberTel[1]+ "-"  + memberTel[2];
		inputAdd.setMemberTel(tel);
		
		String address = memberAddress[0]+ ",," + memberAddress[1] +",,"+ memberAddress[2];
		inputAdd.setMemberAddress(address);
		

		
		
//		 기본항목 회원가입시
		int result = service.signUp(inputMember, inputAdd);

		String path = null;
		String message = null;

		if (result > 0) {
			path = "/";
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