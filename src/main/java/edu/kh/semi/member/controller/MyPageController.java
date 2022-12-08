package edu.kh.semi.member.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.member.model.service.MyPageService;
import edu.kh.semi.member.model.vo.Add;
import edu.kh.semi.member.model.vo.Member;

@RequestMapping("/member")
@SessionAttributes("loginMember") // 탈퇴 성공시 로그아웃에 사용
@Controller
public class MyPageController {
	
	@Autowired
	private MyPageService service;         
	
	@GetMapping("/memberEdit")
	public String myPage(@SessionAttribute("loginMember") Member loginMember, Model model){
		
		Member member = service.selectMember(loginMember.getMemberNo());
		Add add = service.selectAdd(loginMember.getMemberNo());
		
		model.addAttribute("member", member);
		model.addAttribute("add", add);
		
		return "member/memberEdit";
	}
	
	// 내 정보 페이지 수정
	@PostMapping("/memberEdit")
	public String updateMember(Member inputMember, String[] memberAddress, String[] memberPhone, String[] memberEmail,
							   String[] memberWedding, String[] memberTel, 
							   @SessionAttribute("loginMember") Member loginMember, Add add, Add inputAdd, 
							   RedirectAttributes ra, String newPw) {
		
		// 로그인된 회원번호를 inputMember에 넣기 
		inputMember.setMemberNo(loginMember.getMemberNo());
		inputAdd.setMemberNo(loginMember.getMemberNo());
		
		String phone = memberPhone[0]+memberPhone[1]+memberPhone[2];
		inputMember.setMemberPhone(phone);
		
		String email = memberEmail[0]+ "@" +memberEmail[1];
		inputMember.setMemberEmail(email);
		
		String  weddingDate = null;
		if(memberWedding != null) {
			
			weddingDate = memberWedding[0] + "-" +  memberWedding[1] + "-" +  memberWedding[2];
			if(weddingDate.equals("--")) weddingDate = null;
		}
		inputAdd.setMemberWedding(weddingDate);
		
		String tel = memberTel[0]+"-"+memberTel[1]+"-"+memberTel[2];
		if(tel.equals("--")) tel = null;
		inputAdd.setMemberTel(tel);
		
		String address = memberAddress[0]+",,"+ memberAddress[1]+",,"+memberAddress[2];
		if(address.equals(",,,,")) address = null;
		inputAdd.setMemberAddress(address);
		
		
		int result = service.updateMember(inputMember, loginMember, newPw, add, inputAdd);
		
		String message = null;
		
		if(result>0) {
			
			message = "회원 정보가 수정되었습니다.";
			
			loginMember.setMemberPw(inputMember.getMemberPw());
			loginMember.setMemberPhone(inputMember.getMemberPhone());
			loginMember.setMemberEmail(inputMember.getMemberEmail());
			loginMember.setMemberGender(inputMember.getMemberGender());
			loginMember.setEmailFlag(inputMember.getEmailFlag());
			loginMember.setSmsFlag(inputMember.getSmsFlag());
			loginMember.setMemberBirth(inputMember.getMemberBirth());
		
		}
		else { 
			message = "회원 정보 수정이 실패했습니다.";
		}
		
		ra.addFlashAttribute("message",message);
		
		return "redirect:memberEdit";
		
	}
	
	
	
	// 회원 탈퇴 서비스 페이지 이동 
	@GetMapping("/memeberDelete")
	public String memberDeletePage() {
		
		return "member/memberSecession";
	}
	
	
	// 회원 탈퇴 서비스 
	@PostMapping("/memeberDelete")
	public String memberDelete(@SessionAttribute("loginMember") Member loginMember, Member inputMember,
								SessionStatus status, RedirectAttributes ra, @RequestHeader("referer") String referer) {
		
		
		int memberNo = loginMember.getMemberNo();
		
		int result = service.memberDelete(memberNo ,inputMember);
		
		String path = null;
		String message = null;
		
			
		if(result>0) {
			
			message = "회원 탈퇴되었습니다.";
			path = "/";
			status.setComplete(); 
			
		} else {
			
			message = "회원 탈퇴 실패했습니다.";
			path ="memeberDelete";
		}
		
		ra.addFlashAttribute("message",message);
			
		return "redirect:"+path;
	}
	
	
}
