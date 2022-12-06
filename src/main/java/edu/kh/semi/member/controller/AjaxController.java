package edu.kh.semi.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.kh.semi.member.model.service.AjaxService;

@Controller
public class AjaxController {

	@Autowired
	private AjaxService service;
	
	// 아이디 중복 검사
	@GetMapping("/idDupCheck")
	@ResponseBody
	public int idDupCheck(@RequestParam String memberId) {
		
//		System.out.println(memberId);
		int result = service.idDupCheck(memberId);
		
		return result;
	}
	
	
}
