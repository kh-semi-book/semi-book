<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>회원 정보 수정 - Hidden Cliff Hotel and Nature</title>

		<script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="/resources/css/common/main.css">
		<link rel="stylesheet" href="/resources/css/member/memberEdit.css">
		<style>body{margin: auto;}</style>
	</head>

	<body>

		<%-- 헤더 --%>
		<jsp:include page="/WEB-INF/views/common/header.jsp" />

		<%-- 상단 배경 --%>
		<div class="kjh-head-area"></div>
		<div class="rsc-body-area">

			<nav class="kjh-page-list">
					<a href="/">HOME</a> > <a href=""> 마이페이지</a> > <a href=""> 회원정보 수정</a>
			</nav>

			<div class="kjh-title"> 
				<span><h1 class="kjh-h1">회원정보 수정</h1>
			</div>
			<div class="kjh-main-border">
				<div class="kjh-main-container">
										
				<h4 class="kjh-h4">기본항목
					<span class="kjh-txt"><strong class="star">*</strong>표시는 필수항목입니다.</span>
				</h4>

				<form name="joinform" id ="joinform" method="POST" action="memberEdit">
					<div class="form1">
						<table class="kjh-form1-table">
						<tr>
							<%-- 회원정보 수정 : 성명 --%>
							<th>
								<label for="memberName">
									성명<span class="star">*</span>
								</label>
							</th>

							<td class="kjh-input" colspan="3" name="memberName">
								<span>${member.memberName}</span>
							</td>
						</tr>

						<tr>
							<%-- 회원정보 수정 : 아이디 --%>
							<th>
								<label for="m_id">
								아이디<span class="star">*</span>
								</label>
							</th>
							
							<td class="kjh-input"colspan="3">
								<span>${member.memberId}</span>
							</td>
						</tr>
						
						<%-- 회원정보 수정 : 비밀번호 --%>
						<tr>
							<th>기존 비밀번호<span class="star">*</span></th>
							<td class="kjh-input" colspan="3">
								<input type="password" size="20" name="memberPw" id="memberPw">
								<span class="changePwBox">
									<input type="checkbox" name="chpwboxcheck" id="chpwboxcheck" value= "Y">
									<label for="chpwboxcheck">비밀번호 변경</label>
								</span>
							</td>
						</tr>
						
						<tr class = "new-pw1 hide" >
							<label for="newMemberPw1">
							<th>새 비밀번호<span class="star">*</span></th>
							</label>
							<td class="kjh-input " colspan="3">
							<input type="password" size="20" name="newPw" id="newPw" >
							</td>
						</tr>

						<tr class ="new-pw2 hide" >
							<label for="newMemberPw2">
							<th>새 비밀번호 확인<span class="star">*</span></th>
							</label>
							<td class="kjh-input " colspan="3">
							<input type="password" size="20" name="newPwConfirm" id="newPwConfirm" >
							</td>
						</tr>

						<%-- 회원정보 수정 : 휴대폰 --%>
						<c:set var="phone" value="${member.memberPhone}"/> 
						<tr>
							<th>휴대폰<span class="star">*</span></th>
							<td class="kjh-input" colspan="3">
							<input type="text" size="1" name="memberPhone" id="memberPhone1" value="${fn:substring(phone,0,3)}" maxlength="3"> -
							<input type="text" size="1" name="memberPhone" id="memberPhone2" value="${fn:substring(phone,3,7)}" maxlength="4"> -
							<input type="text" size="1" name="memberPhone" id="memberPhone3" value="${fn:substring(phone,7,12)}" maxlength="4">
							</td>
						</tr>

						<%-- 회원정보 수정 : 이메일 --%>
							<th>이메일<span class="star">*</span></th>
							<td class="kjh-input" colspan="3">
							<input type="text" size="20" name="memberEmail" id="memberEmail1" value="${fn:split(member.memberEmail,'@')[0]}">@ 
							<input type="text" size="13" name="memberEmail" id="memberEmail2" value="${fn:split(member.memberEmail,'@')[1]}">
							<select class="kjh-address" name="memberEmail" id="memberEmail3">
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="freechal.com">freechal.com</option>
								<option value="">직접 입력</option>
							</select><br>
							<span id="info">(다음/한메일은 수신이 안될 수 있습니다.)</span>
							</td>
						</tr>

						<%-- 회원정보 수정 : 성별 --%>	
						<c:choose>
							<c:when test="${fn:contains(member.memberGender,'F')}">
								<c:set var="CF" value="selected"/>
							</c:when>
							<c:when test="${fn:contains(member.memberGender,'M')}">
								<c:set var="CM" value="selected"/>
							</c:when>
						</c:choose>
						<tr>
							<th>성별<span class="star">*</span></th>
							<td class="kjh-input"colspan="3">
							<select class="kjh-select"name="memberGender" id="memberGender">
								<option value="" ${C0}>성별</option>
								<option value="F" ${CF}>여</option>
								<option value="M" ${CM}>남</option>
							</select>
							</td>
						</tr>

						<%-- 이메일 수신 동의 --%>
						<c:choose>
							<c:when test="${member.emailFlag =='Y'}">
								<c:set var="Y" value="checked"/>
							</c:when>
							<c:when test="${member.emailFlag=='N'}">
								<c:set var="N" value="checked"/>
							</c:when>
						</c:choose>
						<tr>
							<th>이메일<br> 수신 동의<span class="star">*</span></th>
							<td>
							<input type="radio" name="emailFlag" id="m_email_yn1" value="Y" ${Y}>
							<label for="m_email_yn1">수신</label>
							<input type="radio" name="emailFlag" id="m_email_yn2"value="N" ${N}>
							<label for="m_email_yn2">수신거부</label>
							</td>
						</tr>

						<%-- SNS 수신 동의 --%>
						<tr>
							<th>SMS<br> 수신 동의<span class="star">*</span></th>
							<td>
							<c:choose>
								<c:when test="${member.smsFlag =='Y'}">
									<c:set var="Y" value="checked"/>
								</c:when>
								<c:when test="${member.smsFlag=='N'}">
									<c:set var="N" value="checked"/>
								</c:when>
							</c:choose>
								<input type="radio" name="smsFlag" id="m_sms_yn1" value="Y" ${Y}>
								<label for="m_sms_yn1">수신</label>

								<input type="radio" name="smsFlag" id="m_sms_yn2" value="N" ${N}>
								<label for="m_sms_yn2">수신거부</label>
							</td>
						</tr>
						</table>
					</div> 

					<h4>추가정보 (선택항목)</h4>
					<%-- 추가정보 테이블 --%>		
					<div class="form2">
						<table class="kjh-form2-table">
							<%-- 생년월일 --%>
							<tr>
								<th>생년월일</th>
								<td class="kjh-input">
									<span id="memberBirthValue">${fn:substring(member.memberBirth,0,10)}</span>
									<span class="search-date-input">
										<input name="memberBirth" type="date" id="memberBirth" value="${fn:substring(member.memberBirth,0,10)}">
									</span> 
								</td>
							</tr>

							<%-- 결혼 유무 --%>
							<tr>
								<th>결혼유무</th>
								<td colspan="3">
									<input type="radio" name="marriageFlag" id="marriageYN1" value="N" <c:if test="${fn:contains(add.marriageFlag,'N')}">checked</c:if>>
									<label for="marriageYN1">미혼</label>
									<input type="radio" name="marriageFlag" id="marriageYN2" value="Y" <c:if test="${fn:contains(add.marriageFlag,'Y')}">checked</c:if>>
									<label for="marriageYN2">기혼</label>

									<c:choose>
										<c:when test="${fn:contains(add.marriageFlag,'N')}">
											<span class="kjh-married"> 결혼기념일 : 
												<input type="text" name="memberWedding" id="memberWedding1" size="4" maxlength="4" disabled>년
												<input type="text" name="memberWedding" id="memberWedding2" size="4" maxlength="2" disabled>월
												<input type="text" name="memberWedding" id="memberWedding3" size="4" maxlength="2" disabled>일
											</span>
										</c:when>
										<c:when test="${fn:contains(add.marriageFlag,'Y')}">
											<span class="kjh-married"> 결혼기념일 : 
												<input type="text" name="memberWedding" id="memberWedding1" size="4" maxlength="4" value="${fn:split(add.memberWedding,'-')[0]}">년
												<input type="text" name="memberWedding" id="memberWedding2" size="4" maxlength="2" value="${fn:split(add.memberWedding,'-')[1]}">월
												<input type="text" name="memberWedding" id="memberWedding3" size="4" maxlength="2" value="${fn:split(add.memberWedding,'-')[2]}">일
											</span>
										</c:when>
										<c:when test="${fn:contains(add.marriageFlag,'')}">
											<span class="kjh-married"> 결혼기념일 : 
												<input type="text" name="memberWedding" id="memberWedding1" size="4" maxlength="4">년
												<input type="text" name="memberWedding" id="memberWedding2" size="4" maxlength="2">월
												<input type="text" name="memberWedding" id="memberWedding3" size="4" maxlength="2">일
											</span>
										</c:when>
									</c:choose>
								</td>	
							</tr>         

							<%-- 유선 전화 --%>	
							<c:set var="tel" value="${add.memberTel}"/> 
							<tr>
								<th>유선전화</th>
								<td class="kjh-input" colspan="3">                                         
									<input type="text"  name="memberTel" size="1" name="m_col" id="m_col" value="${fn:split(tel,'-')[0]}" maxlength="3"> -
									<input type="text"  name="memberTel" size="1" name="m_col" id="m_col" value="${fn:split(tel,'-')[1]}" maxlength="4"> -
									<input type="text"  name="memberTel" size="1" name="m_col" id="m_col" value="${fn:split(tel,'-')[2]}" maxlength="4"> 
								</td>
							</tr>  

							<%-- 주소 --%>
							<c:set var="address" value="${add.memberAddress}"/> 
							<tr>
								<th>주소</th>
								<td class="kjh-input" colspan="3">
									<input type="text"   name = "memberAddress" class="kjh-address" size="5px" id="sample6_postcode" readonly value="${fn:substring(address,0,5)}">
									<input type="button" name = "memberAddress" class="kjh-btn"     onclick="sample6_execDaumPostcode()"      value="우편번호검색"><br>
									<input type="text"   name = "memberAddress" class="kjh-address" size="35px" id="sample6_address" readonly value="${fn:split(address,',,')[1]}"> 
									<input type="text"   name = "memberAddress" class="kjh-address" size="35px" id="sample6_detailAddress"    value="${fn:split(address,',,')[2]}">
								</td>                                                                                   
							</tr>      

							<%-- 회원탈퇴 --%>
							<tr>
								<th class="secession">회원탈퇴</th>
								<td  colspan="3"><a class="kjh-member-delete" href="memeberDelete">회원탈퇴</a></td>
							</tr>                        
						</table>
					</div> 
					<div class="kjh-btn-yn">
						<button class="submit-btn">확인</button>
						<button class="cancle-btn">취소</button>
					</div>
				</form>
				</div> 
			</div>  
		</div> 












		<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
		<script src="/resources/js/member/memberEdit.js"></script> 
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

		<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	</body>
</html>