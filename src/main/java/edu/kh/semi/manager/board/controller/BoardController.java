package edu.kh.semi.manager.board.controller;

import java.util.Arrays;
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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import edu.kh.semi.member.model.vo.Member;
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

	// =================[공지사항]===완===================

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
			HttpServletRequest req, @SessionAttribute(value = "loginMember", required = false) Member loginMember)
			throws Exception {

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

		cmm.setMemberNo(loginMember.getMemberNo());

		int cmmNo = service.saveCmmPost(cmm, map, cmmTitleImage, cmmConImage);

		String message = null;

		if (cmmNo > 0) {
			message = "공지사항 등록 성공";
		} else {
			message = "공지사항 등록 실패";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/cmmDetail/" + cmmNo;
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
		} else {
			message = "공지사항 수정 실패";
			ra.addFlashAttribute("message", message);
		}

		return "redirect:/manager/cmmDetail/" + cmmNo;
	}

	// 공지사항 삭제
	@GetMapping("/cmmDetail/{cmmNo}/delete")
	public String cmmDelete(@PathVariable(value = "cmmNo") int cmmNo, RedirectAttributes ra) {

		int result = service.cmmDelete(cmmNo);
		String message = null;

		if (result > 0) {
			message = "게시글 삭제 완료";
		} else {
			message = "게시글 삭제 실패";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/cmm";
	}

	//==================[프로모션]======================

	// 프로모션 조회
	@GetMapping("/promotion")
	public String selectPromotionList(Model model) {

		List<Promotion> promotionList = service.selectPromotionList();

		model.addAttribute("promotionList", promotionList);

		return "manager/promotion/promotionBoard";
	}

	// 프로모션 세부 조회
	@GetMapping("/promotionDetail/{promotionNo}")
	public String promotionDetail(@PathVariable("promotionNo") int promotionNo, Model model, RedirectAttributes ra) {

		Promotion promotion = service.promotionDetail(promotionNo);

		if (promotion != null) {
			List<String> viewList = Arrays.asList(promotion.getRoomViewNo().split(","));
			List<String> typeList = Arrays.asList(promotion.getRoomTypeNo().split(","));
			model.addAttribute("promotion", promotion);
			model.addAttribute("viewList", viewList);
			model.addAttribute("typeList", typeList);
			return "/manager/promotion/promotion";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/promotion";
		}

	}

	// 프로모션 등록 페이지 이동
	@GetMapping("/promotionPost")
	public String promotionPost() {
		return "/manager/promotion/promotionPost";
	}

	// 프로모션 등록
	@PostMapping("/promotionPost")
	public String savePromotionPost(Promotion promotion, String[] viewType, String[] roomType,
			@RequestParam(value = "promotionTitleImage") MultipartFile promotionTitleImage,
			@RequestParam(value = "promotionConImage") MultipartFile promotionConImage, RedirectAttributes ra,
			HttpServletRequest req, @SessionAttribute(value = "loginMember", required = false) Member loginMember)
			throws Exception {

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

		promotion.setMemberNo(loginMember.getMemberNo());

		int promotionNo = service.savePromotionPost(promotion, map, promotionTitleImage, promotionConImage, viewType,
				roomType);

		String message = null;

		if (promotionNo > 0) {
			message = "프로모션 등록 성공";

		} else {
			message = "promotion 등록 실패";
		}
		ra.addFlashAttribute("message", message);
		return "redirect:/manager/promotionDetail/" + promotionNo;
	}

	// 프로모션 수정 페이지 이동
	@GetMapping("/promotionDetail/{promotionNo}/update")
	public String promotionUpdate(@PathVariable("promotionNo") int promotionNo, Model model, RedirectAttributes ra) {

		Promotion promotion = service.promotionDetail(promotionNo);

		if (promotion != null) {
			List<String> viewList = Arrays.asList(promotion.getRoomViewNo().split(","));
			List<String> typeList = Arrays.asList(promotion.getRoomTypeNo().split(","));
			model.addAttribute("promotion", promotion);
			model.addAttribute("viewList", viewList);
			model.addAttribute("typeList", typeList);
			return "/manager/promotion/promotionUpdate";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/promotion";
		}

	}

	// 프로모션 수정 (수정해야 함)
	@PostMapping("promotionDetail/{promotionNo}/promotionUpdate")
	public String savePromotionUpdate(Promotion promotion, @PathVariable("promotionNo") int promotionNo,
			String[] viewType, String[] roomType,
			@RequestParam(value = "promotionTitleImage") MultipartFile promotionTitleImage,
			@RequestParam(value = "promotionConImage") MultipartFile promotionConImage, RedirectAttributes ra,
			HttpServletRequest req) throws Exception {

		promotion.setPromotionNo(promotionNo);

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

		int result = service.savePromotionUpdate(promotion, map, promotionTitleImage, promotionConImage, viewType,
				roomType);

		String message = null;

		if (result > 0) {
			message = "공지사항 수정 성공";
			ra.addFlashAttribute("message", message);
		} else {
			message = "공지사항 수정 실패";
			ra.addFlashAttribute("message", message);
		}

		return "redirect:/manager/promotionDetail/" + promotion.getPromotionNo();

	}

	// 프로모션 삭제
	@GetMapping("/promotionDetail/{promotionNo}/delete")
	public String promotionDelete(@PathVariable(value = "promotionNo") int promotionNo, RedirectAttributes ra) {

		int result = service.promotionDelete(promotionNo);
		String message = null;

		if (result > 0) {
			message = "게시글 삭제 완료";
		} else {
			message = "게시글 삭제 실패";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/promotion";
	}

	// =================[다이닝]======================

	// 다이닝 조회
	@GetMapping("/dining")
	public String selectDiningList(Model model) {

		List<Dining> diningList = service.selectDiningList();

		model.addAttribute("diningList", diningList);

		return "manager/dining/diningBoard";
	}

	// 다이닝 세부 조회
	@GetMapping("/diningDetail/{diningNo}")
	public String diningDetail(@PathVariable("diningNo") int diningNo, Model model, RedirectAttributes ra) {

		Dining dining = service.diningDetail(diningNo);

		if (dining != null) {
			model.addAttribute("dining", dining);
			return "/manager/dining/dining";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/dining";
		}

	}

	// 다이닝 등록 페이지 이동
	@GetMapping("/diningPost")
	public String diningPost() {
		return "/manager/dining/diningPost";
	}

	// 다이닝 등록
	@PostMapping("/diningPost")
	public String saveDiningPost(Dining dining,
			@RequestParam(value = "diningTitleImage") MultipartFile diningTitleImage,
			@RequestParam(value = "diningConImage") MultipartFile diningConImage, RedirectAttributes ra,
			HttpServletRequest req, @SessionAttribute(value = "loginMember", required = false) Member loginMember)
			throws Exception {

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

		dining.setMemberNo(loginMember.getMemberNo());

		int diningNo = service.saveDiningPost(dining, map, diningTitleImage, diningConImage);

		String message = null;

		if (diningNo > 0) {
			message = "다이닝 등록 성공";
		} else {
			message = "다이닝 등록 실패";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/diningDetail/" + diningNo;

	}

	// 다이닝 수정 페이지 이동
	@GetMapping("/diningDetail/{diningNo}/update")
	public String diningUpdate(@PathVariable("diningNo") int diningNo, Model model, RedirectAttributes ra) {

		Dining dining = service.diningDetail(diningNo);

		if (dining != null) {
			model.addAttribute("dining", dining);
			return "/manager/dining/diningUpdate";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/dining";
		}

	}

	// 다이닝 수정
	@PostMapping("/diningDetail/{diningNo}/diningUpdate")
	public String saveDiningUpdate(Dining dining, @PathVariable("diningNo") int diningNo,
			@RequestParam(value = "diningTitleImage") MultipartFile diningTitleImage,
			@RequestParam(value = "diningConImage") MultipartFile diningConImage, RedirectAttributes ra,
			HttpServletRequest req) throws Exception {

		dining.setDiningNo(diningNo);

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

		int result = service.saveDiningUpdate(dining, map, diningTitleImage, diningConImage);

		String message = null;

		if (result > 0) {
			message = "다이닝 수정 성공";
			ra.addFlashAttribute("message", message);
		} else {
			message = "다이닝 수정 실패";
			ra.addFlashAttribute("message", message);
		}

		return "redirect:/manager/diningDetail/" + dining.getDiningNo();

	}

	// 다이닝 삭제
	@GetMapping("/diningDetail/{diningNo}/delete")
	public String diningDelete(@PathVariable(value = "diningNo") int diningNo, RedirectAttributes ra) {

		int result = service.diningDelete(diningNo);
		String message = null;

		if (result > 0) {
			message = "게시글 삭제 완료";
		} else {
			message = "게시글 삭제 실패";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/dining";
	}

	// =================[이벤트]======================

	// 이벤트 조회
	@GetMapping("/event")
	public String selectEventList(Model model) {

		List<Event> eventList = service.selectEventList();

		model.addAttribute("eventList", eventList);

		return "manager/event/eventBoard";
	}

	// 이벤트 세부 조회
	@GetMapping("/eventDetail/{eventNo}")
	public String eventDetail(@PathVariable("eventNo") int eventNo, Model model, RedirectAttributes ra) {

		Event event = service.eventDetail(eventNo);

		if (event != null) {
			model.addAttribute("event", event);
			return "/manager/event/event";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/event";
		}

	}

	// 이벤트 등록 페이지 이동
	@GetMapping("/eventPost")
	public String eventPost() {
		return "/manager/event/eventPost";
	}

	// 이벤트 등록
	@PostMapping("/eventPost")
	public String saveDiningPost(Event event,
			@RequestParam(value = "eventTitleImage") MultipartFile eventTitleImage,
			@RequestParam(value = "eventConImage") MultipartFile eventConImage, RedirectAttributes ra,
			HttpServletRequest req, @SessionAttribute(value = "loginMember", required = false) Member loginMember)
			throws Exception {

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

		event.setMemberNo(loginMember.getMemberNo());

		int eventNo = service.saveEventPost(event, map, eventTitleImage, eventConImage);

		String message = null;

		if (eventNo > 0) {
			message = "다이닝 등록 성공";
		} else {
			message = "다이닝 등록 실패";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/eventDetail/" + eventNo;

	}

	// 이벤트 수정 페이지 이동
	@GetMapping("/eventDetail/{eventNo}/update")
	public String eventUpdate(@PathVariable("eventNo") int eventNo, Model model, RedirectAttributes ra) {

		Event event = service.eventDetail(eventNo);

		if (event != null) {
			model.addAttribute("event", event);
			return "/manager/event/eventUpdate";
		} else {
			String message = "해당 게시글이 존재하지 않습니다.";
			ra.addFlashAttribute("message", message);
			return "redirect:/manager/event";
		}

	}

	// 이벤트 수정
	@PostMapping("/eventDetail/{eventNo}/eventUpdate")
	public String saveDiningUpdate(Event event, @PathVariable("eventNo") int eventNo,
			@RequestParam(value = "eventTitleImage") MultipartFile eventTitleImage,
			@RequestParam(value = "eventConImage") MultipartFile eventConImage, RedirectAttributes ra,
			HttpServletRequest req) throws Exception {

		event.setEventNo(eventNo);

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

		int result = service.saveEventUpdate(event, map, eventTitleImage, eventConImage);

		String message = null;

		if (result > 0) {
			message = "다이닝 수정 성공";
			ra.addFlashAttribute("message", message);
		} else {
			message = "다이닝 수정 실패";
			ra.addFlashAttribute("message", message);
		}

		return "redirect:/manager/eventDetail/" + event.getEventNo();

	}

	// 이벤트 삭제
	@GetMapping("/eventDetail/{eventNo}/delete")
	public String eventDelete(@PathVariable(value = "eventNo") int eventNo, RedirectAttributes ra) {

		int result = service.eventDelete(eventNo);
		String message = null;

		if (result > 0) {
			message = "게시글 삭제 완료";
		} else {
			message = "게시글 삭제 실패";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/manager/event";
	}

}
