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


	/** 예약 조회시 전체 예약 개수 조회
	 * @return
	 */
	public int getBookCount() {
		return sqlSession.selectOne("bookMapper.getBookCount");
	}
	


	public List<Book> selectBookList(Pagination pagination) {
		
		int offset=(pagination.getCurrentPage()-1)*pagination.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		
		return sqlSession.selectList("bookMapper.selectBookList", rowBounds);
	}


	

	/** 예약 검색결과 개수 조회 
	 * @param pm
	 * @return
	 */
	public int getBookCount(Map<String, Object> pm) {
		
		return sqlSession.selectOne("bookMapper.getBookCount_search",pm);
	}


	

	/** 예약 리스트 조회
	 * @param pagination
	 * @param pm
	 * @return
	 */
	public List<Book> selectBookList(Pagination pagination, Map<String, Object> pm) {
		int offset=(pagination.getCurrentPage()-1)*pagination.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pagination.getLimit());
		
		return sqlSession.selectList("bookMapper.selectBookList_search", pm ,rowBounds);
	
	}
	
	

	// 해당 예약번호의 룸타입, 전망타입 확인 
	public Room searchRoom(int bookNo) {
		
		return sqlSession.selectOne("bookMapper.searchRoom", bookNo);
	}


	// 해당 예약번호의 룸타입, 전망타입 에 맞는 방 번호 출력
	public List<Room> selectRoom(Room inputRoom) {
		
		return sqlSession.selectList("bookMapper.selectRoom_input", inputRoom);
	}

	
	
	
	

	/** BOOK_ROOM에 있는지 확인 
	 * @param bookPerson
	 * @return
	 */
	public int checkBookRoom(Book bookPerson) {
		
		return sqlSession.selectOne("bookMapper.checkBookRoom",bookPerson);
	}

	public int insertBookRoom(Book bookPerson) {
		
		return sqlSession.insert("bookMapper.insertBookRoom",bookPerson);
	}
	
	public int updateBookRoom(Book bookPerson) {
		
		return sqlSession.insert("bookMapper.updateBookRoom",bookPerson);
	}
	

	public int updateBook(Book bookPerson) {
		
		return sqlSession.update("bookMapper.updateBook", bookPerson);
	}



	public int deleteBookRoom(Book bookPerson) {
		
		return sqlSession.delete("bookMapper.deleteBookRoom", bookPerson);
	}
		



}
