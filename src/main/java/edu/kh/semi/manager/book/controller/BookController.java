package edu.kh.semi.manager.book.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.book.model.service.BookService;
import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Room;
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
		
		
		return "manager/book/select-book";
		
	}

	
	@GetMapping("/manager/test")
	public String selectRoom(Model model,
		@RequestParam(value="bookNum") int bookNum) {
		
		Room inputRoom=service.searchRoom(bookNum); // 해당 예약번호의 룸타입, 전망타입 조회
		inputRoom.setBookNo(bookNum);
		System.out.println(inputRoom);
		
		List<Room> roomList=service.selectRoom(inputRoom);
		
		model.addAttribute(roomList);
		model.addAttribute(inputRoom);
		model.addAttribute(bookNum);
		
		return "manager/book/SelectRoom";
	}
	

	@PostMapping("/manager/updateBook")
	public int updateBook(Book bookPerson) {
		
		System.out.println(bookPerson);
		
		return service.updateBook(bookPerson);
	}

}
