<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기 - Hidden Cliff Hotel and Nature</title>
<link rel="stylesheet" href="/resources/css/reservation/reservation4.css">
<link rel="stylesheet" href="/resources/css/reservation/reservation3.css">
<link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
   <jsp:include page="/WEB-INF/views/reservation/reservation-header.jsp"/>
	<div id="reservation4_page">
		<div id="reservation4_image"></div>
		<div id="reservation4_head_area">
			<section></section>
			<section id="reservation4_title">
				<div>HOME > 예약하기</div>
				<div>예약하기</div>
			</section>
			
			
			
			<section></section>
		</div>
		<div id="reservation4_body_area">
			<div id="reservation4_step_area">
				<div class="reservation4_step" id="step1">
					<p class="step">STEP 01</p>
					<p>일정선택</p>
				</div>
				<div class="reservation4_step" id="step2">
					<p class="step">STEP 02</p>
					<p>객실&패키지 선택</p>
				</div>
				<div class="reservation4_step" id="step3">
					<p class="step">STEP 03</p>
					<p>옵션 선택</p>
				</div>
				<div class="reservation4_step" id="step4">
					<p class="step">STEP 04</p>
					<p>고객 정보 입력</p>
				</div>
				<div class="reservation4_step" id="step5">
					<p class="step">STEP 05</p>
					<p>예약 완료</p>
				</div>
			</div>
			<div id="reservation4_content_area">
			
			${nonMember }
			
				<div></div>
				<div id="reservation4_book_area">
					<div id="reservation_input_area">
						<form action="/reservation/reservation5" method="post" name="reservation4_form" id="reservation4_form">
							<div id="booker-info">
							
								<p class="table-title">고객 정보 입력</p>
								<table class="reservation-table">
									<tr>
										<th class="row-title"><label for="booker1">예약자</label></th>
										<c:choose>
											<c:when test="${not empty sessionScope.loginMember}">
												<td class="book-input"><input type="text" class="input name" name="booker1" id="booker1" value="${loginMember.memberName}"></td>
											</c:when>
											<c:otherwise>
												<td class="book-input"><input type="text" class="input name" name="booker1" id="booker1" value="${param.inputName}"></td>
											</c:otherwise>
										</c:choose>
									</tr>
									<tr>
										<th class="row-title"><label for="booker2">투숙자</label></th>
										<td class="book-input"><input type="text" class="input name" name="guestName" id="booker2"> <input type="checkbox" name="equal" id="equal" checked> <label for="equal">예약자와
												동일</label></td>
									</tr>
									<tr>
										<th class="row-title">생년월일</th>
										<td class="book-input"><select name="birthyear" id="book-input-birth1" >
												<option value="1934">1934</option>
												<option value="1935">1935</option>
												<option value="1936">1936</option>
												<option value="1937">1937</option>
												<option value="1938">1938</option>
												<option value="1939">1939</option>
												<option value="1940">1940</option>
												<option value="1934">1934</option>
												<option value="1935">1935</option>
												<option value="1936">1936</option>
												<option value="1937">1937</option>
												<option value="1938">1938</option>
												<option value="1939">1939</option>
												<option value="1940">1940</option>
												<option value="1941">1941</option>
												<option value="1942">1942</option>
												<option value="1943">1943</option>
												<option value="1944">1944</option>
												<option value="1945">1945</option>
												<option value="1946">1946</option>
												<option value="1947">1947</option>
												<option value="1948">1948</option>
												<option value="1949">1949</option>
												<option value="1950">1950</option>
												<option value="1951">1951</option>
												<option value="1952">1952</option>
												<option value="1953">1953</option>
												<option value="1954">1954</option>
												<option value="1955">1955</option>
												<option value="1956">1956</option>
												<option value="1957">1957</option>
												<option value="1958">1958</option>
												<option value="1959">1959</option>
												<option value="1960">1960</option>
												<option value="1961">1961</option>
												<option value="1962">1962</option>
												<option value="1963">1963</option>
												<option value="1964">1964</option>
												<option value="1965">1965</option>
												<option value="1966">1966</option>
												<option value="1967">1967</option>
												<option value="1968">1968</option>
												<option value="1969">1969</option>
												<option value="1970">1970</option>
												<option value="1971">1971</option>
												<option value="1972">1972</option>
												<option value="1973">1973</option>
												<option value="1974">1974</option>
												<option value="1975">1975</option>
												<option value="1976">1976</option>
												<option value="1977">1977</option>
												<option value="1978">1978</option>
												<option value="1979">1979</option>
												<option value="1980">1980</option>
												<option value="1981">1981</option>
												<option value="1982">1982</option>
												<option value="1983">1983</option>
												<option value="1984">1984</option>
												<option value="1985">1985</option>
												<option value="1986">1986</option>
												<option value="1987">1987</option>
												<option value="1988">1988</option>
												<option value="1989">1989</option>
												<option value="1990">1990</option>
												<option value="1991">1991</option>
												<option value="1992">1992</option>
												<option value="1993">1993</option>
												<option value="1994">1994</option>
												<option value="1995">1995</option>
												<option value="1996">1996</option>
												<option value="1997">1997</option>
												<option value="1998">1998</option>
												<option value="1999">1999</option>
												<option value="2000">2000</option>
												<option value="2001">2001</option>
												<option value="2002">2002</option>
												<option value="2003">2003</option>
												<option value="2004">2004</option>
												<option value="2005">2005</option>
												<option value="2006">2006</option>
												<option value="2007">2007</option>
												<option value="2008">2008</option>
												<option value="2009">2009</option>
												<option value="2010">2010</option>
												<option value="2011">2011</option>
												<option value="2012">2012</option>
												<option value="2013">2013</option>
												<option value="2014">2014</option>
												<option value="2015">2015</option>
												<option value="2016">2016</option>
												<option value="2017">2017</option>
												<option value="2018">2018</option>
												<option value="2019">2019</option>
												<option value="2020">2020</option>
												<option value="2021">2021</option>
												<option value="2022">2022</option>
										</select> 년 <select name="birthmonth" id="book-input-birth2">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select> 월 
										<select name="birthmonth" id="book-input-birth3">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
										</select> 일</td>
									</tr>
									<tr>
										<th class="row-title">이메일</th>
										<c:choose>
											<c:when test="${not empty sessionScope.loginMember}">
<td class="book-input"><input type="text" class="input" name="booker-email1" id="book-input-email1" value="${fn:split(loginMember.memberEmail,'@')[0]}">@ <input type="text" class="input" id="book-input-email2" value="${fn:split(loginMember.memberEmail,'@')[1]}"> <select name="booker-email2" id="book-input-email3">
												<option value="naver.com">naver.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="nate.com">nate.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="freechal.com">freechal.com</option>
												<option value="직접입력">직접입력</option>
										</select>  <br>											</c:when>
											<c:otherwise>
<td class="book-input"><input type="text" class="input" name="booker-email1" id="book-input-email1" value="${fn:split(param.inputEmail,'@')[0]}">@ <input type="text" class="input" id="book-input-email2" value="${fn:split(param.inputEmail,'@')[1]}"> <select name="booker-email2" id="book-input-email3">
												<option value="naver.com">naver.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="nate.com">nate.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="freechal.com">freechal.com</option>
												<option value="직접입력">직접입력</option>
										</select>  <br>											</c:otherwise>
										</c:choose>
										
											<p name="email-info">(다음/한메일은 수신이 안될 수 있습니다.)</p></td>
									</tr>
									<tr>
										<th class="row-title">휴대폰</th>
										<c:choose>
											<c:when test="${not empty sessionScope.loginMember}">
												<td class="book-input"><input type="text" class="input bookerphone" name="bookertel1" id="book-input-phone1" value="${fn:substring(loginMember.memberPhone,0,3)}">- <input type="text" class="input bookerphone" name="bookertel2" value="${fn:substring(loginMember.memberPhone,3,7)}"
											id="book-input-phone2">- <input type="text" class="input bookerphone" name="bookertel3" id="book-input-phone3" value="${fn:substring(loginMember.memberPhone,7,11)}"></td>											</c:when>
											<c:otherwise>
												<td class="book-input"><input type="text" class="input bookerphone" name="bookertel1" id="book-input-phone1" value="${fn:substring(param.inputTel,0,3)}">- <input type="text" class="input bookerphone" name="bookertel2" value="${fn:substring(param.inputTel,3,7)}"
											id="book-input-phone2">- <input type="text" class="input bookerphone" name="bookertel3" id="book-input-phone3" value="${fn:substring(param.inputTel,7,11)}"></td>											</c:otherwise>
										</c:choose>
										
									</tr>
									<tr>
										<th class="row-title">요청사항</th>
										<td class="book-input"><textarea name="guestRequest" class="input" id="text-area" cols="60" rows=10">
                                            </textarea></td>
									</tr>
								</table>
							</div>
							<div id="card-info">
								<p class="table-title">카드정보 개런티용</p>
								<table class="reservation-table">
									<tr>
										<th class="row-title">카드 종류</th>
										<td class="card-input"><select name="cardType" id="book-input-cardType">
												<option value="선택">선택</option>
												<option value="국민카드">국민카드</option>
												<option value="우리카드">우리카드</option>
												<option value="하나카드">하나카드</option>
												<option value="신한카드">신한카드</option>
												<option value="삼성카드">삼성카드</option>
												<option value="현대카드">현대카드</option>
												<option value="롯데카드">롯데카드</option>
												<option value="아멕스카드">아멕스카드</option>
												<option value="비씨카드">비씨카드</option>
												<option value="마스터카드">마스터카드</option>
												<option value="비자카드">비자카드</option>
												<option value="농협카드">농협카드</option>
										</select></td>
									</tr>
									<tr>
										<th class="row-title">카드 번호</th>
										<td class="card-input">
											<input type="number" class="input cardnumber" name="cardnumber1" id="book-input-cardNum1"> - 
											<input type="number" class="input cardnumber" name="cardnumber2" id="book-input-cardNum2"> - 
											<input type="number" class="input cardnumber" name="cardnumber3" id="book-input-cardNum3"> - 
											<input type="number" class="input cardnumber" name="cardnumber4" id="book-input-cardNum4">
										</td>
									</tr>
									<tr>
										<th class="row-title">만기일</th>
										<td class="card-input"><select name="cardmonth" id="book-input-cardValidity1">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select> 월 <select name="cardyear" id="book-input-cardValidity2">
												<option value="22">2022</option>
												<option value="23">2023</option>
												<option value="24">2024</option>
												<option value="25">2025</option>
												<option value="26">2026</option>
												<option value="27">2027</option>
												<option value="28">2028</option>
										</select> 년</td>
									</tr>
								</table>
								<p name="card-info">* 카드정보는 개런티용으로만 사용되며, 결제는 현장에서 체크인 시 진행됩니다.</p>
							</div>
							<div id="cancel-policy">
								<p class="table-title">취소정책</p>
								<div class="agree-content">
									예약취소 및 미입실(No Show)에 관한 위약금 규정에 관하여 공정거래위 산하 소비자 보호원 기준에 따라 아래와 같이 위약금 부과 처리에 관해 안내 하오니, 이용에 유의 하시기 바랍니다. <br> <br> ※ 조식의 경우 취소 및 환불은 체크인 전일 경우만 가능하며, 체크인 후에는 불가합니다. <br> ※ 총
									요금이란? <br> 예약 시 확정되었던 객실 총 요금이 기준입니다. <br> 1객실 2일 이상 예약 시, 2객실 이상 예약 시에도 위약금 규정에 따라 동일하게 처리됩니다. <br> * 패키지 상품의 경우 총 결제 예정금액에서 규정에 따라 위약금이 부과됩니다. <br> <br> [객실 예약 취소
									규정] <br> ▶도착일 5일 이전 취소 수수료 별도 없음 <br> ▶도착일 4일 이전부터 3일 이내 취소 경우, 1박의 50%에 해당하는 취소 수수료 부과. <br> ▶도착일 2일 이전부터 1일 이내 취소 경우, 1박의 80%에 해당하는 취소 수수료 부과. <br> ▶도착 당일 취소나 노쇼우 경우, 전
									투숙일정의 1박 요금의 취소 수수료 부과. <br> ▶예약 변경은 취소와 동일하게 취소로 간주 되며, 예약 진행 및 취소, 변경은 주중 업무시간(평일 09:00~18:00) 내에만 가능합니다. <br> ▶업무시간 이후 요청 건은 익일 규정과 동일하게 적용됩니다. <br> <br> ▣ 객실 예약 취소
									규정(성수기&연휴) <br> 2022년 : 1/1-2, 1/29-2/1, 2/27-3/1, 5/5-7, 6/4-6, 7/23-8/15, 9/9-12, 10/1-2, 12/17-31 <br> ▶도착일 8일 이전 취소 수수료 별도 없음. <br> ▶도착일 7일 이전부터 6일 이내 취소 경우, 1박 요금의 50%에
									해당하는 취소 수수료 부과. <br> ▶도착일 5일 이전부터 4일 이내 취소 경우, 1박 요금의 취소 수수료 부과. <br> ▶도착일 3일 이전부터 도착 당일 취소나 노쇼우 경우, 호텔은 전체 예약 객실 요금의 100%에 해당하는 취소수수료를 부과. <br>
								</div>
							</div>
							<div id="agree-info">
								<p class="table-title">개인정보 수집 및 이용에 대한 동의</p>
								<div class="agree-content">
									개인정보의 수집항목 <br> 히든 클리프 호텔 & 네이쳐는 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. <br> 히든 클리프 호텔 & 네이쳐의 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며, 선택항목을 입력하시지 않았다 하여 서비스 이용에 제한은 없습니다. <br>

									1) 고객 문의(연회 및 웨딩) 시 수집하는 개인정보의 항목 <br> - 필수항목 : 성명, 이메일, 전화번호, 주소, 휴대폰, 행사종류, 인원수, 행사날짜, 행사시간, 문의사항 <br> 2) 객실 예약 시 수집하는 개인정보의 항목 <br> - 필수항목 : 예약자, 투숙자, 투숙인원, 예약타입, 호텔도착일자,
									호텔출발일자, 생년월일, 이메일, 주소, 휴대폰, 카드번호, 요구사항 <br> - 선택항목 : 팩스번호, 객실수, 추가침대 수,흡연여부 <br> ① 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. <br> 단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련
									권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
								</div>
							</div>
							<div id="agree-check">
							<input type="hidden" name="guestBirth">
							<input type="hidden" name="guestPhone">
							<input type="hidden" name="guestEmail">
							<input type="hidden" name="cardNo">
							<input type="hidden" name="cardExpireDate">
							<input type="hidden" value="${reserve.checkInInput}" name="checkInInput" />
							<input type="hidden" value="${reserve.checkOutInput}" name="checkOutInput" /> 
							<input type="hidden" value="${reserve.nights}" name="nights" /> 
							<input type="hidden" value="${reserve.roomCount}" name="roomCount" /> 
							<input type="hidden" value="${reserve.adultCount}" name="adultCount" /> 
							<input type="hidden" value="${reserve.childCount}" name="childCount" />
							<input type="hidden"  value="${reserve.roomTypeNo}" name="roomTypeNo"/>
							<input type="hidden" value="${reserve.roomViewNo}" name="roomViewNo"/>
							<input type="hidden" value="${reserve.bedTypeNo}" name="bedTypeNo"/>
							<input type="hidden" value="${reserve.promotionNo}" name="promotionNo"/>
							<input type="hidden" value="${reserve.price}" name="price"/>
							<input type="hidden" value="${param.optionSet}" name="optionSet"/>
							<input type="hidden" value="${nonMember.nonMemberName}" name="nonMemberName"/>
							<input type="hidden" value="${nonMember.nonMemberPhone}" name="nonMemberPhone"/>
							<input type="hidden" value="${nonMember.nonMemberEmail}" name="nonMemberEmail"/>
							
							
							<input type="checkbox" name="agree" id="agree"><label for="agree">취소정책 및 개인정보 수집 동의하기</label>
							</div>
							<div id="applyBtn">
								<button id="reservationApply">예약신청</button>
							</div>

						</form>
					</div>
					<div id="reservation_side_area">
						<%-- <div class="side-table" id="side-table">
							<div>
								<div class="side-margin"></div>
								<div class="side-table-head">일정</div>
								<table id="schedule">
									<tr>
										<th>체크인</th>
										<td><input type="text" value="${reserve.checkInInput}" readonly></td>
									</tr>
									<tr>
										<th>체크아웃</th>
										<td><input type="text" value="${reserve.checkOutInput}" readonly></td>
									</tr>
									<tr>
										<th>박수</th>
										<td><input type="text" class="schedule-num" readonly value="${reserve.nights}"> 박</td>
									</tr>
									<tr>
										<th><label for="roomCnt">객실수</label></th>
										<td><input type="text" value="1" class="schedule-num" id="roomCnt" value="${reserve.roomCount}" readonly> 실</td>
									</tr>
									<tr>
										<th>인원수</th>
										<td>어른 <input type="text" value="1" class="schedule-num" value="${reserve.adultCount}" readonly> 어린이 <input type="text" value="1" value="${reserve.childCount}" class="schedule-num" readonly> 
										<span  class="tooltip">
												<img src="/resources/image/button/info.gif" id="schedule-info">
												<span class="tooltip-text">
													<div>48개월 이상~만12세 이하</div>
													<div>(인원 추가 요금 별도 발생)</div>
												</span>
											</span>
										</td>
									</tr>
								</table>
							</div>
							<div>
								<div class="side-table-head ">객실 & 패키지</div>
								<div id="roomAndPackage">
									<div id="selectRoomName">
										<strong class="select_roomName">${reserve.roomTypeName}</strong>
									</div>
									<c:forEach var="date" items="${dateList}">
								
									<div id="dateAndPrice">
							
										<div>
											<strong>${date}</strong>
										</div>
										<div>
											<strong>260,000원</strong> <span class="vat1">(VAT)별도</span>
										</div>
									</div>
									</c:forEach>
									<div id="totalPrice_roomPackage">
										<strong>${reserve.nights}</strong>원 <span class="vat2">(VAT)포함</span>
									</div>
								</div>
								<div class="side-table-head">옵션</div>
								<div id="option">
									<div id="optionName">
										<strong>성인2인조식(사전예약 20%할인가) + 소아1인 조식 무료/환불불가</strong>
									</div>
									<div id="optionCount">
										<div>
											<strong>2022-11-04</strong>
										</div>
										<div>
											<strong>65,600원</strong> <span class="optionCount">1개</span>
										</div>
									</div>
									<div id="totalPrice_option">
										<strong>65,600</strong>원 <span class="vat2">(VAT)포함</span>
									</div>
								</div>
								
								<div id="totalPrice_All">
									<span>요금합계</span> <strong>340,600원 (VAT 포함)</strong> 
								</div>
								<div id="side-table-btn-area">
									<a href="#" class="side-table-btn">이전</a> <a href="#" class="side-table-btn">일정 재선택하기</a>
								</div>


							</div>
						</div> --%>
						${param.side}
					</div>
				</div>

			</div>
			<div id="reservation4_foot_area"></div>
		</div>
		</div>
		<jsp:include page="/WEB-INF/views/common/footer.jsp" />
		<script>
		//카드번호, 폰, 생년월일, 이메일 하나로 
			

			
		</script>
		<script src="/resources/js/reservation/reservation.js"></script>
		<script src="/resources/js/reservation/reservation4.js"></script>
		
		
		
</body>
</html>