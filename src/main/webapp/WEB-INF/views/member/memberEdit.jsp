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
								<span>${loginMember.memberName}</span>
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
								<span>${loginMember.memberId}</span>
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
							<input type="password" size="20" name="newMemberPw1" id="newMemberPw1" >
							</td>
						</tr>

						<tr class ="new-pw2 hide" >
							<label for="newMemberPw2">
							<th>새 비밀번호 확인<span class="star">*</span></th>
							</label>
							<td class="kjh-input " colspan="3">
							<input type="password" size="20" name="newMemberPw2" id="newMemberPw2" >
							</td>
						</tr>

						<%-- 회원정보 수정 : 휴대폰 --%>
						<c:set var="phone" value="${loginMember.memberPhone}"/> 
						<tr>
							<th>휴대폰<span class="star">*</span></th>
							<td class="kjh-input" colspan="3">
							<input type="text" size="1" name="memberPhone" id="m_phone" value="${fn:substring(phone,0,3)}"> -
							<input type="text" size="1" name="memberPhone" id="m_phone" value="${fn:substring(phone,3,7)}"> -
							<input type="text" size="1" name="memberPhone" id="m_phone" value="${fn:substring(phone,7,12)}">
							</td>
						</tr>

						<%-- 회원정보 수정 : 이메일 --%>
							<th>이메일<span class="star">*</span></th>
							<td class="kjh-input" colspan="3">
                <input type="text" size="20" name="memberEmail" id="memberEmail1" value="${fn:split(loginMember.memberEmail,'@')[0]}">@
                <input type="text" size="13"name="memberEmail" id= "memberEmail2" value="${fn:split(loginMember.memberEmail,'@')[1]}">
							<select class="kjh-address" name="memberEmail" id="memberEmail3">
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="freechal.com">freechal.com</option>
								<option value="">직접 입력</option>
							</select>
							</td>
						</tr>

						<%-- 회원정보 수정 : 성별 --%>	
						<tr>
							<th>성별<span class="star">*</span></th>
							<td class="kjh-input"colspan="3">
							<c:choose>
								<c:when test="${fn:contains(loginMember.memberGender,'F')}">
									<c:set var="CF" value="selected"/>
								</c:when>
								<c:when test="${fn:contains(loginMember.memberGender,'M')}">
									<c:set var="CM" value="selected"/>
								</c:when>
							</c:choose>
							<select class="kjh-select"name="memberGender" id="memberGender">
								<option value="" ${C0}>성별</option>
								<option value="F" ${CF}>여</option>
								<option value="M" ${CM}>남</option>
							</select>
							</td>
						</tr>

						<%-- 이메일 수신 동의 --%>
            <c:choose>
								<c:when test="${loginMember.emailFlag =='Y'}">
									<c:set var="Y" value="checked"/>
								</c:when>
								<c:when test="${loginMember.emailFlag=='N'}">
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
            <c:choose>
								<c:when test="${loginMember.smsFlag =='Y'}">
									<c:set var="Y" value="checked"/>
								</c:when>
								<c:when test="${loginMember.smsFlag=='N'}">
									<c:set var="N" value="checked"/>
								</c:when>
            </c:choose>
						<tr>
							<th>SMS<br> 수신 동의<span class="star">*</span></th>
							<td>
								<input type="radio" name="smsFlag" id="m_sms_yn1" value="Y"  ${Y}>
								<label for="m_sms_yn1">수신</label>

								<input type="radio" name="smsFlag" id="m_sms_yn2" value="N"  ${N}>
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
								<td class="kjh-input"><input type="text"value="${fn:substring(loginMember.memberBirth,0,10)}"></td>
							</tr>

							<%-- 결혼 유무 --%>
							<tr>
								<th>결혼유무</th>
								<td colspan="3">
									<input type="radio" name="marriageFlag" id="marriage_yn1" value="N">
									<label for="marriage_yn1">미혼</label>

									<input type="radio" name="marriageFlag" id="marriage_yn2" value="Y">
									<label for="marriage_yn2">기혼</label>
									<span class="kjh-married"> 결혼기념일 : 
										<input type="text" name="memberWedding" size="4" maxlength="4" >년
										
										<input type="text" name="memberWedding" size="4" maxlength="4" >월
										
										<input type="text" name="memberWedding" size="4" maxlength="4" >일
									</span>
								</td>	
							</tr>         

							<%-- 유선 전화 --%>	
							<tr>
								<th>유선전화</th>
								<td class="kjh-input" colspan="3">
									<input type="text"  name="memberTel" size="1" name="m_col" id="m_col"> -
									<input type="text"  name="memberTel" size="1" name="m_col" id="m_col"> -
									<input type="text"  name="memberTel" size="1" name="m_col" id="m_col"> 
								</td>
							</tr>  

							<%-- 주소 --%>
							<tr>
							     <%-- <c:set var="addr" value="${fn:split(loginMember.memberAddress,',,')}" /> --%>
								<th>주소</th>
								<td class="kjh-input" colspan="3">
									<input type="text"   name = "memberAddress" class="kjh-address" size="5px" readonly>
									<input type="button" name = "memberAddress" class="kjh-btn"     value="우편번호검색"><br>
									<input type="text"   name = "memberAddress" class="kjh-address" size="35px"readonly> 
									<input type="text"   name = "memberAddress" class="kjh-address" size="35px">
								</td>
							</tr>      

							<%-- 회원탈퇴 --%>
							<tr>
								<th>회원탈퇴</th>
								<td  colspan="3"><a class="kjh-member-delete" href="memeberDelete" >회원탈퇴</a></td>
							</tr>                        
						</table>
					</div> 
					<div class="kjh-btn-yn">
						<button>확인</button>
					<%-- <a href="" class="yes">확인</a>
					<a href="" class="no">취소</a> --%>

					</div>
					</form>
				</div> 
			</div>  
		</div> 

		<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
		<script src="/resources/js/member/memberEdit.js"></script> 
		<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	</body>
</html>