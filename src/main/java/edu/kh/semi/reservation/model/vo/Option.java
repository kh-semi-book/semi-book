package edu.kh.semi.reservation.model.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Option {
	private int bookNo;
	private String optionNo;
	private int optionPrice;
	private String optionDate;
	private String optionName;
	private String optionCount;
}
