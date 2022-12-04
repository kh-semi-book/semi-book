<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기4</title>
<link rel="stylesheet" href="/resources/css/reservation/reservation2.css">
<link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div id="reservation2_page">
		<div id="reservation2_image"></div>
		<div id="reservation2_head_area">
			<section></section>
			<section id="reservation2_title">
				<div>HOME > 예약하기</div>
				<div>예약하기</div>
			</section>
			<section></section>
		</div>
		<div id="reservation2_body_area">
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
			<div id="reservation2_content_area">
				<div></div>
				
				<div id="reservation2_book_area">
					<div id="reservation_select_area">
						<c:forEach var="promotion" items="${promotionList}">
						<div class="package-list">
							<div class="package-item">
								<div class="package-item-image">
									<img class="package-image" src=" ${promotion.promotionTitleImg}">
								</div>
								<div class="package-detail">
									<div class="package-detail-title">${promotion.promotionTitle}</div>
									<div class="package-detail-date">기간 : ${fn:substring(promotion.pStayStartDate,0,10)} ~ ${fn:substring(promotion.pStayEndDate,0,10)}</div>
									<div class="package-detail-sub">구성 : ${promotion.promotionSub}</div>
									<div class="package-detail-view">
										<a href="/nav/specialOffer/roomPromotion/detail/${promotion.promotionNo}">패키지 상세보기 ></a>
									</div>
								</div>
							</div>
							<div class="package-type">
								<c:forEach var="room" items="${promotion.roomType}">
									<form action="/reservation/reservation3" method="GET">
								<div class="package-type-option">
									<div class="package-view-type"><c:set var="myValue">${room}</c:set>${room}</div>
									
									<input type="hidden" value="${myValue}" name="roomTypeName"/>
									<input type="hidden" value="${reserve.checkInInput}" name="checkInInput"/>
									<input type="hidden" value="${reserve.checkOutInput}" name="checkOutInput"/>
									<input type="hidden" value="${reserve.nights}" name="nights"/>
									<input type="hidden" value="${reserve.roomCount}" name="roomCount"/>
									<input type="hidden" value="${reserve.adultCount}" name="adultCount"/>
									<input type="hidden" value="${reserve.childCount}" name="childCount"/>
									<input type="hidden" value="${promotion.promotionNo}" name="promotionNo"/>
									<div class="package-room-type">
										<div>
											<span>더블 (${reserve.nights}박)</span> <span> <fmt:formatNumber value="${promotion.promotionPrice}"/>원</span> <button class="selectBtn" >예약</button>
											<input type="hidden" value="1" name="bedTypeNo"/>
										</div>
										<div>
										
											<span>트윈 (${reserve.nights}박)</span> <span><fmt:formatNumber value="${promotion.promotionPrice}"/>원</span> <button class="selectBtn">예약</button>
											<input type="hidden" value="2" name="bedTypeNo"/>
										</div>
									</div>
								</div>
								</form>
								</c:forEach>
							</div>
						</div>
						
						</c:forEach>
					</div>
					<div id="reservation_side_area">
						<div class="side-table" id="side-table">
							<div>
								<div class="side-table-head">일정</div>
								<table id="schedule">
									<tr>
										<th>체크인</th>
										<td><input type="text" value="${reserve.checkInInput}" name="checkInInput" readonly></td>
									</tr>
									<tr>
										<th>체크아웃</th>
										<td><input type="text" value="${reserve.checkOutInput}" name="checkOutInput" readonly></td>
									</tr>
									<tr>
										<th>박수</th>
										<td><input type="text" value="${reserve.nights}" name="nights" class="schedule-num" readonly> 박</td>
									</tr>
									<tr>
										<th><label for="roomCnt">객실수</label></th>
										<td><input type="text" value="${reserve.roomCount}" name="roomCount" class="schedule-num" id="roomCnt" readonly> 실</td>
									</tr>
									<tr>
										<th>인원수</th>
										<td>어른 <input type="text" value="${reserve.adultCount}" name="adultCount" class="schedule-num" readonly> 어린이 <input type="text" value="${reserve.childCount}" name="childCount" class="schedule-num" readonly> 
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
							<div id="side-table-btn-area">
								<a href="#" class="side-table-btn">일정 재선택하기</a>
							</div>
						</div>
					</div>
				</div>
				
				
				${reserve}
				${myValue}
			</div>
			<div id="reservation2_foot_area"></div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	<script src="/resources/js/reservation/reservation.js"></script>
</body>
</html>