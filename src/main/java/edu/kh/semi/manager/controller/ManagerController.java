package edu.kh.semi.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.support.SessionStatus;


@Controller
public class ManagerController {

	@GetMapping("/manager/main")
	public String managerMain() {
		return "redirect:/manager/selectBook";
	}
	
	
}
