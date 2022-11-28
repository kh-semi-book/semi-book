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

	/** 프로모션 등록
	 * @param promotion
	 * @param map
	 * @param promotionTitleImage
	 * @param promotionConImage
	 * @return result
	 */
	int savePromotionPost(Promotion promotion, Map<String, Object> map, MultipartFile promotionTitleImage,
			MultipartFile promotionConImage) throws Exception;

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

	


}
