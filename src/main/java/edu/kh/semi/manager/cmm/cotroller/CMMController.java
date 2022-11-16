package edu.kh.semi.manager.cmm.cotroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CMMController {
	
	@GetMapping("/manager/cmm/cmmPost")
	public String cmmPost() {
		return "/manager/cmm/cmmPost";
	}
	@GetMapping("/manager/cmm/cmmDetail")
	public String cmmDetail() {
		return "/manager/cmm/cmm";
	}

}
