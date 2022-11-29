package edu.kh.semi.manager.book.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;
import edu.kh.semi.manager.book.model.vo.Room;
import edu.kh.semi.manager.book.model.vo.SearchOption;

@Repository
public class BookDAO {

	
	@Autowired
	public SqlSession sqlSession;


	public int getBookCount() {
		return sqlSession.selectOne("bookMapper.getBookCount");
	}
	

	public List<Book> selectBookList(Pagination pagination) {
		
		int offset=(pagination.getCurrentPage()-1)*pagination.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		
		return sqlSession.selectList("bookMapper.selectBookList", rowBounds);
	}


	public int updateBook(Book bookPerson) {
		
		return sqlSession.update("bookMapper.updateBook", bookPerson);
	}


	public int getBookCount(Map<String, Object> pm) {
		
		return sqlSession.selectOne("bookMapper.getBookCount_search",pm);
	}


	public List<Book> selectBookList(Pagination pagination, Map<String, Object> pm) {
		int offset=(pagination.getCurrentPage()-1)*pagination.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		
		return sqlSession.selectList("bookMapper.selectBookList_search", pm ,rowBounds);
	
	}


	public List<Room> selectRoom() {
		
		return sqlSession.selectList("bookMapper.selectRoom");
	}


	public Room searchRoom(int bookNum) {
		
		return sqlSession.selectOne("bookMapper.searchRoom", bookNum);
	}
}
