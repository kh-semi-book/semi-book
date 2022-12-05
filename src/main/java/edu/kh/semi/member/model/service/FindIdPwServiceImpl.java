package edu.kh.semi.member.model.service;

import java.util.Map;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import edu.kh.semi.member.model.dao.FindIdPwDAO;
import edu.kh.semi.member.model.vo.Member;

@Service
public class FindIdPwServiceImpl implements FindIdPwService{
	
	 @Autowired
	 private BCryptPasswordEncoder bcrypt;
	
	@Autowired
	private FindIdPwDAO dao;
	
	@Autowired
    private JavaMailSender mailSender; // email-context.xml에서 생성한 bean 
    
    private String fromEmail = "raura980616@gmail.com";
    private String fromUsername = "히든클리프";

	@Override
	public String findId(Member input) {
		
		return dao.findId(input);
	}

	@Override
	public int findPw(Member input) {
	
		return dao.findPw(input);
	}

	@Override
	public int changeRanPw(Map<String, Object> map) {
		
		String encPw = bcrypt.encode((CharSequence) map.get("randomString")); // 암호화된 비밀번호
		map.put("memberPw", encPw);
		
		 try {
			 
			

	            //인증메일 보내기
	            MimeMessage mail = mailSender.createMimeMessage();
	            
	            // 제목
	            String subject = "[HIDDEN_CLIFF]새로운 비밀번호";
	            
	            // 문자 인코딩
	            String charset = "UTF-8";
	            
	            // 메일 내용
	            String mailContent 
	                = "<p>김연수님께서 요청하신 정보입니다.</p>"
	                + "<h3 style='color:blue'>아이디 : " + map.get("memberId") + "</h3>"
	            	+ "<h3 style='color:blue'>비밀번호 : " +map.get("randomString") + "</h3>";
	            
	            
	            System.out.println(map.get("memberId"));
	            
	            // 송신자(보내는 사람) 지정
	            mail.setFrom(new InternetAddress(fromEmail, fromUsername));

	            // 수신자(받는사람) 지정
	            mail.addRecipient(Message.RecipientType.TO, new InternetAddress((String)map.get("memberEmail")));
	            
	            
	            // 이메일 제목 세팅
	            mail.setSubject(subject, charset);
	            
	            // 내용 세팅
	            mail.setText(mailContent, charset, "html"); //"html" 추가 시 HTML 태그가 해석됨
	            
	            mailSender.send(mail);// 메일 발송
	        } catch (Exception e) {
	            e.printStackTrace();
	            
	        }
	
		
		return dao.changeRanPw(map);
	}

	@Override
	public void sendEmail(String memberEmail) {
			
	}

}
