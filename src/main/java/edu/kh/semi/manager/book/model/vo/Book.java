package edu.kh.semi.manager.book.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Book {

	private int bookNo;
	private String bookDate;
	private String checkIn;
	private String checkOut;
	private int roomProcess;
	private String bookMemberNo;
	private String bookMemberName;
	private String bookGuestNo;
	private String bookGuestName;
	private int bookRoomNum;
	private int bookPrice;
	private String bookPromotion;
	private int bookHeadCount;
}
