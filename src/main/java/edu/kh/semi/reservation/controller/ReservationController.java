package edu.kh.semi.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReservationController {
	
	@GetMapping("/reservation/reservationViewDetail")
	public String reservationViewDetail() {
		return "reservation/reservationViewDetail";
	}

}
