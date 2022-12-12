package edu.kh.semi.member.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.kh.semi.member.model.service.FindIdPwService;
import edu.kh.semi.member.model.vo.Member;

@Controller
public class FindIdPwController {
	
	@Autowired
	private FindIdPwService service;
	
	
	@GetMapping("/member/findIdPw")
	public String FindIdPw() {
	
		return "/member/find";
	}
	
	@PostMapping("/member/findId")
	@ResponseBody
	public String FindId(Member input) {
		
	
		String result=service.findId(input);
		
		return result;
		
	}
	
	@PostMapping("/member/findPw")
	@ResponseBody
	public int FindPw(Member input) {
		
		int changeRanPwResult=0;
		int memberNo=service.findPw(input);
		
		System.out.println(memberNo);
		// 조회는 됐고!
		
		Map<String, Object> map=new HashMap<String, Object>();
		String randomString=randomString();
		
		if(memberNo>0) {
			// 0보다크면 == 해당하는 회원정보가 있으면 비밀번호 변경
			map.put("memberNo", memberNo);
			map.put("memberName", input.getMemberName());
			map.put("memberEmail", input.getMemberEmail());
			map.put("memberId", input.getMemberId());
			map.put("randomString", randomString);
			
//			service.sendEmail(input.getMemberEmail());
			
			changeRanPwResult=service.changeRanPw(map);
			
		}
		
		System.out.println(changeRanPwResult);
		
		return changeRanPwResult;
		
	}
	
	
	private String randomString() {
		int leftLimit = 48; // numeral '0'
		int rightLimit = 122; // letter 'z'
		int targetStringLength = 8;
		Random random = new Random();

		String generatedString = random.ints(leftLimit,rightLimit + 1)
		  .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
		  .limit(targetStringLength)
		  .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
		  .toString();

		return generatedString;
	}

}
