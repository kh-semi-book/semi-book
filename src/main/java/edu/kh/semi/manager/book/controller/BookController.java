package edu.kh.semi.manager.book.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.kh.semi.manager.book.model.service.BookService;

@Controller
public class BookController {
	
	
	
	@Autowired
	public BookService service;
	
	
	@GetMapping("/manager/selectBook")
	public String selectBook(Model model, 
			@RequestParam(value="cp", required=false, defaultValue="1") int cp
			) {
		
		Map<String,Object> map=service.selectBook(cp);
		
		model.addAttribute("map", map);
		
		return "manager/common/select-book";
		
	}
	

}
