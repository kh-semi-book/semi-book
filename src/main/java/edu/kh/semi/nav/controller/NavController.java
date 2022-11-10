package edu.kh.semi.nav.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavController {
	
	@RequestMapping(value="/nav/infinitiPool")
	public String infinitiPool() {
		return "/nav/infinitiPool/infinitiPool";
	}

}
