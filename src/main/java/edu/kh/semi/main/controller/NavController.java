package edu.kh.semi.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavController {
	
	@RequestMapping(value="/nav/infinitiPool")
	public String infinitiPool() {
		return "/nav/infinitiPool/infinitiPool";
	}
	
	@RequestMapping(value="/nav/specialOffer")
	public String specialOffer() {
		return "/nav/specialOffer/roomPromotion/roomPromotionMain";
	}

}
