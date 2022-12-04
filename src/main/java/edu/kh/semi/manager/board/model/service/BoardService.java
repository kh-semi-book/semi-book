package edu.kh.semi.manager.board.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.manager.board.model.vo.Dining;
import edu.kh.semi.manager.board.model.vo.Event;
import edu.kh.semi.manager.board.model.vo.Promotion;


public interface BoardService {
	
	/** 공지사항 조회
	 * @return
	 */
	List<CMM> selectCmmList();
	
	/** 공지사항 세부조회
	 * @param cmmNo
	 * @return
	 */
	CMM cmmDetail(int cmmNo);

	/** 공지사항 등록
	 * @param cmm
	 * @param map
	 * @param cmmTitleImage
	 * @param cmmConImage
	 * @return
	 * @throws Exception
	 */
	int saveCmmPost(CMM cmm, Map<String, Object> map, MultipartFile cmmTitleImage, MultipartFile cmmConImage) throws Exception;

	
	/** 공지사항 수정
	 * @param cmm
	 * @param map
	 * @param cmmTitleImage
	 * @param cmmConImage
	 * @return
	 * @throws Exception
	 */
	int saveCmmUpdate(CMM cmm, Map<String, Object> map, MultipartFile cmmTitleImage, MultipartFile cmmConImage) throws Exception;
	
	

	/** 공지사항 삭제
	 * @param cmmNo
	 * @return result
	 */
	int cmmDelete(int cmmNo);
	
	
	//==========================================================================
	
	/** 프로모션 조회
	 * @return
	 */
	List<Promotion> selectPromotionList();
	
	 
	/** 프로모션 세부 조회
	 * @param promotionNo
	 * @return
	 */
	Promotion promotionDetail(int promotionNo);
	
	
	
	/** 프로모션 등록
	 * @param promotion
	 * @param map
	 * @param promotionTitleImage
	 * @param promotionConImage
	 * @param roomType 
	 * @param viewType 
	 * @return result
	 */
	int savePromotionPost(Promotion promotion, Map<String, Object> map, MultipartFile promotionTitleImage,
			MultipartFile promotionConImage, String[] viewType, String[] roomType) throws Exception;
	
	 /** 프로모션 수정
	 * @param promotion
	 * @param map
	 * @param promotionTitleImage
	 * @param promotionConImage
	 * @param viewType
	 * @param roomType
	 * @return
	 * @throws Exception
	 */
	int savePromotionUpdate(Promotion promotion, Map<String, Object> map, MultipartFile promotionTitleImage,
			MultipartFile promotionConImage, String[] viewType, String[] roomType)  throws Exception;
	
	/** 프로모션 삭제
	 * @param promotionNo
	 * @return
	 */
	int promotionDelete(int promotionNo);
	
	
	
	
	
	/** 다이닝 조회
	 * @return
	 */
	List<Dining> selectDiningList();
	
	
	/** 다이닝 세부 조회
	 * @param diningNo
	 * @return
	 */
	Dining diningDetail(int diningNo);
	
	

	/** 다이닝 등록
	 * @param dining
	 * @param map
	 * @param promotionTitleImage
	 * @param promotionConImage
	 * @return result
	 * @throws Exception
	 */
	int saveDiningPost(Dining dining, Map<String, Object> map, MultipartFile diningTitleImage,
			MultipartFile diningConImage) throws Exception;
	
	
	/** 다이닝 수정
	 * @param dining
	 * @param map
	 * @param diningTitleImage
	 * @param diningConImage
	 * @return
	 */
	int saveDiningUpdate(Dining dining, Map<String, Object> map, MultipartFile diningTitleImage,
			MultipartFile diningConImage)  throws Exception;


	/** 다이닝 삭제
	 * @param diningNo
	 * @return
	 */
	int diningDelete(int diningNo);
	


	
	
	

	/** 이벤트 조회
	 * @return
	 */
	List<Event> selectEventList();

	/** 이벤트 세부 조회
	 * @param eventNo
	 * @return
	 */
	Event eventDetail(int eventNo);
	
	
	/** 이벤트 등록
	 * @param event
	 * @param map
	 * @param eventTitleImage
	 * @param eventConImage
	 * @return result
	 * @throws Exception
	 */
	int saveEventPost(Event event, Map<String, Object> map, MultipartFile eventTitleImage,
			MultipartFile eventConImage) throws Exception;

	/** 이벤트 수정
	 * @param event
	 * @param map
	 * @param eventTitleImage
	 * @param eventConImage
	 * @return
	 * @throws Exception
	 */
	int saveEventUpdate(Event event, Map<String, Object> map, MultipartFile eventTitleImage,
			MultipartFile eventConImage) throws Exception;
	
	/** 이벤트 삭제
	 * @param eventNo
	 * @return
	 */
	int eventDelete(int eventNo);




	



	

	

	

	


}
