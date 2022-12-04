package edu.kh.semi.reservation.model.service;

import java.util.List;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

public interface ReserveService {

	List<Promotion> selectPromotion(Reserve reserve);

	List<Option> selectOption();

}
