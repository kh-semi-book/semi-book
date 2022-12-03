package edu.kh.semi.manager.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Dining {
	
	private int diningNo;
	private String diningTitle;
	private String diningSub;
	private String diningTitleImg;
	private String diningConImg;
	private String diningStartDate;
	private String diningEndDate;
	private String diningDeleteFlag;
	private String diningCreateDate;
	private int memberNo;
	private String memberName;

}
