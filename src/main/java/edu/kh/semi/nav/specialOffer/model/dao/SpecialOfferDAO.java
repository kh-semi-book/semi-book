package edu.kh.semi.nav.specialOffer.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.nav.specialOffer.model.vo.Dining;
import edu.kh.semi.nav.specialOffer.model.vo.Event;

@Repository
public class SpecialOfferDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/** 객실 프로모션 메인
	 * @return
	 */
	public List<Promotion> selectPromotionList() {
		return sqlSession.selectList("boardMapper.selectPromotionList");
	}

	/** 객실 프로모션 상세 조회
	 * @param promotionNo
	 * @return
	 */
	public Promotion roomPromotionDetail(int promotionNo) {
		return sqlSession.selectOne("boardMapper.promotionDetail",promotionNo);
	}

	/** 다이님 메인
	 * @return
	 */
	public List<Dining> selectDiningList() {
		return sqlSession.selectList("boardMapper.selectDiningList");
	}

	/** 다이닝 상세 조회
	 * @param diningNo
	 * @return
	 */
	public Dining dininigDetail(int diningNo) {
		return sqlSession.selectOne("boardMapper.dininigDetail",diningNo);
	}

	/** 이벤트 메인
	 * @return
	 */
	public List<Event> selectEventList() {
		return sqlSession.selectList("boardMapper.selectEventList");
	}

	/** 이벤트 상세 조회
	 * @param eventNo
	 * @return
	 */
	public Event eventDetail(int eventNo) {
		return sqlSession.selectOne("boardMapper.eventDetail",eventNo);
	}

}
