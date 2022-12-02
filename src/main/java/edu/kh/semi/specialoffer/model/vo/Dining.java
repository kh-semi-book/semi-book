package edu.kh.semi.specialoffer.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Dining {
	private int diningNo;
	private String diningTitle;
	private String diningSub;
	private String diningTitleImg;
	private String diningConImg;
	private String diningStartDate;
	private String diningEndDate;
}
