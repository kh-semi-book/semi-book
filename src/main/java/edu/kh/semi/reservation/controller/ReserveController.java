package edu.kh.semi.reservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.reservation.model.service.ReserveService;
import edu.kh.semi.reservation.model.vo.Reserve;

@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService service;

	
	@PostMapping("/reservation/reservation2")
	public String gotoReserve2(Reserve reserve, Model model) {
		
		// reservation1에서 받은 값으로 promotion 조회해야함
		
		
		String checkIn=reserve.getCheckInInput().substring(0,10);
		String checkOut=reserve.getCheckOutInput().substring(0,10);
				
		reserve.setCheckInInput(checkIn);
		reserve.setCheckOutInput(checkOut);
		
		
		List<Promotion> promotion=service.selectPromotion(reserve);
		
		
		
		System.out.println(promotion);
		
		
		model.addAttribute("reserve", reserve);
		
		
		
		return "/reservation/reservation2";
	}
}
