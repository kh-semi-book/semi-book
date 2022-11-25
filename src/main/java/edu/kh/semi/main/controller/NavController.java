package edu.kh.semi.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/nav")
public class NavController {
	
	@GetMapping("/about")
	public String about() {
		return "/nav/about/aboutHotel";
	}
	
	@GetMapping("/about/contact")
	public String aboutContact() {
		return "/nav/about/aboutContact";
	}
	
	@GetMapping("/about/cmm")
	public String aboutCmm() {
		return "/nav/about/aboutCmm";
	}
	
	@GetMapping("/about/cmmContent")
	public String aboutCmmContent() {
		return "/nav/about/aboutCmmContent";
	}
	
	//------------------------------------------

	
	@GetMapping("/specialOffer/roomPromotion")
	public String specialOffer() {
		return "/nav/specialOffer/roomPromotion/roomPromotionMain";
	}
	
	@GetMapping("/specialOffer/dining")
	public String specialOfferDining() {
		return "/nav/specialOffer/dining/diningMain";
	}
	@GetMapping("/specialOffer/event")
	public String specialOfferEvent() {
		return "/nav/specialOffer/event/eventMain";
	}
	
	//------------------------------------------

	
	
	@GetMapping("/rooms")
	public String rooms() {
		return "/nav/rooms/rooms";
	}
	
	//------------------------------------------

	
	@GetMapping("/dining/panorama")
	public String dining() {
		return "/nav/dining/diningPanorama";
	}
	@GetMapping("/dining/beyond")
	public String diningBeyond() {
		return "/nav/dining/diningBeyond";
	}
	@GetMapping("/dining/chichi")
	public String diningChichi() {
		return "/nav/dining/diningChichi";
	}
	
	//------------------------------------------

	
	
	@GetMapping("/infinitiPool")
	public String infinitiPool() {
		return "/nav/infinitiPool/infinitiPool";
	}
	
	//------------------------------------------

	
	@GetMapping("/meeting/symphony")
	public String meeting() {
		return "/nav/meeting/meetingSymphony";
	}
	@GetMapping("/meeting/harmony")
	public String meetingHarmony() {
		return "/nav/meeting/meetingHarmony";
	}
	@GetMapping("/meeting/opus")
	public String meetingOpus() {
		// return "/nav/meeting/meetingOpus";
		return "/nav/meeting/meetingReservation";
	}
	
	//------------------------------------------

	@GetMapping("/facilities/kids")
	public String facilities() {
//		return "/nav/facilities/facilitiesKids";
		return "/nav/facilities/facilitiesFitness";
//		return "/nav/facilities/facilitiesTrail";
	}
	@GetMapping("/facilities/fitness")
	public String facilitiesFitness() {
		return "/nav/facilities/facilitiesFitness";
	}
	@GetMapping("/facilities/trail")
	public String facilitiesTrail() {
		return "/nav/facilities/facilitiesTrail";
	}
	
	//------------------------------------------

	@GetMapping("/spa")
	public String spa() {
		return "/nav/spa/spa";
	}
	

}
