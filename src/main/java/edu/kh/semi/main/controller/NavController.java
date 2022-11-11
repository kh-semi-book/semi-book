package edu.kh.semi.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavController {
	
	@RequestMapping(value="/nav/about")
	public String about() {
		return "/nav/about/about-hotel";
	}
	
	@RequestMapping(value="/nav/specialOffer")
	public String specialOffer() {
		return "/nav/specialOffer/roomPromotion/roomPromotionMain";
	}
	
	
	@RequestMapping(value="/nav/rooms")
	public String rooms() {
		return "";
	}
	
	@RequestMapping(value="/nav/dining")
	public String dining() {
		return "";
	}
	
	@RequestMapping(value="/nav/infinitiPool")
	public String infinitiPool() {
		return "/nav/infinitiPool/infinitiPool";
	}
	
	@RequestMapping(value="/nav/meeting")
	public String meeting() {
		return "";
	}
	@RequestMapping(value="/nav/facilities")
	public String facilities() {
		return "/nav/facilities/facilities(fitness)";
	}
	@RequestMapping(value="/nav/spa")
	public String spa() {
		return "/nav/spa/Spa";
	}
	

}
