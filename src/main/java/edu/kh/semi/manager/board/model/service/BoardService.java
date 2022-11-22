package edu.kh.semi.manager.board.model.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import edu.kh.semi.manager.board.model.vo.CMM;


public interface BoardService {

	/** 공지사항 등록
	 * @param cmm
	 * @param map
	 * @param cmmTitleImage
	 * @param cmmConImage
	 * @return
	 * @throws Exception
	 */
	int saveCmmPost(CMM cmm, Map<String, Object> map, MultipartFile cmmTitleImage, MultipartFile cmmConImage) throws Exception;

}
