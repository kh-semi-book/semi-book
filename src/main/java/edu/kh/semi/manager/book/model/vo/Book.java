package edu.kh.semi.manager.book.model.vo;

import java.util.List;

import edu.kh.semi.reservation.model.vo.Option;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Book {

	private int bookNo;
	private int bookRoomNo;
	private String bookDate;
	private String checkIn;
	private String checkOut;
	private int nights;
	private int adultCount;
	private int bookPrice;
	private String roomProcess;
	private String roomCancelFlag;
	private String cardNo;
	private String memberNo;
	private String nonMemberNo;
	private String promotionNo;
	private int roomViewNo;
	private int roomTypeNo;
	private int childCount;
	private int roomCount;
	private String guestNo;
	private int bedTypeNo;
	private String promotionTitle;
	
	private String bookMemberName;
	private String bookMemberPhone;
	private String bookMemberEmail;
	private String bookNonMemberName;
	private String bookNonMemberPhone;
	private String bookNonMemberEmail;
	private String bookGuestName;
	private String bookGuestRequest;
	private int bookRoomNum;
	
	private List<Option> optionList;
	
	
}
