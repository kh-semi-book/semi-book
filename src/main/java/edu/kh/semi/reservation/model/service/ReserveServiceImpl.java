package edu.kh.semi.reservation.model.service;

import java.util.List;
import java.util.Map;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.dao.ReserveDAO;
import edu.kh.semi.reservation.model.vo.Guest;
import edu.kh.semi.reservation.model.vo.NonMember;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

@Service
public class ReserveServiceImpl implements ReserveService {
	
	@Autowired
    private JavaMailSender mailSender; // email-context.xml에서 생성한 bean 
    
    private String fromEmail = "raura980616@gmail.com";
    private String fromUsername = "히든클리프";

	@Autowired
	private ReserveDAO dao;

	// spring -security.xml에서 등록한 bean을 의존성 주입
	@Autowired
	private BCryptPasswordEncoder bcrypt;

	// 날짜에 해당하는 프로모션 조회
	@Override
	public List<Promotion> selectPromotion(Reserve reserve) {

		// 날짜에 해당하는 프로모션들을 얻어옴
		List<Promotion> promotion = dao.selectPromotion(reserve);

		for (int i = 0; i < promotion.size(); i++) {
			List<String> roomType = dao.selectRoomType(promotion.get(i).getPromotionNo());
			List<String> bedType = dao.selectBedType(promotion.get(i).getPromotionNo());
			promotion.get(i).setRoomType(roomType);
			promotion.get(i).setBedType(bedType);
		}

		return promotion;
	}

	@Override
	public List<Option> selectOption() {

		return dao.selectOption();
	}

	/**
	 * 회원 예약
	 */
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int reservation4(Member loginMember, Reserve reserve, Guest inputGuest, String[] optionSet,
			NonMember nonMember) {
		Option tempOption = new Option();
		int result = dao.insertPayment(inputGuest);

		if (result > 0) {
			result = dao.insertGuest(inputGuest);

			if (result > 0) {
				if (loginMember != null) { // 회원이면
					reserve.setMemberNo(loginMember.getMemberNo());
					reserve.setNonMemberNo(0);
					reserve.setGuestNo(inputGuest.getGuestNo());
					reserve.setCardNo(inputGuest.getCardNo());

					result = dao.insertBook(reserve);
				} else { // 비회원이면

					result = dao.insertNonMember(nonMember);

					reserve.setGuestNo(inputGuest.getGuestNo());
					reserve.setNonMemberNo(nonMember.getNonMemberNo());
					reserve.setMemberNo(0);
					reserve.setCardNo(inputGuest.getCardNo());

					result =dao.insertBook_nonMember(reserve);
				}

				if (result > 0) { // 옵션 추가
					
					System.out.println(optionSet.length);
					if(optionSet.length!=1) {
						for (int i = 0; i < optionSet.length; i++) {
							String temp[] = optionSet[i].split("/");
							tempOption.setOptionDate(temp[0]);
							tempOption.setOptionNo(temp[1]);
							tempOption.setOptionCount(temp[2]);
	
							result = dao.insertOption(tempOption);
	
						}
					}
					if(result>0) result =reserve.getBookNo();

				}
			}
		}

		return result;
	}

	// 로그인 기능
	@Override
	public Member login(Member inputMember) {

		Member loginMember = dao.login(inputMember.getMemberId());

		if (loginMember != null) {

			if (bcrypt.matches(inputMember.getMemberPw(), loginMember.getMemberPw())) {

				loginMember.setMemberPw(null);

			} else {
				loginMember = null;
			}
		}

		return loginMember;
	}

	// 예약 완료 이메일 보내기
	@Override
	public int sendBookNo(Map<String, Object> map) {
		try {

			// 인증메일 보내기
			MimeMessage mail = mailSender.createMimeMessage();

			// 제목
			String subject = "[HIDDEN_CLIFF] 예약 완료";

			// 문자 인코딩
			String charset = "UTF-8";

			// 메일 내용
            String mailContent 
                = "<h3 style='color:blue'>예약번호 : " + map.get("bookNo") + "</h3>";
            
			System.out.println(map.get("memberId"));

			// 송신자(보내는 사람) 지정
			mail.setFrom(new InternetAddress(fromEmail, fromUsername));

			// 수신자(받는사람) 지정
			mail.addRecipient(Message.RecipientType.TO, new InternetAddress((String) map.get("memberEmail")));

			// 이메일 제목 세팅
			mail.setSubject(subject, charset);

			// 내용 세팅
			mail.setText(mailContent, charset, "html"); // "html" 추가 시 HTML 태그가 해석됨

			mailSender.send(mail);// 메일 발송
		} catch (Exception e) {
			e.printStackTrace();

		}

		return 1;
	}

}
