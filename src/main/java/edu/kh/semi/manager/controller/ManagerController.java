package edu.kh.semi.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagerController {
	
	@GetMapping("manager/main")
	public String managerMainPage() {
		return "manager/common/search-book";
	}
	
	@GetMapping("manager/selectBook")
	public String managerSelectBook() {
		return "manager/common/select-book";
	}
	
	//----------------------------------------
	
	@GetMapping("manager/cmm")
	public String managerCmmPage() {
		return "manager/cmm/cmm";
	}
	//----------------------------------------
	
	@GetMapping("manager/meetingRoom")
	public String managerMeetingRoomPage() {
		return "manager/meetingRoom/meetingRoom";
	}
	
	//----------------------------------------
	
	@GetMapping("manager/promotion")
	public String managerPromotionPage() {
		return "manager/promotion/promotion";
	}
	
	
	
}
