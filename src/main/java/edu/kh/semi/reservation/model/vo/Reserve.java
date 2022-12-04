package edu.kh.semi.reservation.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Reserve {

	private String checkInInput; 	//체크인 날짜 2022-12-15 (목)
	private String checkOutInput;	//체크아웃 날짜 2022-12-15 (목)
	private String nights;	//박수
	
	private int roomCount; 			// 객실 수
	private int adultCount; 		// 어른 수
	private int childCount;			// 아이 수
	
	private int promotionNo;		// 프로모션 넘버
	private int roomViewNo;			// 객실 뷰
	private int roomViewName;			// 객실 뷰
	private int roomTypeNo;			// 룸 타입
	private String roomTypeName;			// 룸 타입
	private int bedTypeNo;			// 침대 타입
	private int bookDate[];			// 날짜들
	private int optionNo;			// 옵션
	private int optionCnt;			// 옵션 수
	
}
