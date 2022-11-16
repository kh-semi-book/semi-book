package edu.kh.semi.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@GetMapping("/")
	public String mainPage() {
		return "common/main";
	}
	
	@GetMapping("/member/login")
	public String loginPage() {
		return "member/login";
	}
	
	
	@GetMapping("/reservation/check")
	public String reservationCheckPage() {
		return "reservation/reservation1";
	}
	
	@GetMapping("/member/memberSignUp")
	public String signUpPage() {
		return "member/signUp1";
	}
	
	

}
