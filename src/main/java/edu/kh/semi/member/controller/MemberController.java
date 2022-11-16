package edu.kh.semi.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.kh.semi.member.model.service.MemberService;
import edu.kh.semi.member.model.vo.Member;

@Controller
@SessionAttributes({"loginMember"})
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/member/view")
	public String view(Model model, @RequestHeader(value="referer") String referer) {
		
		Member loginMember = service.view();
		String path="";
		
		if(loginMember!=null) {
			path="redirect:/";
			model.addAttribute("loginMember", loginMember);
		} else {
			path="/common/header";
		}
		
		
		return path;
	}
	
	
	@GetMapping("/member/signUp2")
	public String signUp2() {
		return "/member/signUp2";
	}
	

}
