package edu.kh.semi.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ManagerController {

	@GetMapping("/manager/main")
	public String managerMainPage() {
		return "manager/common/select-book";
	}

	
	
}
