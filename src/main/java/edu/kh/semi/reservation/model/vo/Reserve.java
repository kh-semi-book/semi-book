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

	private String checkInText; 	//체크인 날짜 2022-12-15 (목)
	private String checkOutText;	//체크아웃 날짜 2022-12-15 (목)
	private int roomCount; 			// 객실 수
	private int adultCount; 		// 어른 수
	private int childCount;			// 아이 수
	private int promotionNo;		// 프로모션 넘버
	private int roomView;			// 객실 뷰
	private int roomType;			// 룸 타입
	private int bedType;			// 침대 타입
	private int bookDate[];			// 날짜들
	private int optionNo;			// 옵션
	private int optionCnt;			// 옵션 수
	
}
