package edu.kh.semi.nav.specialOffer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.nav.specialOffer.model.service.SpecialOfferService;
import edu.kh.semi.nav.specialOffer.model.vo.Dining;
import edu.kh.semi.nav.specialOffer.model.vo.Event;

@Controller
@RequestMapping("/nav/specialOffer")
public class SpecialOfferController {

	@Autowired
	private SpecialOfferService service;

	@GetMapping("/roomPromotion")
	public String specialOffer(Model model) {

		List<Promotion> promotionList = service.selectPromotionList();

		model.addAttribute("promotionList", promotionList);

		return "/nav/specialOffer/roomPromotion/roomPromotionMain";
	}

	@GetMapping("/roomPromotion/detail/{promotionNo}")
	public String roomPromotionDetail(@PathVariable(value = "promotionNo") int promotionNo, Model model) {

		Promotion promotion = service.roomPromotionDetail(promotionNo);
		model.addAttribute("promotion", promotion);

		return "/nav/specialOffer/roomPromotion/roomPromotion";
	}

	
	
	
	
	
	@GetMapping("/dining")
	public String specialOfferDining(Model model) {

		List<Dining> diningList = service.selectDiningList();

		model.addAttribute("diningList", diningList);

		return "/nav/specialOffer/dining/diningMain";
	}

	@GetMapping("/dining/detail/{diningNo}")
	public String diningDetail(@PathVariable(value = "diningNo") int diningNo, Model model) {

		Dining dining = service.dininigDetail(diningNo);
		model.addAttribute("dining", dining);

		return "/nav/specialOffer/dining/dining";
	}
	
	
	
	
	
	
	

	@GetMapping("/event")
	public String specialOfferEvent(Model model) {

		List<Event> eventList = service.selectEventList();

		model.addAttribute("eventList", eventList);

		return "/nav/specialOffer/event/eventMain";
	}

	@GetMapping("/event/detail/{eventNo}")
	public String eventDetail(@PathVariable(value = "eventNo") int eventNo, Model model) {
		
		Event event = service.eventDetail(eventNo);
		model.addAttribute("event", event);
		
		return "/nav/specialOffer/event/event";
	}

}
