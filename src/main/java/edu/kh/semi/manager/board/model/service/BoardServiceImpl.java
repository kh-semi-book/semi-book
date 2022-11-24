package edu.kh.semi.manager.board.model.service;

import java.io.File;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import edu.kh.semi.common.Util;
import edu.kh.semi.manager.board.model.dao.BoardDAO;
import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.manager.board.model.vo.Promotion;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO dao;
	
	
	@Override
	public int saveCmmPost(CMM cmm, Map<String, Object> map, MultipartFile cmmTitleImage, MultipartFile cmmConImage) 
			throws Exception {
		
		String renameTitle = Util.fileRename(cmmTitleImage.getOriginalFilename());
		String renameContent = Util.fileRename(cmmConImage.getOriginalFilename());
		
		cmm.setCmmTitleImg(map.get("webPathTitle")+renameTitle);
		cmm.setCmmConImg(map.get("webPathContent")+renameContent);
		
		int result = dao.saveCmmPost(cmm);
		
		if(result > 0) {
			
			if(renameTitle!=null && renameContent!=null) {
				cmmTitleImage.transferTo(new File(map.get("filePathTitle")+renameTitle));
				cmmConImage.transferTo(new File(map.get("filePathContent")+renameContent));
			}
		} else {
			throw new Exception("업로드 실패");
		}
		
		return result;
	}
	
	
	// 프로모션 등록
	@Override
	public int savePromotionPost(Promotion promotion, Map<String, Object> map, MultipartFile promotionTitleImage,
			MultipartFile promotionConImage) throws Exception {
		
		String renameTitle = Util.fileRename(promotionTitleImage.getOriginalFilename());
		String renameContent = Util.fileRename(promotionConImage.getOriginalFilename());
		
		promotion.setPromotionTitleImg(map.get("webPathTitle")+renameTitle);
		promotion.setPromotionConImg(map.get("webPathContent")+renameContent);
		
		int result = dao.savePromotionPost(promotion);
		
		if(result > 0) {
			
			if(renameTitle!=null && renameContent!=null) {
				promotionTitleImage.transferTo(new File(map.get("filePathTitle")+renameTitle));
				promotionConImage.transferTo(new File(map.get("filePathContent")+renameContent));
			}
		} else {
			throw new Exception("업로드 실패");
		}
		
		return result;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	

}




















