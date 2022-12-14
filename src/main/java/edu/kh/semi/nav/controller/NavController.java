package edu.kh.semi.nav.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.nav.model.service.NavService;

@Controller
@RequestMapping("/nav")
public class NavController {
	
	@Autowired
	private NavService service;
	
	@GetMapping("/about")
	public String about() {
		return "/nav/about/aboutHotel";
	}
	
	@GetMapping("/about/contact")
	public String aboutContact() {
		return "/nav/about/aboutContact";
	}
	
	@GetMapping("/about/cmm")
	public String aboutCmm(Model model) {
		
		List<CMM> cmmList = service.selectCmmList();

		model.addAttribute("cmmList", cmmList);

		return "/nav/about/aboutCmm";
	}
	
	//------------------------------------------

	
	
	
	//------------------------------------------

	
	
	@GetMapping("/rooms")
	public String rooms() {
		return "/nav/rooms/rooms";
	}
	
	@GetMapping("/rooms/roomDeluxe")
	public String roomDeluxe() {
		return "nav/rooms/roomDeluxe";
	}
	
	@GetMapping("/rooms/roomCornerDeluxe")
	public String roomCornerDeluxe() {
		return "nav/rooms/roomCornerDeluxe";
	}
	@GetMapping("/rooms/roomFamilySuite")
	public String roomFamilySuite() {
		return "nav/rooms/roomFamilySuite";
	}
	@GetMapping("/rooms/roomYeraeSuite")
	public String roomYeraeSuite() {
		return "nav/rooms/roomYeraeSuite";
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
		 return "/nav/meeting/meetingOpus";
	}
	
	//------------------------------------------

	@GetMapping("/facilities/kids")
	public String facilities() {
		return "/nav/facilities/facilitiesKids";
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
