package edu.kh.semi.member.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.kh.semi.member.model.service.ReservationService2;

@Controller
public class ReservationController2 {

	@Autowired
	private ReservationService2 service;
	
	
	@GetMapping("/reservation/reservationView")
	public String reservationCheckPage(Model model,
			@RequestParam(value="cp",required=false, defaultValue="1") int cp,
			@RequestParam Map<String,Object> pm) {
		
		Map<String, Object> map = service.selectBook(cp);
		model.addAttribute("map",map);
		
		System.out.println(map);
		
		return "reservation/reservationView";
	}
	
	
}
