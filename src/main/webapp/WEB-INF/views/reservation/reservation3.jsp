<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>예약하기-3</title>


<link rel="stylesheet"
	href="/resources/css/reservation/reservation3.css">
<link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/reservation/reservation-header.jsp" />

	<div id="top-photo"></div>

	<div id="reservation4_body_area">

		<div id="top-menu">
			<a href="/">HOME</a>><a href="#">예약하기</a>
		</div>
		<div id="info-title">예약하기</div>

		<div id="reservation2_step_area">
			<div class="reservation2_step" id="step1">
				<p class="step">STEP 01</p>
				<p>일정선택</p>
			</div>
			<div class="reservation2_step" id="step2">
				<p class="step">STEP 02</p>
				<p>객실&패키지 선택</p>
			</div>
			<div class="reservation2_step" id="step3">
				<p class="step">STEP 03</p>
				<p>옵션 선택</p>
			</div>
			<div class="reservation2_step" id="step4">
				<p class="step">STEP 04</p>
				<p>고객 정보 입력</p>
			</div>
			<div class="reservation2_step" id="step5">
				<p class="step">STEP 05</p>
				<p>예약 완료</p>
			</div>
		</div>
		

		<div id="reservation3_option_title_area">
			<span>추가 옵션</span> <span>패키지 구성 외 추가로 필요한 옵션을 선택해 주세요.</span>
		</div>

		<div id="reservation3_content_area">

			<div id="reservation3_option_area">


				<div class="reservation3_option_content_area">
					<div class="reservation3_option_name">
						<div class="option-date">날짜</div>
						<div class="option-content">항목</div>
						<div class="option-amount">금액</div>
						<div class="option-count">개수</div>
					</div>

					<c:forEach var="date" items="${dateList}">
						<div class="reservation3_option_content">
							<div class="option-date" style="border-bottom: 1px solid #bbb">
								${date}</div>

							<div class="reservation3_option_date_content_list">
								<c:forEach var="option" items="${optionList}">
									<div class="reservation3_option_date_content">
										<div class="option-content">${option.optionName}</div>
										<div class="option-amount" id="${option.optionPrice}">
											<fmt:formatNumber value="${option.optionPrice}" />
											원
										</div>
										<div class="option-count">
											<select name="optionCount" id="${option.optionNo}">
												<c:forEach var="i" begin="0" end="${reserve.adultCount}">
													<option>${i}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>
					</c:forEach>
				</div>



				<c:choose>
					<c:when test="${not empty sessionScope.loginMember}">

						<form action="/reservation/reservation4" method="post" name="resFrm3">
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
							<input type="hidden" value="${reserve.checkInInput}" name="side" id="side"/>
							<input type="hidden" name="price"/>
							<input type="hidden" name="optionSet"/>

					<button id="reservation3-btn">예약하기</button>

				</form>

					</c:when>
					<c:otherwise>
						<form action="/reservation/reservationLogin" method="get" name="resFrm3">
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
							<input type="hidden" name="side" id="side"/>
							<input type="hidden" name="price"/>
							<input type="hidden" name="optionSet"/>
		
							<button id="reservation3-btn">예약하기</button>
		
						</form>
					</c:otherwise>
				</c:choose>



					
			</div>



			<div class="reservation3_side_area" id="reservation3_side_area">
				<div class="side-table" id="side-table">
					<div class="side-date-title">일정</div>


					<table id="side-date-content">
						<tr>
							<td>체크인</td>
							<td><input type="text" readonly name="checkInInput"
								id="checkInInput" value="${reserve.checkInInput}"></td>
						</tr>
						<tr>
							<td>체크아웃</td>
							<td><input type="text" readonly name="checkOutInput"
								id="checkOutInput" value="${reserve.checkOutInput}"></td>
						</tr>
						<tr>
							<td>박수</td>
							<td><input type="text" readonly size="1" name="nights"
								value="${reserve.nights}"> 박</td>
						</tr>
						<tr>
							<td>객실수</td>
							<td><input type="text" readonly size="1" name="roomCount"
								value="${reserve.roomCount}">실</td>
						</tr>
						<tr>
							<td>인원수</td>
							<td>어른<input type="text" readonly size="1" name="adultCount"
								value="${reserve.adultCount}"> 어린이<input type="text"
								readonly size="1" name="childCount"
								value="${reserve.childCount}"></td>
						</tr>
					</table>

					<div class="side-rooms-pack">
						<div class="side-rooms-pack-title">객실&패키지</div>

						<div class="side-room-name"><c:choose>
							<c:when test="${reserve.roomViewNo==1}">
								<c:set var="roomViewName" value="가든" />
							</c:when>
							<c:when test="${reserve.roomViewNo==2}">
								<c:set var="roomViewName" value="클리프" />
							</c:when>
							<c:when test="${reserve.roomViewNo==3}">
								<c:set var="roomViewName" value="파노라마" />
							</c:when>
						</c:choose> 
                        <c:choose> 
                            <c:when test="${reserve.roomTypeNo==1}">
                                <c:set var="roomTypeName" value="예래 스위트" />
                            </c:when>
                            <c:when test="${reserve.roomTypeNo==2}">
                                <c:set var="roomTypeName" value="패밀리 스위트" />
                            </c:when>
                            <c:when test="${reserve.roomTypeNo==3}">
                                <c:set var="roomTypeName" value="코너 디럭스" />
                            </c:when>
                            <c:when test="${reserve.roomTypeNo==4}">
                                <c:set var="roomTypeName" value="디럭스" />
                            </c:when>
                        </c:choose>
                        <c:choose> 
                            <c:when test="${reserve.bedTypeNo==1}">
                                <c:set var="bedTypeName" value="트윈" />
                            </c:when>
                            <c:when test="${reserve.bedTypeNo==2}">
                                <c:set var="bedTypeName" value="더블" />
                            </c:when>
                            <c:when test="${reserve.bedTypeNo==3}">
                                <c:set var="bedTypeName" value="트리플" />
                            </c:when>
                        </c:choose>  
                        ${roomTypeName} ${bedTypeName} ${roomViewName}</div>
						<table class="side-room-select">
							<c:forEach var="date" items="${dateList}">
								<tr>
									<td>${date}</td>
									<td><span><fmt:formatNumber value="${param.price}" />원(VAT별도)</span></td>
								</tr>
							</c:forEach>
						</table>
						<input type="hidden" value="${param.price*param.nights+(param.price*param.nights)*0.1}" id="roomsCost"/>
						<div class="side-room-cost-total"><fmt:formatNumber value="${param.price*param.nights+(param.price*param.nights)*0.1}" /> 원(VAT포함)</div>
					</div>

					<div class="side-option">
						<div class="side-option-title">옵션</div>
							
						<div class="side-option-cost"><span id="totalOptionCost"></span>원 (VAT포함)</div>
					</div>

					<div>
						<table id="total-money">
							<tr>
								<td>요금 합계</td>
								<td style="text-align:right;"><span id="totalCost"></span> (VAT포함)</td>
							</tr>
						</table>
					</div>


					<div id="option-btn-area">
						<a href="#">이전</a> <a href="/reservation/reservation4">일정
							재선택하기</a>

					</div>
				</div>
			</div>
		</div>

	</div>
	
	

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	<script src="/resources/js/reservation/reservation3.js"></script>

</body>
</html>