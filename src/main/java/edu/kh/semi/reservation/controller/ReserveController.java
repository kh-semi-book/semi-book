package edu.kh.semi.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import edu.kh.semi.reservation.model.vo.Reserve;

@Controller
public class ReserveController {

	
	@PostMapping("/reservation/reservation2")
	public String gotoReserve2(Reserve reserve, Model model) {
		
		// reservation1에서 받은 값으로 promotion 조회해야함
		
		
		
		model.addAttribute(reserve);
		
		
		
		return "/reservation/reservation2";
	}
}
