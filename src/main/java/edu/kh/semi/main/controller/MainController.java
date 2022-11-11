package edu.kh.semi.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String mainPage() {
		return "common/main";
	}
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public String loginPage() {
		return "member/login";
	}
	@RequestMapping(value="/reservation/check", method=RequestMethod.GET)
	public String reservationCheckPage() {
		return "reservation/reservationSimple";
	}
	@RequestMapping(value="/member/signUp", method=RequestMethod.GET)
	public String signUpPage() {
		return "member/memberSignUp";
	}
	
	

}
