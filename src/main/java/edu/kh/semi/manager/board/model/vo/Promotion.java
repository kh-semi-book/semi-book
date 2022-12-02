package edu.kh.semi.manager.board.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.util.List;

@Getter
@Setter
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
	private String promotionCreateDate;
	private int memberNo;
	private String memberName;
	
	private String roomViewNo;
	private String roomTypeNo;
	
	
	
	public String getpStayStartDate() {
		return pStayStartDate;
	}
	public void setpStayStartDate(String pStayStartDate) {
		this.pStayStartDate = pStayStartDate;
	}
	public String getpStayEndDate() {
		return pStayEndDate;
	}
	public void setpStayEndDate(String pStayEndDate) {
		this.pStayEndDate = pStayEndDate;
	}
	public String getpSaleStartDate() {
		return pSaleStartDate;
	}
	public void setpSaleStartDate(String pSaleStartDate) {
		this.pSaleStartDate = pSaleStartDate;
	}
	public String getpSaleEndDate() {
		return pSaleEndDate;
	}
	public void setpSaleEndDate(String pSaleEndDate) {
		this.pSaleEndDate = pSaleEndDate;
	}

	
	
}
