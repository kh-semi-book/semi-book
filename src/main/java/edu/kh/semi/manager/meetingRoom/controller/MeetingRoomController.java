package edu.kh.semi.manager.meetingRoom.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.kh.semi.manager.meetingRoom.model.service.MeetingRoomService;
import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;

@Controller
public class MeetingRoomController {

	@Autowired
	private MeetingRoomService service;

//	단순 1개의 객실 조회
//	@GetMapping("/manager/meetingRoom")
//	public String selectMeetingRoom( Model model) {
//
//		MeetingRoom meeting = service.selectMeetingRoom();
//		
//		model.addAttribute("meeting", meeting);
//
//		 return "manager/meetingRoom/meetingRoom"; 
//	}
	
//	미팅룸 리스트 조회
	@GetMapping("/manager/meetingRoom")
	public String selectMeetingRoom(Model model, 
									@RequestParam(value="cp",required=false, defaultValue="1") int cp) {
		
		Map<String, Object> map = service.selectMeetingRoom(cp);
		
		model.addAttribute("map",map);
		
		return "manager/meetingRoom/meetingRoom";
	}

}
