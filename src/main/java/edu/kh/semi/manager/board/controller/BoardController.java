package edu.kh.semi.manager.board.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.board.model.service.BoardService;
import edu.kh.semi.manager.board.model.vo.CMM;

@Controller
@RequestMapping("/manager")
public class BoardController {
	
	@Autowired
	private BoardService service;

	
	//=================[공지사항]======================
	
	@GetMapping("/cmmPost")
	public String cmmPost() {
		return "/manager/cmm/cmmPost";
	}

	@GetMapping("/cmmDetail")
	public String cmmDetail() {
		return "/manager/cmm/cmm";
	}
	
	// 공지사항 등록
	@PostMapping("/cmmPost")
	public String saveCmmPost(CMM cmm, 
			@RequestParam(value = "cmmTitleImage") MultipartFile cmmTitleImage,
			@RequestParam(value = "cmmConImage") MultipartFile cmmConImage, RedirectAttributes ra,
			HttpServletRequest req) throws Exception {
		
		
		// 인터넷 주소로 접근할 수 있는 경로
		String webPathTitle = "/resources/image/boardImage/title/";
		String webPathContent="/resources/image/boardImage/content/";

		// 실제 파일이 저장된 컴퓨터 상의 절대 경로
		String filePathTitle = req.getSession().getServletContext().getRealPath(webPathTitle);
		String filePathContent = req.getSession().getServletContext().getRealPath(webPathContent);

		Map<String, Object>map = new HashMap<String, Object>();
		map.put("webPathTitle", webPathTitle);
		map.put("webPathContent", webPathContent);
		map.put("filePathTitle", filePathTitle);
		map.put("filePathContent", filePathContent);
		
		
		int result = service.saveCmmPost(cmm,map,cmmTitleImage,cmmConImage);

		String message = null;
		if (result > 0)
			message = "공지사항 등록 성공";
		else
			message = "공지사항 등록 실패";

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/cmm/cmm";
	}
	
	
	
	
	//=================[프로모션]======================
	
	@GetMapping("/promotionPost")
	public String promotionPost() {
		return "/manager/promotion/promotionPost";
	}

	@GetMapping("/promotionDetail")
	public String promotionDetail() {
		return "/manager/promotion/promotion";
	}
	
	


}




























