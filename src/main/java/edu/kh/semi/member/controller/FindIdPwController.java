package edu.kh.semi.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.kh.semi.member.model.service.FindIdPwService;
import edu.kh.semi.member.model.vo.Member;

@Controller
public class FindIdPwController {
	
	@Autowired
	private FindIdPwService service;
	
	
	@GetMapping("/member/findIdPw")
	public String FindIdPw() {
	
		return "/member/find";
	}
	
	@PostMapping("/memeber/findId")
	@ResponseBody
	public String FindId(Member inputMember) {
		
		String result=service.findId(inputMember);
		
		return result;
		
	}
	
	

}
