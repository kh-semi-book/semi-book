package edu.kh.semi.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ReserveController {

	
	@PostMapping("/")
	public String Reserve(RedirectAttributes ra) {
	
	return "reservation/reservation2";
	}
}
