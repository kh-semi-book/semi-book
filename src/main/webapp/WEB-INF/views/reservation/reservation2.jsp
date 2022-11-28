<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						<div class="package-list">
							<div class="package-item">
								<div class="package-item-image">
									<img class="package-image" src="promotion1.jpg">
								</div>
								<div class="package-detail">
									<div class="package-detail-title">My Wish List</div>
									<div class="package-detail-date">기간 : 2022-11-22 ~ 2023-01-31</div>
									<div class="package-detail-sub">구성 : 디럭스 1박+조식 2인+풀문나이트+달바 스페셜 패키지</div>
									<div class="package-detail-view">
										<a href="#">패키지 상세보기 ></a>
									</div>
								</div>
							</div>
							<div class="package-type">
								<div class="package-type-option">
									<div class="package-view-type">가든 디럭스</div>
									<div class="package-room-type">
										<div>
											<span>더블 (1박)</span> <span>270,000원</span> <a href="/reservation/reservation3" class="selectBtn">예약</a>
										</div>
										<div>
											<span>트윈 (1박)</span> <span>270,000원</span> <a href="" class="selectBtn">예약</a>
										</div>
									</div>
								</div>
								<div class="package-type-option">
									<div class="package-view-type">클리프 디럭스</div>
									<div class="package-room-type">
										<div>
											<span>더블 (1박)</span> <span>270,000원</span> <a href="" class="selectBtn">예약</a>
										</div>
										<div>
											<span>트윈 (1박)</span> <span>270,000원</span> <a href="" class="selectBtn">예약</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="package-list">
							<div class="package-item">
								<div class="package-item-image">
									<img class="package-image" src="promotion1.jpg">
								</div>
								<div class="package-detail">
									<div class="package-detail-title">My Wish List</div>
									<div class="package-detail-date">기간 : 2022-11-22 ~ 2023-01-31</div>
									<div class="package-detail-sub">구성 : 디럭스 1박+조식 2인+풀문나이트+달바 스페셜 패키지</div>
									<div class="package-detail-view">
										<a href="#">패키지 상세보기 ></a>
									</div>
								</div>
							</div>
							<div class="package-type">
								<div class="package-type-option">
									<div class="package-view-type">가든 디럭스</div>
									<div class="package-room-type">
										<div>
											<span>더블 (1박)</span> <span>270,000원</span> <a href="" class="selectBtn">예약</a>
										</div>
										<div>
											<span>트윈 (1박)</span> <span>270,000원</span> <a href="" class="selectBtn">예약</a>
										</div>
									</div>
								</div>
								<div class="package-type-option">
									<div class="package-view-type">클리프 디럭스</div>
									<div class="package-room-type">
										<div>
											<span>더블 (1박)</span> <span>270,000원</span> <a href="" class="selectBtn">예약</a>
										</div>
										<div>
											<span>트윈 (1박)</span> <span>270,000원</span> <a href="" class="selectBtn">예약</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="reservation_side_area">
						<div class="side-table" id="side-table">
							<div>
								<div class="side-table-head">일정</div>
								<table id="schedule">
									<tr>
										<th>체크인</th>
										<td><input type="text" value="2022-11-04 (금)"></td>
									</tr>
									<tr>
										<th>체크아웃</th>
										<td><input type="text" value="2022-11-04 (금)"></td>
									</tr>
									<tr>
										<th>박수</th>
										<td><input type="text" value="1" class="schedule-num"> 박</td>
									</tr>
									<tr>
										<th><label for="roomCnt">객실수</label></th>
										<td><input type="text" value="1" class="schedule-num" id="roomCnt"> 실</td>
									</tr>
									<tr>
										<th>인원수</th>
										<td>어른 <input type="text" value="1" class="schedule-num"> 어린이 <input type="text" value="1" class="schedule-num"> <span><img src="/resources/image/button/info.gif"
												id="schedule-info"></span>
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

			</div>
			<div id="reservation2_foot_area"></div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	<script src="/resources/js/reservation/reservation.js"></script>
</body>
</html>