package edu.kh.semi.manager.meetingRoom.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.meetingRoom.model.service.MeetingRoomService;
import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;
import oracle.jdbc.proxy.annotation.Post;

@Controller
public class MeetingRoomController {

	@Autowired
	private MeetingRoomService service;

	

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

	// 예약 상세 페이지 보기
	@GetMapping("/manager/meetingRoom/meetingRoomDetail/{meetingBookNo}")
	public String meetingRoomDetail(@PathVariable(value="meetingBookNo") int meetingBookNo, Model model) {
		
		MeetingRoom meeting = service.meetingRoomDetail(meetingBookNo);
		
		model.addAttribute("meeting",meeting);
		
		return "/manager/meetingRoom/meetingRoomDetail";
	}
	
	// 이전 페이지로 돌아가기
	@GetMapping("/manager/meetingRoom/meetingRoom") 
	public String retrunMeetingRoom(@RequestHeader("referer") String referer) {
		
		return "redirect:/manager/meetingRoom/meetingRoom"; 
		
	}
	
	// 미팅룸 예약 문의하기 페이지 이동
		@GetMapping("/nav/meeting/meetingReservation")
		public String meetingReservation() {

			return "/nav/meeting/meetingReservation";
		}
		
	// 미팅룸 예약 문의하기 (Insert)

		@PostMapping("reservationInquiry")
		public String meetingBookAdd(MeetingRoom inputMeetingRoom, RedirectAttributes ra, 
									@RequestHeader("referer") String referer) {
			
			int result = service.meetingBookAdd(inputMeetingRoom);

			String path = null; 
			String message = null;
			
			if(result > 0) { // 성공 시
				path="/";
				message = "예약문의가 등록되었습니다.";
				
			} else {  // 실패 시
				path=referer;
				message = "예약문의가 실패했습니다. 다시 시도해주세요.";
				
				// 이전 페이지로 돌아갔을 때 입력했던 값을 같이 전달
				ra.addFlashAttribute("tempMeetingRoom",inputMeetingRoom);
			}
			
			ra.addFlashAttribute("message",message);
			
			
			return "redirect:"+path;
			
		}

}
