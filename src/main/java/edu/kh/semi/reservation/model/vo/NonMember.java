package edu.kh.semi.reservation.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class NonMember {
	private int nonMemberNo;
	private String nonMemberName;
	private String nonMemberEmail;
	private String nonMemberPhone;
}
