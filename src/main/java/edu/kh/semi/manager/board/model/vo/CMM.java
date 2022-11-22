package edu.kh.semi.manager.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class CMM {
	
	private int cmmNo;
	private String cmmTitle;
	private String cmmSub;
	private String cmmTitleImg;
	private String cmmConImg;
	private String cmmDeleteFlag;

}
