package edu.kh.semi.specialoffer.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Event {
	
	private int eventNo;
	private String eventTitle;
	private String eventSub;
	private String eventTitleImg;
	private String eventConImg;
	private String eventStartDate;
	private String eventEndDate;

}
