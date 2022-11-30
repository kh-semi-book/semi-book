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
	
	
//	@GetMapping("/reservation/reservationView")
//	public String reservationCheckPage() {
//		return "reservation/reservationView";
//	}
	
	@GetMapping("/member/signUp")
	public String signUpPage() {
		return "member/signUp1";
	}
	
	@GetMapping("/media")
	public String mediaLibrary() {
		return "common/header-top-media";
	}
	
	

}
