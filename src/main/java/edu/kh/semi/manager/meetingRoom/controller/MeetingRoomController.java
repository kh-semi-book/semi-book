package edu.kh.semi.manager.meetingRoom.controller;

import java.util.ArrayList;
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

import edu.kh.semi.manager.book.model.vo.Book;
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
		
		
		
		if(pm.get("searchOption")==null) {
			Map<String,Object> map = service.selectBookList(cp);			
			model.addAttribute("map", map);
		}else {
			Map<String, Object> map = service.selectBookList(pm,cp);
			model.addAttribute("map", map);
		}
		
		
		return "manager/meetingRoom/meetingRoom";
	}


	// 예약 상세 페이지 보기
	@GetMapping("/manager/meetingRoom/meetingRoomDetail/{meetingBookNo}")
	public String meetingRoomDetail(@PathVariable(value="meetingBookNo") int meetingBookNo, Model model) {
		
		MeetingRoom meeting = service.meetingRoomDetail(meetingBookNo);
		
		model.addAttribute("meeting",meeting);
		
		return "/manager/meetingRoom/meetingRoomDetail";
	}
	
	
	// 예약 상세보기 페이지 수정하기 페이지 이동 
	@GetMapping("/manager/meetingRoom/meetingRoomDetail/{meetingBookNo}/update")
		public String meetingRoomDetailUpdate(@PathVariable(value="meetingBookNo") int meetingBookNo, Model model) {
	
		model.addAttribute("meetingBookNo",meetingBookNo);
		
		return "/manager/meetingRoom/meetingRoomDetailUpdate";
	}
	
	
	
	// 예약 상세보기 페이지 수정하기 
	@PostMapping("/manager/meetingRoom/meetingRoomDetail/{meetingBookNo}/meetingRoomUpdate")
	public String meetingRoomDetailUpdate(MeetingRoom inputMeetingRoom, String[] meetingMenPhone, String[] meetingMenEmail,
										  @PathVariable(value="meetingBookNo") int meetingBookNo,
										  @RequestHeader("referer") String referer,
										  RedirectAttributes ra) {

		String phone = meetingMenPhone[0] + "-" + meetingMenPhone[1] + "-" + meetingMenPhone[2];
		inputMeetingRoom.setMeetingMenPhone(phone);

		String email = meetingMenEmail[0] + "@" + meetingMenEmail[1];
		inputMeetingRoom.setMeetingMenEmail(email);
		
		inputMeetingRoom.setMeetingBookNo(meetingBookNo);
		
		int result = service.meetingRoomDetailUpdate(inputMeetingRoom);
		
		String message = null; 
		
		if(result > 0) {
			message = "게시글이 수정되었습니다.";
		} else {
			message = "게시글이 수정 실패";
		}
		
		ra.addFlashAttribute("message",message);
		
		return "redirect:/manager/meetingRoom/meetingRoomDetail/"+ meetingBookNo;
		
	}
	
	
	// 미팅룸 예약 문의하기 페이지 이동
		@GetMapping("/nav/meeting/meetingReservation")
		public String meetingReservation(@RequestParam int RETY) {

			return "/nav/meeting/meetingReservation";
		}
		
		
	// 미팅룸 예약 문의하기 (Insert)

		@PostMapping("reservationInquiry")
		public String meetingBookAdd(MeetingRoom inputMeetingRoom, RedirectAttributes ra, 
									@RequestHeader("referer") String referer, String[] meetingMenPhone, 
									String[] meetingMenEmail, int meetingRoomNo) {
			
			String phone = meetingMenPhone[0] + "-" + meetingMenPhone[1] + "-" + meetingMenPhone[2];
			inputMeetingRoom.setMeetingMenPhone(phone);
			String email = meetingMenEmail[0] + "@" + meetingMenEmail[1];
			inputMeetingRoom.setMeetingMenEmail(email);
			
			inputMeetingRoom.setMeetingBookNo(meetingRoomNo);
			
			
			
			int result = service.meetingBookAdd(inputMeetingRoom);

			String path = null; 
			String message = null;
			
			if(result > 0) { // 성공 시
				path = "/";
				message = "예약문의가 등록되었습니다.";
				
			} else {  // 실패 시
				path = referer;
				message = "예약문의가 실패했습니다. 다시 시도해주세요.";
				
				// 이전 페이지로 돌아갔을 때 입력했던 값을 같이 전달
				ra.addFlashAttribute("tempMeetingRoom",inputMeetingRoom);
			}
			
			ra.addFlashAttribute("message",message);
			
			
			return "redirect:"+path;
			
		}
		
	// 저장 클릭시 업데이트 
	@PostMapping("/processUpdate")
	public String processUpdate(MeetingRoom meetingRoom) {
		
		int result = service.processUpdate(meetingRoom);

		return "redirect:/manager/meetingRoom";
			
		
	}

}
