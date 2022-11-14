package edu.kh.semi.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/nav")
public class NavController {
	
	@GetMapping("/about")
	public String about() {
		return "/nav/about/about-hotel";
	}
	
	@GetMapping("/specialOffer/roompromotion")
	public String specialOffer() {
		return "/nav/specialOffer/roomPromotion/roomPromotionMain";
	}
	
	
	@GetMapping("/rooms")
	public String rooms() {
		return "/nav/rooms/rooms";
	}
	
	@GetMapping("/dining/panorama")
	public String dining() {
		return "/nav/dining/dining_panorama";
	}
	
	@GetMapping("/infinitiPool")
	public String infinitiPool() {
		return "/nav/infinitiPool/infinitiPool";
	}
	
	@GetMapping("/meeting/symphony")
	public String meeting() {
		return "/nav/meeting/meeting(symphony)";
	}
	@GetMapping("/facilities/kids")
	public String facilities() {
		return "/nav/facilities/facilities(kids)";
	}
	@GetMapping("/spa")
	public String spa() {
		return "/nav/spa";
	}
	

}
