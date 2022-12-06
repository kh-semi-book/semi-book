package edu.kh.semi.nav.specialOffer.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class RoomPromotion {
	
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

}
