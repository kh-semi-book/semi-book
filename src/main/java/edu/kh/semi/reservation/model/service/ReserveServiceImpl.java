package edu.kh.semi.reservation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kh.semi.manager.board.model.vo.Promotion;
import edu.kh.semi.member.model.vo.Member;
import edu.kh.semi.reservation.model.dao.ReserveDAO;
import edu.kh.semi.reservation.model.vo.Guest;
import edu.kh.semi.reservation.model.vo.Option;
import edu.kh.semi.reservation.model.vo.Reserve;

@Service
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveDAO dao;
	
	 // spring -security.xml에서 등록한 bean을 의존성 주입
	 @Autowired
	 private BCryptPasswordEncoder bcrypt;

	// 날짜에 해당하는 프로모션 조회
	@Override
	public List<Promotion> selectPromotion(Reserve reserve) {
		
		// 날짜에 해당하는 프로모션들을 얻어옴
		List<Promotion> promotion=dao.selectPromotion(reserve);
		
		for(int i=0;i<promotion.size();i++) {
			List<String> roomType=dao.selectRoomType(promotion.get(i).getPromotionNo());
			List<String> bedType=dao.selectBedType(promotion.get(i).getPromotionNo());
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
	 *  회원 예약
	 */
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int reservation4(Member loginMember, Reserve reserve, Guest inputGuest,String[] optionSet, Guest nonMember) {
		Option tempOption = new Option();
		int result = dao.insertPayment(inputGuest);
		
		if(result>0) {
			result = dao.insertGuest(inputGuest);
			
			if(result >0) {
				if(loginMember!=null) { // 회원이면
					reserve.setMemberNo(loginMember.getMemberNo());
					
					reserve.setNonMemberNo(0);
					reserve.setCardNo(inputGuest.getCardNo());
					result= dao.insertBook(reserve);
				} else { // 비회원이면 
					
					result=dao.insertNonMember(nonMember);
					reserve.setCardNo(inputGuest.getCardNo());
					reserve.setMemberNo(0);
					
					result= dao.insertBook_nonMember(reserve);
				}
				
				
				
				if(result>0) { // 옵션 추가 
					
					for(int i=0;i<optionSet.length;i++) {
						String temp[]=optionSet[i].split("/");
						tempOption.setOptionDate(temp[0]);
						tempOption.setOptionNo(temp[1]);
						tempOption.setOptionCount(temp[2]);
						
						result=dao.insertOption(tempOption);
						
					}
					
				}
			}
		}
		
		
		
		
		return result;
	}
	
	
	
	// 로그인 기능
	@Override
	public Member login(Member inputMember) {
		
		Member loginMember = dao.login(inputMember.getMemberId());
		
		if(loginMember != null) {
			
			if(bcrypt.matches(inputMember.getMemberPw(), loginMember.getMemberPw())) {
				
				loginMember.setMemberPw(null);
				
			} else {
				loginMember = null;
			}
		}
		
		return loginMember;
	}


	
}
