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

	// 공지사항 세부 조회
	@GetMapping("/cmmDetail/{cmmNo}")
	public String cmmDetail(@PathVariable("cmmNo") int cmmNo, Model model, RedirectAttributes ra) {

		CMM cmm = service.cmmDetail(cmmNo);

		if (cmm != null) {
			model.addAttribute("cmm", cmm);
			return "/manager/cmm/cmm";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/cmm";
		}

	}

	

	@GetMapping("/cmmPost")
	public String cmmPost() {
		return "/manager/cmm/cmmPost";
	}

	// 공지사항 등록
	@PostMapping("/cmmPost")
	public String saveCmmPost(CMM cmm, @RequestParam(value = "cmmTitleImage") MultipartFile cmmTitleImage,
			@RequestParam(value = "cmmConImage") MultipartFile cmmConImage, RedirectAttributes ra,
			HttpServletRequest req) throws Exception {

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

		if (result > 0) {
			message = "공지사항 등록 성공";
		} else {
			message = "공지사항 등록 실패";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/cmm";
	}
	
	// 공지사항 수정 페이지 이동
	@GetMapping("/cmmDetail/{cmmNo}/update")
	public String cmmUpdate(@PathVariable("cmmNo") int cmmNo, Model model, RedirectAttributes ra) {

		CMM cmm = service.cmmDetail(cmmNo);

		if (cmm != null) {
			model.addAttribute("cmm", cmm);
			return "/manager/cmm/cmmUpdate";
		} else {
			String message = "오류";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/cmm";
		}

	}

	// 공지사항 수정
	@PostMapping("/cmmDetail/{cmmNo}/cmmUpdate")
	public String saveCmmUpdate(CMM cmm, @PathVariable("cmmNo") int cmmNo,
			@RequestParam(value = "cmmTitleImage") MultipartFile cmmTitleImage,
			@RequestParam(value = "cmmConImage") MultipartFile cmmConImage, RedirectAttributes ra,
			HttpServletRequest req) throws Exception {
		
		cmm.setCmmNo(cmmNo);

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

		int result = service.saveCmmUpdate(cmm, map, cmmTitleImage, cmmConImage);

		String message = null;

		if (result > 0) {
			message = "공지사항 수정 성공";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/cmmDetail/"+cmmNo;
		} else {
			message = "공지사항 수정 실패";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/cmmDetail/"+cmmNo;
		}


	}

	@PostMapping("/cmmDelete")
	public String cmmDelete() {
		return "/manager/cmm/cmmPost";
	}

	// =================[프로모션]======================

	// 프로모션 조회
	@GetMapping("/promotion")
	public String selectPromotionList(Model model) {

		List<Promotion> promotionList = service.selectPromotionList();

		model.addAttribute("promotionList", promotionList);

		return "manager/promotion/promotionBoard";
	}

	@GetMapping("/promotionPost")
	public String promotionPost() {
		return "/manager/promotion/promotionPost";
	}

	// 프로모션 세부 조회
	@GetMapping("/promotionDetail/{promotionNo}")
	public String promotionDetail(@PathVariable("promotionNo") int promotionNo, Model model, RedirectAttributes ra) {

		Promotion promotion = service.promotionDetail(promotionNo);

		if (promotion != null) {
			model.addAttribute("promotion", promotion);
			return "/manager/promotion/promotion";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/promotion";
		}

	}

	// 프로모션 등록
	@PostMapping("/promotionPost")
	public String savePromotionPost(Promotion promotion,
			@RequestParam(value = "promotionTitleImage") MultipartFile promotionTitleImage,
			@RequestParam(value = "promotionConImage") MultipartFile promotionConImage, RedirectAttributes ra,
			HttpServletRequest req) throws Exception {

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

		if (result > 0) {
			message = "프로모션 등록 성공";
		} else {
			message = "promotion 등록 실패";
		}
		ra.addFlashAttribute("message", message);
		return "redirect:/manager/promotion";
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
