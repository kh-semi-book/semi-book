package edu.kh.semi.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.kh.semi.main.model.service.mainService;
import edu.kh.semi.manager.board.model.vo.Dining;
import edu.kh.semi.manager.board.model.vo.Promotion;

@Controller
public class MainController {
	
	@Autowired
	private mainService service;
	
	@GetMapping("/")
	public String mainPage(Model model) {
		
		List<Promotion> promotionList=service.selectPromotion();
		List<Dining> diningList=service.selectDining();
		
		
		model.addAttribute("diningList",diningList);
		model.addAttribute("promotionList",promotionList);
		
		return "common/main";
	}
	
	@GetMapping("/member/login")
	public String loginPage() {
		return "member/login";
	}
	
	
	@GetMapping("/member/reservationLogin")
	public String reservaionLoginPage() {
		return "reservation/login";
	}
	
	
	
//	@GetMapping("/reservation/reservationView")
//	public String reservationCheckPage() {
//		return "/reservation/reservationView";
//	}
//	
	@GetMapping("/member/signUp")
	public String signUpPage() {
		return "member/signUp1";
	}
	
	@GetMapping("/media")
	public String mediaLibrary() {
		return "common/header-top-media";
	}

	
	
	

}
