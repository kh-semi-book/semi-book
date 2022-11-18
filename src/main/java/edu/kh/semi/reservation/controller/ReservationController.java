package edu.kh.semi.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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

}
