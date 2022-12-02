package edu.kh.semi.member.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Member {
	
	private int memberNo; // 디폴트
	private String memberName;
	private String memberId;
	private String memberPw;
	private String memberPhone;
	private String memberDeleteFlag; // 디폴트  
	private String enrollDate; // 디폴트
	private String memberEmail;
	private String memberGender;
	private String memberBirth;
	private String emailFlag; 
	private String smsFlag;
	private int authority; // 디폴트
	
	private char marriageFlag;
	private String memberWedding;
	private String memberTel;
	private String memberAddress;
	


}
