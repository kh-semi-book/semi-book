package edu.kh.semi.manager.meetingRoom.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class MeetingRoom {
	
	private int meetingRoomBookNo;
	private String meetingRoomDate;
	private String meetingRoomName; // MEETING_ROOM_NAME
	private int meetingHeadCount; // MEETING_HEADCOUNT
	private String meetingRoomMenName;
	private String meetingRoomCancelFL;
	private String meetingRoomProcess;
	private int roomNo;
	
	
	
}
