package edu.kh.semi.reservation.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.service.ReserveService;
import edu.kh.semi.reservation.model.vo.Guest;
import edu.kh.semi.reservation.model.vo.NonMember;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

@Controller
@SessionAttributes({ "loginMember", "message" })
public class ReserveController {
	
	@Autowired
	private ReserveService service;

	// 1 -> 2
	@PostMapping("/reservation/reservation2")
	public String gotoReserve2(Reserve reserve, Model model) {
		
		// reservation1에서 받은 값으로 promotion 조회해야함
		
		
		String originCheckIn=reserve.getCheckInInput();
		String originCheckOut=reserve.getCheckOutInput();
		
		String checkIn=reserve.getCheckInInput().substring(0,10);
		String checkOut=reserve.getCheckOutInput().substring(0,10);
				
		reserve.setCheckInInput(checkIn);
		reserve.setCheckOutInput(checkOut);
		
		
		List<Promotion> promotionList=service.selectPromotion(reserve);
		// 프로모션 조회할 때 프로모션에 해당하는방도 같이 세팅해서 넘어가야함
		
		
		
		System.out.println(promotionList);
		
		reserve.setCheckInInput(originCheckIn);
		reserve.setCheckOutInput(originCheckOut);
		
		System.out.println(reserve);
		
		model.addAttribute("reserve", reserve);
		model.addAttribute("promotionList", promotionList);
		
	
		// 프로모션의 개수를 구해서 그 개수만큼 반복하면서 프로모션 넘버에 따른 방 타입을 String 배열로 넣어주자 
		
		
		return "/reservation/reservation2";
	}
	
	// 2->3
	@GetMapping("/reservation/reservation3")
	public String gotoReserve3(Reserve reserve,Model model, HttpSession session,String side) {
		
		
		System.out.println(side);
		System.out.println(reserve);
		List<Option> optionList=service.selectOption();
		
		String originCheckIn=reserve.getCheckInInput();
		String originCheckOut=reserve.getCheckOutInput();
		
		String checkIn=reserve.getCheckInInput().substring(0,10);
		String checkOut=reserve.getCheckOutInput().substring(0,10);
				
		reserve.setCheckInInput(originCheckIn);
		reserve.setCheckOutInput(originCheckOut);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-d");

		LocalDate startDate = LocalDate.parse(checkIn, formatter);
		LocalDate endDate = LocalDate.parse(checkOut, formatter);
		
		List<LocalDate> dateList=getDatesBetweenTwoDates(startDate, endDate);
		
		model.addAttribute("optionList",optionList);
		model.addAttribute("dateList",dateList);
		model.addAttribute("reserve",reserve);
		
		
		
		return "/reservation/reservation3";
	}
	
	// 3->4
	@PostMapping("/reservation/reservation4")
	public String reservation4(@SessionAttribute(value="loginMember",required = false) Member loginMember
			, Reserve reserve,Model model, String inputEmail, String inputTel, String inputName, HttpSession session,String side) {

		if(session.getAttribute("side") == null)
			session.setAttribute("side", side);
		
		System.out.println(side);
	
		NonMember nonMember=new NonMember();
		
		nonMember.setNonMemberName(inputName);
		nonMember.setNonMemberPhone(inputTel);
		nonMember.setNonMemberEmail(inputEmail);
		
		System.out.println(nonMember);
		
		String checkIn=reserve.getCheckInInput().substring(0,10);
		String checkOut=reserve.getCheckOutInput().substring(0,10);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-d");

		LocalDate startDate = LocalDate.parse(checkIn, formatter);
		LocalDate endDate = LocalDate.parse(checkOut, formatter);
		
		List<LocalDate> dateList=getDatesBetweenTwoDates(startDate, endDate);
		List<Option> optionList=service.selectOption();
		
		
		model.addAttribute("optionList",optionList);
		model.addAttribute("dateList",dateList);
		model.addAttribute("reserve",reserve);
		model.addAttribute("nonMember",nonMember);
		
		return "reservation/reservation4";
	}
	
	
	
	@PostMapping("/reservation/reservation5")
	public String reservation5(@SessionAttribute(value="loginMember",required = false) Member loginMember
			,  Reserve reserve,Model model, Guest inputGuest, String optionSet,NonMember nonMember
			) { 
		
		
		System.out.println(nonMember);
		
		String optionList[]=optionSet.split(",");
		
		reserve.setCheckInInput(reserve.getCheckInInput().substring(0,10));
		reserve.setCheckOutInput(reserve.getCheckOutInput().substring(0,10));
		
		int bookNo = service.reservation4(loginMember,reserve,inputGuest,optionList,nonMember);
//		int result = service.reservation4_nonMember(loginMember,reserve,inputGuest,optionList,nonMember);
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(bookNo>0 ) {
			map.put("bookNo", bookNo);
			if(loginMember!=null) {
				map.put("memberEmail", loginMember.getMemberEmail());
			} else {
				map.put("memberEmail", nonMember.getNonMemberEmail());
				model.addAttribute("bookNo", bookNo);
			}
			bookNo = service.sendBookNo(map);
		}
		
		return "reservation/reservation5";
		
	}
	
	
	@GetMapping("/reservation/reservationLogin")
	public String reservationLogin(Reserve reserve,HttpSession session,String side) {
		
		session.setAttribute("side", side);
		return "/reservation/reservationLogin";
	}	

	
	
	@PostMapping("/reservation/reservationLogin")
	public String reservationLogin(Reserve reserve, Member inputMember, Model model
			,@RequestHeader(value = "referer") String referer,RedirectAttributes ra) {
		
	
		
		System.out.println(reserve);
		
		Member loginMember = service.login(inputMember);
		String path=null;

		if (loginMember != null) {
			model.addAttribute("loginMember", loginMember);
			path="reservation/reservation4";
		} else {
			path = "redirect:/"+referer; // 이전페이지로 이동이 안됨
			ra.addFlashAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
		}
		return path;
	}
	
	
	
	public static List<LocalDate> getDatesBetweenTwoDates(LocalDate startDate, LocalDate endDate) {
		int numOfDaysBetween = (int) ChronoUnit.DAYS.between(startDate, endDate);
		return IntStream.iterate(0, i -> i + 1)
        	.limit(numOfDaysBetween)
        	.mapToObj(i -> startDate.plusDays(i))
		.collect(Collectors.toList());
	}
	
	
	
	
}
