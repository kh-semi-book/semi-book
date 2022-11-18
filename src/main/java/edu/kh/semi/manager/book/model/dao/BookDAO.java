package edu.kh.semi.manager.book.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.book.model.vo.Book;
import edu.kh.semi.manager.book.model.vo.Pagination;

@Repository
public class BookDAO {

	
	@Autowired
	public SqlSession sqlSession;


	public int getBookCount() {
		return sqlSession.selectOne("bookMapper.getBookCount");
	}
	
	
	public String selectBook() {	
		return sqlSession.selectOne("bookMapper.selectBook"); 
	}


	public List<Book> selectBookList(Pagination pagination) {
		
		int offset=(pagination.getCurrentPage()-1)*pagination.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		
		return sqlSession.selectList("bookMapper.selectBookList", rowBounds);
	}
}
