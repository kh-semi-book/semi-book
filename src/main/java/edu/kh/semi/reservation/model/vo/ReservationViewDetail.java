package edu.kh.semi.reservation.model.vo;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class ReservationViewDetail {

	private int bookNo;           // 예약 번호 
	private String bookDate;      //  예약 완료 날짜 
	private String checkIn;       //  체크인 날짜 
	private String checkOut;      //  체크아웃 날짜  
	private int bookAdultCount;    //  예약 인원 
	private int bookPrice;        //  예약 금액
	private String roomProcess;      //  예약 진행 상태 
	private String roomCancleFlag;  //  예약 취소 여부 
	private String bookCardNo;    //  예약 카드 번호 
	private int memberNo;         //  예약한 회원 번호 
	private int nonMemberNo;         //  예약한 비회원 번호 
	private int guestNo;          //  투숙자 번호 
	private int promotionNo;      //  프로모션 번호  
	private int roomViewNo;       //  전망 번호 
	private int roomTypeNo;       //  객실 타입 번호
	private int bedTypeNo;       //  침대 번호
	private int bookChildCount;    //  예약 어린이 인원
	private int bookRoomCount;    //  예약 객실 수
	
	private String promotionTitle;  // 프로모션 이름 
	private String roomTypeName;        // 객실 이름 
	private String roomViewName;    // 전망 이름  
	private String bedTypeName;    		// 침대 이름  
	
	
	
}
