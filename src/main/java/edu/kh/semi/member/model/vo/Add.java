package edu.kh.semi.member.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Add {

	public Add(Add inputAdd) {
		// TODO Auto-generated constructor stub
	}
	private String memberTel;
	private String memberAddress;
	private int memberNo;
	private char marriageFlag;
	private String memberWedding;
}
