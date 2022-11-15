package edu.kh.semi.specialoffer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/nav/specialOffer")
public class SpecialOfferController {
	
	@GetMapping("/roomPromotion/detail")
	public String roomPromotionDetail() {
		return "/nav/specialOffer/roomPromotion/roomPromotion";		
	}
	@GetMapping("/dining/detail")
	public String diningDetail() {
		return "/nav/specialOffer/dining/dining";		
	}
	@GetMapping("/event/detail")
	public String eventDetail() {
		return "/nav/specialOffer/event/event";		
	}

}
