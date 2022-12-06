package edu.kh.semi.manager.board.model.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import edu.kh.semi.common.Util;
import edu.kh.semi.manager.board.model.dao.BoardDAO;
import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.manager.board.model.vo.Dining;
import edu.kh.semi.manager.board.model.vo.Event;
import edu.kh.semi.manager.board.model.vo.Promotion;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;

	// 공지사항 조회
	@Override
	public List<CMM> selectCmmList() {
		return dao.selectCmmList();
	}

	// 공지사항 세부 조회
	@Override
	public CMM cmmDetail(int cmmNo) {
		return dao.cmmDetail(cmmNo);
	}

	// 공지사항 등록
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int saveCmmPost(CMM cmm, Map<String, Object> map, MultipartFile cmmTitleImage, MultipartFile cmmConImage)
			throws Exception {

		String renameTitle = Util.fileRename(cmmTitleImage.getOriginalFilename());
		String renameContent = Util.fileRename(cmmConImage.getOriginalFilename());

		cmm.setCmmTitleImg(map.get("webPathTitle") + renameTitle);
		cmm.setCmmConImg(map.get("webPathContent") + renameContent);

		int result = dao.saveCmmPost(cmm);

		if (result > 0) {

			if (renameTitle != null && renameContent != null) {
				cmmTitleImage.transferTo(new File(map.get("filePathTitle") + renameTitle));
				cmmConImage.transferTo(new File(map.get("filePathContent") + renameContent));
			}
		} else {
			throw new Exception("업로드 실패");
		}

		return result;
	}

	// 공지사항 수정
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int saveCmmUpdate(CMM cmm, Map<String, Object> map, MultipartFile cmmTitleImage, MultipartFile cmmConImage)
			throws Exception {

		// 내용 수정
		int result = dao.cmmBoardUpdate(cmm);

		String renameTitle = null;
		String renameContent = null;
		int resultTitle = 0;
		int resultContent = 0;

		if (result > 0) {

			if (cmmTitleImage.getSize() > 0) {
				renameTitle = Util.fileRename(cmmTitleImage.getOriginalFilename());
				cmm.setCmmTitleImg(map.get("webPathTitle") + renameTitle);
				resultTitle = dao.cmmTitleImageUpdate(cmm);
				if (resultTitle == 0) {
					throw new Exception("수정 실패");
				} else {
					cmmTitleImage.transferTo(new File(map.get("filePathTitle") + renameTitle));
				}
			}

			if (cmmConImage.getSize() > 0) {
				renameContent = Util.fileRename(cmmConImage.getOriginalFilename());
				cmm.setCmmConImg(map.get("webPathContent") + renameContent);
				resultContent = dao.cmmContentImageUpdate(cmm);
				if (resultContent == 0) {
					throw new Exception("수정 실패");
				} else {
					cmmConImage.transferTo(new File(map.get("filePathContent") + renameContent));
				}
			}

		} else {
			throw new Exception("수정 실패");
		}

		return result;

	}

	// 공지사항 삭제
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int cmmDelete(int cmmNo) {
		return dao.cmmDelete(cmmNo);
	}

	// ==================================================================================

	// 프로모션 조회
	@Override
	public List<Promotion> selectPromotionList() {
		return dao.selectPromotionList();
	}

	// 프로모션 세부 조회
	@Override
	public Promotion promotionDetail(int promotionNo) {
		return dao.promotionDetail(promotionNo);
	}

	// 프로모션 등록
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int savePromotionPost(Promotion promotion, Map<String, Object> map, MultipartFile promotionTitleImage,
			MultipartFile promotionConImage, String[] viewType, String[] roomType) throws Exception {

		String renameTitle = Util.fileRename(promotionTitleImage.getOriginalFilename());
		String renameContent = Util.fileRename(promotionConImage.getOriginalFilename());

		promotion.setPromotionTitleImg(map.get("webPathTitle") + renameTitle);
		promotion.setPromotionConImg(map.get("webPathContent") + renameContent);

		int result = dao.savePromotionPost(promotion);

		if (result > 0) {

			if (renameTitle != null && renameContent != null) {
				promotionTitleImage.transferTo(new File(map.get("filePathTitle") + renameTitle));
				promotionConImage.transferTo(new File(map.get("filePathContent") + renameContent));
			}
			int result2=0;

			Map<String, Object> pMap = new HashMap<String, Object>();
			for (String view : viewType) {
				pMap.put("roomViewNo", view);
				for (String room : roomType) {
					pMap.put("roomTypeNo", room);
					result2 = dao.insertPromotionRoom(pMap);
					if (result2 > 0) {
						pMap.remove("roomTypeNo");
					} else {
						throw new Exception("업로드 실패");
					}
				}
				if (result2 > 0) {
					pMap.remove("roomViewNo");
				} else {
					throw new Exception("업로드 실패");
				}
			}

		} else {
			throw new Exception("업로드 실패");
		}

		return result;
	}

	// 프로모션 수정
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int savePromotionUpdate(Promotion promotion, Map<String, Object> map, MultipartFile promotionTitleImage,
			MultipartFile promotionConImage, String[] viewType, String[] roomType) throws Exception {

		int result = dao.promotionBoardUpdate(promotion);

		String renameTitle = null;
		String renameContent = null;
		int resultTitle = 0;
		int resultContent = 0;

		if (result > 0) {

			if (promotionTitleImage.getSize() > 0) {
				renameTitle = Util.fileRename(promotionTitleImage.getOriginalFilename());
				promotion.setPromotionTitleImg(map.get("webPathTitle") + renameTitle);
				resultTitle = dao.promotionTitleImageUpdate(promotion);
				if (resultTitle == 0) {
					throw new Exception("수정 실패");
				} else {
					promotionTitleImage.transferTo(new File(map.get("filePathTitle") + renameTitle));
				}
			}

			if (promotionConImage.getSize() > 0) {
				renameContent = Util.fileRename(promotionConImage.getOriginalFilename());
				promotion.setPromotionConImg(map.get("webPathContent") + renameContent);
				resultContent = dao.promotionContentImageUpdate(promotion);
				if (resultContent == 0) {
					throw new Exception("수정 실패");
				} else {
					promotionConImage.transferTo(new File(map.get("filePathContent") + renameContent));
				}
			}

//			result = dao.promotionRoomDelete(promotion.getPromotionNo());
//
//			Map<String, Object> pMap = new HashMap<String, Object>();
//			pMap.put("promotionNo", promotion.getPromotionNo());
//			for (String view : viewType) {
//				pMap.put("roomViewNo", view);
//				for (String room : roomType) {
//					pMap.put("roomTypeNo", room);
//					result = dao.updatePromotionRoom(pMap);
//					if (result > 0) {
//						pMap.remove("roomTypeNo");
//					} else {
//						throw new Exception("업로드 실패");
//					}
//				}
//				if (result > 0) {
//					pMap.remove("roomViewNo");
//				} else {
//					throw new Exception("업로드 실패");
//				}
//			}

		} else {
			throw new Exception("수정 실패");
		}

		return result;
	}

	// 프로모션 삭제
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int promotionDelete(int promotionNo) {

//		int result = dao.promotionRoomDelete(promotionNo);

		int result = dao.promotionDelete(promotionNo);
		

		return result;
	}

	// ==================================================================================

	
	// 다이닝 조회
	@Override
	public List<Dining> selectDiningList() {
		return dao.selectDiningList();
	}
	
	// 다이닝 세부 조회
	@Override
	public Dining diningDetail(int diningNo) {
		return dao.diningDetail(diningNo);
	}
	
	
	
	// 다이닝 등록
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int saveDiningPost(Dining dining, Map<String, Object> map, MultipartFile diningTitleImage,
			MultipartFile diningConImage) throws Exception {

		String renameTitle = Util.fileRename(diningTitleImage.getOriginalFilename());
		String renameContent = Util.fileRename(diningConImage.getOriginalFilename());

		dining.setDiningTitleImg(map.get("webPathTitle") + renameTitle);
		dining.setDiningConImg(map.get("webPathContent") + renameContent);

		int result = dao.saveDiningPost(dining);

		if (result > 0) {

			if (renameTitle != null && renameContent != null) {
				diningTitleImage.transferTo(new File(map.get("filePathTitle") + renameTitle));
				diningConImage.transferTo(new File(map.get("filePathContent") + renameContent));
			}
			
			
		} else {
			throw new Exception("업로드 실패");
		}

		return result;

	}
	
	// 다이닝 수정
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int saveDiningUpdate(Dining dining, Map<String, Object> map, MultipartFile diningTitleImage,
			MultipartFile diningConImage) throws Exception{
		
		int result = dao.diningBoardUpdate(dining);

		String renameTitle = null;
		String renameContent = null;
		int resultTitle = 0;
		int resultContent = 0;

		if (result > 0) {

			if (diningTitleImage.getSize() > 0) {
				renameTitle = Util.fileRename(diningTitleImage.getOriginalFilename());
				dining.setDiningTitleImg(map.get("webPathTitle") + renameTitle);
				resultTitle = dao.diningTitleImageUpdate(dining);
				if (resultTitle == 0) {
					throw new Exception("수정 실패");
				} else {
					diningTitleImage.transferTo(new File(map.get("filePathTitle") + renameTitle));
				}
			}

			if (diningConImage.getSize() > 0) {
				renameContent = Util.fileRename(diningConImage.getOriginalFilename());
				dining.setDiningConImg(map.get("webPathContent") + renameContent);
				resultContent = dao.diningContentImageUpdate(dining);
				if (resultContent == 0) {
					throw new Exception("수정 실패");
				} else {
					diningConImage.transferTo(new File(map.get("filePathContent") + renameContent));
				}
			}


		} else {
			throw new Exception("수정 실패");
		}

		return 0;
	}
	
	
	// 다이닝 삭제
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int diningDelete(int diningNo) {
		
		return dao.diningDelete(diningNo);
	}
	
	
	//========================================================================
	

	// 이벤트 조회
	@Override
	public List<Event> selectEventList() {
		return dao.selectEventList();
	}
	
	// 이벤트 세부 조회
	@Override
	public Event eventDetail(int eventNo) {
		return dao.eventDetail(eventNo);
	}
	
	
	
	// 이벤트 등록
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int saveEventPost(Event event, Map<String, Object> map, MultipartFile eventTitleImage,
			MultipartFile eventConImage) throws Exception {

		String renameTitle = Util.fileRename(eventTitleImage.getOriginalFilename());
		String renameContent = Util.fileRename(eventConImage.getOriginalFilename());

		event.setEventTitleImg(map.get("webPathTitle") + renameTitle);
		event.setEventConImg(map.get("webPathContent") + renameContent);

		int result = dao.saveEventPost(event);

		if (result > 0) {

			if (renameTitle != null && renameContent != null) {
				eventTitleImage.transferTo(new File(map.get("filePathTitle") + renameTitle));
				eventConImage.transferTo(new File(map.get("filePathContent") + renameContent));
			}
			
			
		} else {
			throw new Exception("업로드 실패");
		}

		return result;

	}
	
	// 이벤트 수정
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int saveEventUpdate(Event event, Map<String, Object> map, MultipartFile eventTitleImage,
			MultipartFile eventConImage) throws Exception{
		
		int result = dao.eventBoardUpdate(event);

		String renameTitle = null;
		String renameContent = null;
		int resultTitle = 0;
		int resultContent = 0;

		if (result > 0) {

			if (eventTitleImage.getSize() > 0) {
				renameTitle = Util.fileRename(eventTitleImage.getOriginalFilename());
				event.setEventTitleImg(map.get("webPathTitle") + renameTitle);
				resultTitle = dao.eventTitleImageUpdate(event);
				if (resultTitle == 0) {
					throw new Exception("수정 실패");
				} else {
					eventTitleImage.transferTo(new File(map.get("filePathTitle") + renameTitle));
				}
			}

			if (eventConImage.getSize() > 0) {
				renameContent = Util.fileRename(eventConImage.getOriginalFilename());
				event.setEventConImg(map.get("webPathContent") + renameContent);
				resultContent = dao.eventContentImageUpdate(event);
				if (resultContent == 0) {
					throw new Exception("수정 실패");
				} else {
					eventConImage.transferTo(new File(map.get("filePathContent") + renameContent));
				}
			}


		} else {
			throw new Exception("수정 실패");
		}

		return 0;
	}
	
	
	// 이벤트 삭제
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int eventDelete(int eventNo) {
		
		return dao.eventDelete(eventNo);
	}
	

}
