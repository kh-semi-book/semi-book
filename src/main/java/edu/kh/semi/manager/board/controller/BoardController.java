package edu.kh.semi.manager.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.board.model.service.BoardService;
import edu.kh.semi.manager.board.model.vo.CMM;
import edu.kh.semi.manager.board.model.vo.Dining;
import edu.kh.semi.manager.board.model.vo.Event;
import edu.kh.semi.manager.board.model.vo.Promotion;

@Controller
@RequestMapping("/manager")
public class BoardController {

	@Autowired
	private BoardService service;

	// =================[공지사항]======================

	@GetMapping("/cmm")
	public String selectCmmList(Model model) {
		
		List<CMM> cmmList = service.selectCmmList();
		
		model.addAttribute("cmmList", cmmList);
		
		return "manager/cmm/cmmBoard";
	}

	@GetMapping("/cmmDetail/{cmmNo}")
	public String cmmDetail(@PathVariable("cmmNo") int cmmNo, Model model, 
							RedirectAttributes ra, @RequestHeader("referer") String referer) {
		
		CMM cmm = service.cmmDetail(cmmNo);
		
		if(cmm!=null) {
			model.addAttribute("cmm", cmm);
			return "/manager/cmm/cmm";
		} else {
			String message="해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/"+referer;
		}
		
	}
	
	@PostMapping("/cmmUpdate")
	public String cmmUpdate() {
		return "/manager/cmm/cmmPost";
	}
	
	@PostMapping("/cmmDelete")
	public String cmmDelete() {
		return "/manager/cmm/cmmPost";
	}
	
	@GetMapping("/cmmPost")
	public String cmmPost() {
		return "/manager/cmm/cmmPost";
	}


	// 공지사항 등록
	@PostMapping("/cmmPost")
	public String saveCmmPost(CMM cmm, @RequestParam(value = "cmmTitleImage") MultipartFile cmmTitleImage,
			@RequestParam(value = "cmmConImage") MultipartFile cmmConImage, RedirectAttributes ra,
			HttpServletRequest req, @RequestHeader(value = "referer") String referer) throws Exception {

		// 인터넷 주소로 접근할 수 있는 경로
		String webPathTitle = "/resources/image/boardImage/title/";
		String webPathContent = "/resources/image/boardImage/content/";

		// 실제 파일이 저장된 컴퓨터 상의 절대 경로
		String filePathTitle = req.getSession().getServletContext().getRealPath(webPathTitle);
		String filePathContent = req.getSession().getServletContext().getRealPath(webPathContent);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webPathTitle", webPathTitle);
		map.put("webPathContent", webPathContent);
		map.put("filePathTitle", filePathTitle);
		map.put("filePathContent", filePathContent);

		int result = service.saveCmmPost(cmm, map, cmmTitleImage, cmmConImage);

		String message = null;
		String path = null;

		if (result > 0) {
			message = "공지사항 등록 성공";
			path = "/manager/cmm";
		} else {
			message = "공지사항 등록 실패";
			path = referer;
		}

		ra.addFlashAttribute("message", message);

		return "redirect:" + path;
	}

	// =================[프로모션]======================

	@GetMapping("/promotion")
	public String promotionPage(Model model) {
		
		
		
		
		return "manager/promotion/promotionBoard";
	}

	@GetMapping("/promotionPost")
	public String promotionPost() {
		return "/manager/promotion/promotionPost";
	}

	@GetMapping("/promotionDetail")
	public String promotionDetail() {
		return "/manager/promotion/promotion";
	}

	// 프로모션 등록
	@PostMapping("/promotionPost")
	public String savePromotionPost(Promotion promotion,
			@RequestParam(value = "promotionTitleImage") MultipartFile promotionTitleImage,
			@RequestParam(value = "promotionConImage") MultipartFile promotionConImage, RedirectAttributes ra,
			HttpServletRequest req, @RequestHeader(value = "referer") String referer) throws Exception {

		// 인터넷 주소로 접근할 수 있는 경로
		String webPathTitle = "/resources/image/boardImage/title/";
		String webPathContent = "/resources/image/boardImage/content/";

		// 실제 파일이 저장된 컴퓨터 상의 절대 경로
		String filePathTitle = req.getSession().getServletContext().getRealPath(webPathTitle);
		String filePathContent = req.getSession().getServletContext().getRealPath(webPathContent);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webPathTitle", webPathTitle);
		map.put("webPathContent", webPathContent);
		map.put("filePathTitle", filePathTitle);
		map.put("filePathContent", filePathContent);

		int result = service.savePromotionPost(promotion, map, promotionTitleImage, promotionConImage);

		String message = null;
		String path = null;

		if (result > 0) {
			message = "프로모션 등록 성공";
			path = "/manager/promotion";
		} else {
			message = "promotion 등록 실패";
			path = referer;
		}

		ra.addFlashAttribute("message", message);

		return "redirect:" + path;

	}

	// =================[다이닝]======================

	@GetMapping("/dining")
	public String diningPage() {
		return "manager/dining/diningBoard";
	}

	@GetMapping("/diningPost")
	public String diningPost() {
		return "/manager/dining/diningPost";
	}

	@GetMapping("/diningDetail")
	public String diningDetail() {
		return "/manager/dining/dining";
	}

	// 다이닝 등록
	@PostMapping("/diningPost")
	public String saveDiningPost(Dining dining,
			@RequestParam(value = "diningTitleImage") MultipartFile diningTitleImage,
			@RequestParam(value = "diningConImage") MultipartFile diningConImage, RedirectAttributes ra,
			HttpServletRequest req, @RequestHeader(value = "referer") String referer) throws Exception {

		// 인터넷 주소로 접근할 수 있는 경로
		String webPathTitle = "/resources/image/boardImage/title/";
		String webPathContent = "/resources/image/boardImage/content/";

		// 실제 파일이 저장된 컴퓨터 상의 절대 경로
		String filePathTitle = req.getSession().getServletContext().getRealPath(webPathTitle);
		String filePathContent = req.getSession().getServletContext().getRealPath(webPathContent);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webPathTitle", webPathTitle);
		map.put("webPathContent", webPathContent);
		map.put("filePathTitle", filePathTitle);
		map.put("filePathContent", filePathContent);

		int result = service.saveDiningPost(dining, map, diningTitleImage, diningConImage);

		String message = null;
		String path = null;

		if (result > 0) {
			message = "다이닝 등록 성공";
			path = "/manager/dining";
		} else {
			message = "다이닝 등록 실패";
			path = referer;
		}

		ra.addFlashAttribute("message", message);

		return "redirect:" + path;

	}

	// =================[이벤트]======================


	@GetMapping("/event")
	public String eventPage() {
		return "manager/event/eventBoard";
	}

	@GetMapping("/eventPost")
	public String eventPost() {
		return "/manager/event/eventPost";
	}

	@GetMapping("/eventDetail")
	public String eventDetail() {
		return "/manager/event/event";
	}

	// 다이닝 등록
	@PostMapping("/eventPost")
	public String saveDiningPost(Event event, @RequestParam(value = "eventTitleImage") MultipartFile eventTitleImage,
			@RequestParam(value = "eventConImage") MultipartFile eventConImage, RedirectAttributes ra,
			HttpServletRequest req, @RequestHeader(value = "referer") String referer) throws Exception {

		// 인터넷 주소로 접근할 수 있는 경로
		String webPathTitle = "/resources/image/boardImage/title/";
		String webPathContent = "/resources/image/boardImage/content/";

		// 실제 파일이 저장된 컴퓨터 상의 절대 경로
		String filePathTitle = req.getSession().getServletContext().getRealPath(webPathTitle);
		String filePathContent = req.getSession().getServletContext().getRealPath(webPathContent);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("webPathTitle", webPathTitle);
		map.put("webPathContent", webPathContent);
		map.put("filePathTitle", filePathTitle);
		map.put("filePathContent", filePathContent);

		int result = service.saveEventPost(event, map, eventTitleImage, eventConImage);

		String message = null;
		String path = null;

		if (result > 0) {
			message = "이벤트 등록 성공";
			path = "/manager/event";
		} else {
			message = "이벤트 등록 실패";
			path = referer;
		}

		ra.addFlashAttribute("message", message);

		return "redirect:" + path;
	}
}
