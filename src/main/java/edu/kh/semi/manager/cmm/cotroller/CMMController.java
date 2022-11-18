package edu.kh.semi.manager.cmm.cotroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.semi.manager.cmm.model.service.CMMService;

@Controller
@RequestMapping("/manager")
public class CMMController {
	
	@Autowired
	private CMMService service;

	@GetMapping("/cmm/cmmPost")
	public String cmmPost() {
		return "/manager/cmm/cmmPost";
	}

	@PostMapping("/cmm/cmmPost")
	public String saveCmmPost(@RequestParam(value = "cmmTitleImage") MultipartFile cmmTitleImage,
			@RequestParam(value = "cmmConImage") MultipartFile cmmSubImage, RedirectAttributes ra,
			HttpServletRequest req) throws Exception {

		
		// 이미지 두 개 + 값 두 개 한 번에 넘기고 싶ㅇ아요오
		
		
//		// ** 업로드된 이미지를 프로젝트 폴더 내부에 저장하는 방법 **
//		// 1) server -> 지정된 서버 설정 -> Serve modules without publishing 체크
//		// 2) 파일을 저장할 폴더 생성
//		// 3) HttpServletRequest를 이용해서 저장 폴더 절대 경로 얻어오기
//		// 4) MultipartFile.transferTo()를 이용해서 지정된 경로에 파일 저장
//
//		// 인터넷 주소로 접근할 수 있는 경로
//		String webPathTitle = "/resources/images/boardImage/title";
//		String webPathContent="/resources/images/boardImage/content";
//
//		// 실제 파일이 저장된 컴퓨터 상의 절대 경로
//		String filePathTitle = req.getSession().getServletContext().getRealPath(webPathTitle);
//		String filePathContent = req.getSession().getServletContext().getRealPath(webPathContent);
//
//		int resultTitle = service.save(webPathTitle, filePathTitle, cmmTitleImage);
//		int resultContent = service.save(webPathTitle, filePathTitle, cmmTitleImage);
//
//		String message = null;
//		if (result > 0)
//			message = "프로필 이미지가 변경되었습니다.";
//		else
//			message = "프로필 이미지 변경 실패";
//
//		ra.addFlashAttribute("message", message);

		return "redirect:/manager/cmm/cmmPost";
	}

	@GetMapping("/cmm/cmmDetail")
	public String cmmDetail() {
		return "/manager/cmm/cmm";
	}

}
