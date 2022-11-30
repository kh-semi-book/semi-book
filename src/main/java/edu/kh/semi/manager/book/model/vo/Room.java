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
	private String roomViewName;
	private String roomName;
}
