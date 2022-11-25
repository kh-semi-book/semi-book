package edu.kh.semi.manager.book.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.book.model.service.BookService;
import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.SearchOption;

@Controller
public class BookController {
	
	
	
	@Autowired
	public BookService service;
	
	
	@GetMapping("/manager/selectBook")
	public String selectBook(
			Model model, 
			@RequestParam(value="cp", required=false, defaultValue="1") int cp,
			@RequestParam Map<String,Object> pm
			) {
		
		System.out.println(pm.get("searchOption"));
		
		if(pm.get("searchOption")==null) {
			Map<String,Object> map=service.selectBook(cp);			
			model.addAttribute("map", map);
		}else {
			Map<String, Object> map=service.selectBook(pm,cp);
			model.addAttribute("map", map);
		}
		
		
		return "manager/common/select-book";
		
	}


}
