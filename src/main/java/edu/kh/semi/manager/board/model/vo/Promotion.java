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
	private String promotionStayStartDate;
	private String promotionStayEndDate;
	private String promotionSaleStartDate;
	private String promotionSaleEndDate;
	private int promotionPrice;
	private String promotionDeleteFlag;

}
