package edu.kh.semi.reservation.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Guest {

	private String guestName;  		 // 투숙자명
	private String guestBirth;		 // 투숙자 생년월일
	private String guestEmail;		 // 투숙자 이메일
	private String guestPhone; 		 // 투숙자 휴대폰 번호
	private String cardNo;	  		 // 카드 번호
	private String cardType;   		 // 카드 종류
	private String cardOwner;  		 // 카드 소유주
	private String cardExpireDate;   // 카드 만료일자
}
