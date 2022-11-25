package edu.kh.semi.manager.book.model.service;

import java.util.Map;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.SearchOption;

public interface BookService {

	Map<String, Object> selectBook(int cp);


	int updateBook(Book bookPerson);

	Map<String, Object> selectBook(Map<String, Object> pm, int cp);

}
