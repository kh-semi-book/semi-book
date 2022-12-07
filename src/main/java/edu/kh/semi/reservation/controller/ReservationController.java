package edu.kh.semi.reservation.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.service.ReservationService;
import edu.kh.semi.reservation.model.vo.Option;

@Controller
public class ReservationController {
	
	
	
	@GetMapping("/reservation/reservation1")
	public String reservation1() {
		return "reservation/reservation1";
	}
	
	@GetMapping("/reservation/reservation2")
	public String reservation2() {
		return "reservation/reservation2";
	}
	
//	@GetMapping("/reservation/reservation3")
//	public String reservation3() {
//		return "reservation/reservation3";
//	}
	
//	@GetMapping("/reservation/reservation4")
//	public String reservation4() {
//		return "reservation/reservation4";
//	}
	
//	@PostMapping("/reservation/reservation5")
//	public String reservation5() {
//		return "reservation/reservation5";
//	}
//	
	@Autowired
	private ReservationService service;
	
	// 예약 조회 
	@GetMapping("/reservation/reservationView")
	public String reservationCheckPage(@SessionAttribute(value = "loginMember", required = false) Member loginMember,
			Model model, @RequestParam(value="nonMemberName", required = false) String nonMemberName,
			@RequestParam(value="nonMemberBookNo", required = false) String nonMemberBookNo,
			@RequestParam(value="nonMemberPhone", required = false) String nonMemberPhone) {
		
		List<Book> bookList = new ArrayList<Book>();
		
		if(loginMember == null) {
			
			Map<String, Object> nonMemberMap = new HashMap<String, Object>();
			
			nonMemberMap.put("nonMemberName", nonMemberMap);
			nonMemberMap.put("nonMemberBookNo", nonMemberBookNo);
			nonMemberMap.put("nonMemberPhone", nonMemberPhone);
			
			bookList = service.reservationView(nonMemberMap);
			
			return "reservation/reservationView";
		} else {
			bookList = service.reservationView(loginMember);
		}
		
		model.addAttribute("bookList", bookList);
		return "reservation/reservationView";
	}
	
	// 예약 상세조회
	@GetMapping("/reservation/reservationViewDetail/{bookNo}")
	public String reservationViewDetail(@PathVariable(value="bookNo") int bookNo, Model model,
			                            @SessionAttribute(value = "loginMember", required = false) Member loginMember) {
		
		Book book = service.reservationViewDetail(bookNo);
		
		int optionTotalPrice=0;
		for(Option o : book.getOptionList()) {
			optionTotalPrice+= Integer.parseInt(o.getOptionCount())*o.getOptionPrice();
		}
		
		model.addAttribute("book",book);
		model.addAttribute("optionTotalPrice", optionTotalPrice);
		
		return "reservation/reservationViewDetail";
	}

}
