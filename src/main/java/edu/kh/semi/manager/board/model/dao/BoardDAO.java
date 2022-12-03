package edu.kh.semi.manager.board.model.dao;

import java.util.List;
import java.util.Map;

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
		int result = sqlSession.insert("boardMapper.saveCmmPost", cmm);
		if (result>0) result=cmm.getCmmNo();
		return result;
	}
	

	/** 공지사항 수정
	 * @param cmm
	 * @return result
	 */
	public int cmmBoardUpdate(CMM cmm) {
		return sqlSession.update("boardMapper.cmmBoardUpdate", cmm);
	}

	
	/** 공지사항 타이틀 이미지 수정
	 * @param cmm
	 * @return result
	 */ 
	public int cmmTitleImageUpdate(CMM cmm) {
		return sqlSession.update("boardMapper.cmmTitleImageUpdate",cmm);
	}


	/** 공지사항 컨텐츠 이미지 수정
	 * @param cmm
	 * @return result
	 */
	public int cmmContentImageUpdate(CMM cmm) {
		return sqlSession.update("boardMapper.cmmContentImageUpdate",cmm);
	}
	
	/** 공지사항 수정
	 * @param cmmNo
	 * @return
	 */
	public int cmmDelete(int cmmNo) {
		return sqlSession.update("boardMapper.cmmDelete", cmmNo);
	}
	
	
//======================================================================================

	
	/** 프로모션 조회
	 * @return
	 */
	public List<Promotion> selectPromotionList() {
		return sqlSession.selectList("boardMapper.selectPromotionList");
	}
	
	
	/** 프로모션 세부 조회
	 * @param promotionNo
	 * @return
	 */
	public Promotion promotionDetail(int promotionNo) {
		return sqlSession.selectOne("boardMapper.promotionDetail", promotionNo);
	}

	

	/** 프로모션 등록
	 * @param promotion
	 * @return result
	 */
	public int savePromotionPost(Promotion promotion) {
		int result = sqlSession.insert("boardMapper.savePromotionPost", promotion);
		if(result>0) result=promotion.getPromotionNo();
		return result;
	}

	/** 프로모션 객실 등록
	 * @param pMap
	 * @return
	 */
	public int insertPromotionRoom(Map<String, Object> pMap) {
		return sqlSession.insert("boardMapper.insertPromotionRoom",pMap);
	}
	
	
	/** 프로모션 내용 수정
	 * @param promotion
	 * @return
	 */
	public int promotionBoardUpdate(Promotion promotion) {
		return sqlSession.update("boardMapper.promotionBoardUpdate", promotion);
	}


	/** 프로모션 타이틀 이미지 수정
	 * @param promotion
	 * @return
	 */
	public int promotionTitleImageUpdate(Promotion promotion) {
		return sqlSession.update("boardMapper.promotionTitleImageUpdate", promotion);
	}


	/** 프로모션 컨텐츠 이미지 수정
	 * @param promotion
	 * @return
	 */
	public int promotionContentImageUpdate(Promotion promotion) {
		return sqlSession.update("boardMapper.promotionContentImageUpdate", promotion);
	}
	

	/** 프로모션 객실 수정 (삭제 후 삽입)
	 * @param pMap
	 * @return
	 */
	public int updatePromotionRoom(Map<String, Object> pMap) {
		return sqlSession.insert("boardMapper.updatePromotionRoom", pMap);
	}



	/** 프로모션 객실 삭제
	 * @param promotionNo
	 * @return
	 */
	public int promotionRoomDelete(int promotionNo) {
		return sqlSession.delete("boardMapper.promotionRoomDelete", promotionNo);
	}
	


	/** 프로모션 삭제
	 * @param promotionNo
	 * @return 
	 */
	public int promotionDelete(int promotionNo) {
		return sqlSession.delete("boardMapper.promotionDelete", promotionNo);
	}

	//======================================================================================
	

	/** 다이닝 조회
	 * @return
	 */
	public List<Dining> selectDiningList() {
		return sqlSession.selectList("boardMapper.selectDiningList");
	}

	
	/** 다이닝 세부 조회
	 * @param diningNo
	 * @return
	 */
	public Dining diningDetail(int diningNo) {
		return sqlSession.selectOne("boardMapper.diningDetail", diningNo);
	}
	
	
	/** 다이닝 등록
	 * @param dining
	 * @return result
	 */
	public int saveDiningPost(Dining dining) {
		int result = sqlSession.insert("boardMapper.saveDiningPost", dining);
		if(result>0) result=dining.getDiningNo();
		return result;
	}
	
	/** 다이닝 내용 수정
	 * @param dining
	 * @return
	 */
	public int diningBoardUpdate(Dining dining) {
		return sqlSession.update("boardMapper.diningBoardUpdate", dining);
	}
	

	/** 다이닝 타이틀 이미지 수정
	 * @param dining
	 * @return
	 */
	public int diningTitleImageUpdate(Dining dining) {
		return sqlSession.update("boardMapper.diningTitleImageUpdate", dining);
	}


	/** 다이닝 컨텐츠 이미지 수정
	 * @param dining
	 * @return
	 */
	public int diningContentImageUpdate(Dining dining) {
		return sqlSession.update("boardMapper.diningContentImageUpdate", dining);
	}
	
	/** 다이닝 삭제
	 * @param diningNo
	 * @return 
	 */
	public int diningDelete(int diningNo) {
		return sqlSession.delete("boardMapper.diningDelete", diningNo);
	}
	
	
	//====================================================================================
	

	/** 이벤트 조회
	 * @return
	 */
	public List<Event> selectEventList() {
		return sqlSession.selectList("boardMapper.selectEventList");
	}

	
	/** 이벤트 세부 조회
	 * @param diningNo
	 * @return
	 */
	public Event eventDetail(int eventNo) {
		return sqlSession.selectOne("boardMapper.eventDetail", eventNo);
	}
	
	
	/** 이벤트 등록
	 * @param dining
	 * @return result
	 */
	public int saveEventPost(Event event) {
		int result = sqlSession.insert("boardMapper.saveEventPost", event);
		if(result>0) result=event.getEventNo();
		return result;
	}
	
	/** 이벤트 내용 수정
	 * @param dining
	 * @return
	 */
	public int eventBoardUpdate(Event event) {
		return sqlSession.update("boardMapper.eventBoardUpdate", event);
	}
	

	/** 이벤트 타이틀 이미지 수정
	 * @param dining
	 * @return
	 */
	public int eventTitleImageUpdate(Event event) {
		return sqlSession.update("boardMapper.eventTitleImageUpdate", event);
	}


	/** 이벤트 컨텐츠 이미지 수정
	 * @param dining
	 * @return
	 */
	public int eventContentImageUpdate(Event event) {
		return sqlSession.update("boardMapper.eventContentImageUpdate", event);
	}
	
	/** 이벤트 삭제
	 * @param diningNo
	 * @return 
	 */
	public int eventDelete(int eventNo) {
		return sqlSession.delete("boardMapper.eventDelete", eventNo);
	}




	



	







	

	

	


	

}
