package edu.kh.semi.member.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@PostMapping("/member/findId")
	@ResponseBody
	public String FindId(Member input) {
		
	
		String result=service.findId(input);
		
		return result;
		
	}
	
	@PostMapping("/member/findPw")
	@ResponseBody
	public int FindPw(Member input) {
		
		
		int result=service.findPw(input);
		
		return result;
		
	}
	
	

}
