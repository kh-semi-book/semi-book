package edu.kh.semi.manager.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Event {
	
	private int eventNo;
	private String eventTitle;
	private String eventSub;
	private String eventTitleImg;
	private String eventConImg;
	private String eventStartDate;
	private String eventEndDate;
	private String eventDeleteFlag;
	
	

}
