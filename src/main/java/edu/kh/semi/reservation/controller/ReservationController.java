package edu.kh.semi.reservation.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.kh.semi.reservation.model.service.ReservationService;

@Controller
public class ReservationController {
	
	@GetMapping("/reservation/reservationViewDetail")
	public String reservationViewDetail() {
		return "reservation/reservationViewDetail";
	}
	
	@GetMapping("/reservation/reservation1")
	public String reservation1() {
		return "reservation/reservation1";
	}
	
	@GetMapping("/reservation/reservation2")
	public String reservation2() {
		return "reservation/reservation2";
	}
	
	@GetMapping("/reservation/reservation3")
	public String reservation3() {
		return "reservation/reservation3";
	}
	
	@GetMapping("/reservation/reservation4")
	public String reservation4() {
		return "reservation/reservation4";
	}
	
	@PostMapping("/reservation/reservation5")
	public String reservation5() {
		return "reservation/reservation5";
	}
	
	@Autowired
	private ReservationService service;
	
	// 예약 조회 
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
