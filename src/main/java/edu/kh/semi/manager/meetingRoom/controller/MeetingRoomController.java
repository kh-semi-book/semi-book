package edu.kh.semi.manager.meetingRoom.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

import edu.kh.semi.manager.meetingRoom.model.service.MeetingRoomService;
import oracle.jdbc.proxy.annotation.Post;

@Controller
public class MeetingRoomController {

	@Autowired
	private MeetingRoomService service;

	// 예약 상세보기
	@GetMapping("/manager/meetingRoom/meetingRoomDetail")
	public String meetingRoomDetail() {

		return "/manager/meetingRoom/meetingRoomDetail";
	}

	// 미팅룸 예약하기
	@GetMapping("/nav/meeting/meetingReservation")
	public String meetingReservation() {

		return "/nav/meeting/meetingReservation";
	}

	// 이전 페이지로 돌아가기
	 @GetMapping("/manager/meetingRoom/meetingRoom") 
	 public String retrunMeetingRoom(@RequestHeader("referer") String referer) {
	  
		 return "redirect:/manager/meetingRoom/meetingRoom"; 
	  
	 }
	

	//  예약 리스트를 조회 + 페이징 처리 
	@GetMapping("/manager/meetingRoom")
	public String selectMeetingRoomList(
			Model model, 
			@RequestParam(value="cp",required=false, defaultValue="1") int cp,
			@RequestParam Map<String,Object> pm) {
		
		System.out.println(pm.get("searchOption"));
		System.out.println(pm);
		
		
		if(pm.get("searchOption")==null) {
			Map<String,Object> map = service.selectBookList(cp);			
			model.addAttribute("map", map);
		}else {
			Map<String, Object> map = service.selectBookList(pm,cp);
			model.addAttribute("map", map);
		}
		
		
		return "manager/meetingRoom/meetingRoom";
	}

	
	// 진행상태 변경 
	@PostMapping("/manager/meetingRoom")
	public String changeProcess(int input) {

		int result = service.changeProcess(input);
		
		return "redirect:manager/meetingRoom/meetingRoom";
	}

	

}
