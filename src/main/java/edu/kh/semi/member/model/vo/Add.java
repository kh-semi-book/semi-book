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
	}
	private String memberTel;
	private String memberAddress;
	private int memberNo;
	private String marriageFlag;
	private String memberWedding;
}
