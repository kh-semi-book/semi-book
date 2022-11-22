package edu.kh.semi.manager.book.model.service;

import java.util.Map;

import edu.kh.semi.manager.book.model.vo.SearchOption;

public interface BookService {

	Map<String, Object> selectBook(int cp);

	Map<String, Object> searchBook(int cp, SearchOption sc);

}
