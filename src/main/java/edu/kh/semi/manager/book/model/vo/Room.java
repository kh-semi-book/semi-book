package edu.kh.semi.manager.book.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Room {
	private int bookNo;
	private int roomNum;
	private int roomViewNo;
	private int roomTypeNo;
	private int bedTypeNo;
	private String roomViewName;
	private String bedTypeName;
	private String roomName;
	private String checkIn;
	private String checkOut;
}
