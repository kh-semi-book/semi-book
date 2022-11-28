package edu.kh.semi.manager.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.manager.board.model.vo.Dining;
import edu.kh.semi.manager.board.model.vo.Event;
import edu.kh.semi.manager.board.model.vo.Promotion;


@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	/** 공지사항 조회
	 * @return
	 */
	public List<CMM> selectCmmList() {
		return sqlSession.selectList("boardMapper.selectCmmList");
	}
	
	
	/** 공지사항 세부 조회
	 * @param cmmNo
	 * @return
	 */
	public CMM cmmDetail(int cmmNo) {
		return sqlSession.selectOne("boardMapper.cmmDetail", cmmNo);
	}

	/** 공지사항 등록
	 * @param cmm
	 * @return result
	 */
	public int saveCmmPost(CMM cmm) {
		return sqlSession.insert("boardMapper.saveCmmPost", cmm);
	}

	/** 프로모션 등록
	 * @param promotion
	 * @return result
	 */
	public int savePromotionPost(Promotion promotion) {
		return sqlSession.insert("boardMapper.savePromotionPost", promotion);
	}

	/** 다이닝 등록
	 * @param dining
	 * @return result
	 */
	public int saveDiningPost(Dining dining) {
		return sqlSession.insert("boardMapper.saveDiningPost", dining);
	}
	 
	/** 이벤트 등록
	 * @param event
	 * @return result
	 */
	public int saveEventPost(Event event) {
		return sqlSession.insert("boardMapper.saveEventPost", event);
	}

	


	

}
