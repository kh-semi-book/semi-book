package edu.kh.semi.manager.meetingRoom.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class MeetingRoom {
	
	private int meetingBookNo;         // 미팅룸 예약 번호 
	private String meetingDate;        // 미팅룸 예약 접수일 
	private String meetingBookDate;    // 미팅룸 예약일 
	private String meetingName;        // 미팅룸 상품명 
	private int meetingHeadCount;      // 미팅룸 인원수 
	private String meetingMenName;     // 미팅룸 예약자명
	private String meetingCancelFL;    // 미팅룸 취소여부
	private String meetingProcess;     // 미팅룸 진행상태
	private int meetingRoomNo;         // 미팅룸 번호 
	private String meetingMenEmail;    // 미팅룸 예약자 이메일
	private String meetingMenPhone;    // 미팅룸 예약자 전화번호
	private String meetingBookCompany; // 미팅룸 예약 업체명
	private String meetingBookContent; // 미팅룸 예약 내용

	
}
