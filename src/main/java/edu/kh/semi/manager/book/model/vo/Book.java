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
	private int adultCount;
	private int bookPrice;
	private int roomProcess;
	private char roomCancelFlag;
	private String cardNo;
	private String emberNo;
	private String nonMemberNo;
	private String promotionNo;
	private int roomViewNo;
	private int roomTypeNo;
	private int childCount;
	private int roomCount;
	private String guestNo;
	private int bedTypeNo;
	
	
	private String bookMemberName;
	private String bookGuestName;
	private int bookRoomNum;
}
