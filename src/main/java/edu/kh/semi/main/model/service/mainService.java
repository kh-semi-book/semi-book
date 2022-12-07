package edu.kh.semi.main.model.service;

import java.util.List;

import edu.kh.semi.manager.board.model.vo.Dining;
import edu.kh.semi.manager.board.model.vo.Promotion;

public interface mainService {

	List<Promotion> selectPromotion();

	List<Dining> selectDining();

}
