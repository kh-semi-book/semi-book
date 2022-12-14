package edu.kh.semi.manager.book.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.book.model.service.BookService;
import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Room;
import edu.kh.semi.manager.book.model.vo.SearchOption;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.vo.Option;

@Controller
public class BookController {
	
	
	
	@Autowired
	public BookService service;
	
	
	/** 예약 조회 
	 * @param model
	 * @param cp
	 * @param pm
	 * @return
	 */
	@GetMapping("/manager/selectBook")
	public String selectBook(
			Model model, 
			@RequestParam(value="cp", required=false, defaultValue="1") int cp,
			@RequestParam Map<String,Object> pm
			) {
	
		
		if(pm.get("searchOption")==null) {
			Map<String,Object> map=service.selectBook(cp);	
			model.addAttribute("map", map);
		}else {
			Map<String, Object> map=service.selectBook(pm,cp);
			model.addAttribute("map", map);
		}
		model.addAttribute("beforeSearch",pm);
		
		return "manager/book/select-book";
		
	}

	

	/** 예약에 맞는 방 조회 
	 * @param model
	 * @param bookNum
	 * @return
	 */
	@GetMapping("/manager/test")
	public String selectRoom(Model model,
		@RequestParam(value="bookNum") int bookNum) {
		
		Room inputRoom=service.searchRoom(bookNum); // 해당 예약번호의 룸타입, 전망타입 조회
		
		inputRoom.setCheckIn(inputRoom.getCheckIn().substring(0,10));
		
		System.out.println(inputRoom);
		
		List<Room> roomList=service.selectRoom(inputRoom);
		
		model.addAttribute("roomList",roomList);
		model.addAttribute("inputRoom",inputRoom);
		
		return "manager/book/SelectRoom";
	}
	


	/** 저장 클릭시 업데이트
	 * @param bookPerson
	 * @param referer
	 * @return
	 */
	@PostMapping("/manager/updateBook")
	public String updateBook(Book bookPerson) {
		
		System.out.println(bookPerson);
		
		int result=service.updateBook(bookPerson);

		return "redirect:selectBook";
			
		
	}
	
	

	// 예약 상세조회
	@GetMapping("/manager/bookViewDetail/{bookNo}")
	public String reservationViewDetail(@PathVariable(value="bookNo") int bookNo, Model model,
			                            @SessionAttribute(value = "loginMember", required = false) Member loginMember) {
		
		Book book = service.bookViewDetail(bookNo);
		
		int optionTotalPrice=0;
		for(Option o : book.getOptionList()) {
			optionTotalPrice+= Integer.parseInt(o.getOptionCount())*o.getOptionPrice();
		}
		
		model.addAttribute("book",book);
		model.addAttribute("optionTotalPrice", optionTotalPrice);
		
		return "manager/book/reservationViewDetail";
	}

}
