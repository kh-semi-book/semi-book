package edu.kh.semi.nav.cmm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.nav.cmm.model.service.CMMService;

@Controller
public class CMMController {
	
	@Autowired
	private CMMService service;
	
	@GetMapping("/nav/about/cmmContent/{cmmNo}")
	public String cmmContent(@PathVariable("cmmNo") int cmmNo, Model model, RedirectAttributes ra) {
		
		CMM cmm =service.cmmContent(cmmNo); 
		
		if (cmm != null) {
			model.addAttribute("cmm", cmm);
			return "/nav/about/aboutCmmContent";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/nav/about/aboutCmm";
		}
	}

}
