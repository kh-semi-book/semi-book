package edu.kh.semi.manager.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Promotion {
	
	private int promotionNo;
	private String promotionTitle;
	private String promotionSub;
	private String promotionTitleImg;
	private String promotionConImg;
	private String pStayStartDate;
	private String pStayEndDate;
	private String pSaleStartDate;
	private String pSaleEndDate;
	private int promotionPrice;
	private String promotionDeleteFlag;

}
