<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>인피니티풀 - Hidden Cliff Hotel and Nature</title>

	<link rel="stylesheet" href="/resources/css/nav/infinitiPool/infinitiPool.css">
	<link rel="stylesheet" href="/resources/css/common/main.css">

	<script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

	<style> body { margin: auto; } </style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<!-- =================================[ header ]=================================== -->

	<div class="reservation-lookUp-page">
		<!-- 상단 배경 이미지 -->
		<div class="rsc-top-image" width="100%"></div>
		<div class="rsc-head-area">
			<section></section>
			<section class="rsc-body-TopArea">
				<!-- 페이지 조회  -->
				<nav class="rsc-page-list">
					<a href="/">HOME</a> > <a href="#">THE INFINITI POOL</a> > <a href="#">인피티니풀</a>
				</nav>
				<!-- 페이지 제목 -->
				<div class="rsc-page-title">
					<h1>인피니티풀</h1>
				</div>
			</section>
			<section></section>
		</div>
		<div class="rsc-body-area">
			<div class="reservation-content-main">
				<!-- 이미지 영역-->
				<div id="rsc-image-pool">
					<span class="move prev">&#x3C;</span>
					<span class="move next">&#x3E;</span>
					<img src="/resources/image/nav/infinitiPool/infinityPool1.jpg" width="1000px" id="mainImage"> 
				</div>

				<br><br><br>

				<p id="rsc-image-text">
					국내 최대 47m를 자랑하는 인피니티 풀은 1년 365일 이용 가능한 사계절 온수풀입니다.<br> 제주도 원시림에 둘러싸인 채 지상에서 15m, 계곡에서 35m 떨어져 있어 마치 숲 속에서<br> 유영하는 듯한 이국적이고 색다른 분위기를 즐길 수 있습니다.<br>
				</p>

				<br><br><br>

				<!-- 버튼 (메뉴 전체보기 / 다이닝이벤트) -->
				<div class="rsc-btn">
					<button id="rsc-btn-menu">
						<a href="/resources/image/nav/infinitiPool/infinifi_pool_Menu.pdf" target="_blank"> 
						메뉴 전체보기 </a>
					</button>
					&nbsp;
					<button id="rsc-btn-event">
						<a href="/nav/specialOffer/dining"> 다이닝이벤트 </a>
					</button>
				</div>
				<br>
				<br>
				<!-- 안내사항 -->
				<div id="rsc-notification">
					<p id="rsc-notification-p">· 인피니티 풀 및 인피니티 바 운영시간은 방역 지침에 따라 별도 안내 없이 변경될 수 있습니다.</p>
				</div>
				<br>
				<br>
				<!-- 1번 테이블 (인피니티 온수 풀, 이용안내) -->
				<div>
					<table id="rsc-table-pool">
						<tr>
							<td width="1000px" colspan="5" id="rsc-blank"></td>
						</tr>
						<tr>
							<th rowspan="3" width="140px" height="200px">인피니티 풀</th>
							<th width="140px" height="60px">위치</th>
							<td width="290px" height="60px" id="table-content">1F</td>
							<th width="140px" height="60px">대여품목</th>
							<td width="290px" height="60px" id="table-content">구명조끼, 패들점퍼, 킥판(한정 수량)</td>
						</tr>
						<tr>
							<th height="60px">이용대상</th>
							<td id="table-content">투숙객 전용</td>
							<th height="60px">운영시간</th>
							<td id="table-content">09:00 ~ 22:00 (19:30 ~ 22:00 유료)</td>
						</tr>
						<tr>
							<th>이용문의</th>
							<td colspan="3" id="table-content">064-795-4151</td>
						</tr>
						<tr>
							<td colspan="5" id="rsc-blank-1"></td>
						</tr>
						<tr id="rsc-last-tr">
							<th>이용안내</th>
							<td colspan="4" width="140px" height="300px" id="table-content">
								<p id="table-content">
									· 인피니티 풀은 투숙객 전용 공간입니다. <br> · 분실 위험이 있는 귀중품은 객실에 보관해 주시기 바랍니다. <br> · 깨끗한 수질 관리를 위하여 샤워 후 입수 바라며 수영복 착용 후 이용 가능 합니다.<br> · 신장 1.3m 미만 어린이는 반드시 안전조끼 착용과 보호자 동반 입수 시 수영장 이용이
									가능합니다. <br> · 수영장 내 위생과 안전을 위하여 아래 물품의 반입을 금지합니다.<br> &nbsp;&nbsp;- 외부 음식물, 금속이나 유리 등 깨질 수 있는 소재의 제품<br> &nbsp;&nbsp;- 1m 이상의 튜브(보트, 베드), 스노클, 핀(오리발), 운동화형 아쿠아슈즈, 드론<br> ·
									안전사고 예방을 위하여 난간 위에 앉거나 서는 행위는 삼가 바랍니다.<br> · 인피니티 풀의 전체 지역은 금연구역입니다.<br> · 폭우나 태풍 등 기상 악화 발생 시 인피니티 풀 입장 및 이용이 제한될 수 있습니다.<br> · 인피니티 풀 운영시간은 호텔 사정으로 인하여 변경될 수 있습니다.<br>
								</p>
							</td>
						</tr>
						<tr>
							<td colspan="5" id="rsc-blank-2"></td>
						</tr>
					</table>
				</div>
				<br>
				<br>
				<!-- 2번 테이블 (인피니티 바) -->
				<div>
					<table id="rsc-table-var">
						<tr>
							<td colspan="6" id="rsc-blank"></td>
						</tr>
						<tr>
							<th width="140" height="125px" rowspan="2">인티니티 바</th>
							<th width="140">위치</th>
							<td width="290" id="table-content">1F</td>
							<th width="140">이용메뉴</th>
							<td width="290" id="table-content">음료</td>
						</tr>
						<tr>
							<th>이용문의</th>
							<td id="table-content">064-795-4163</td>
							<th>운영시간</th>
							<td id="table-content">10:00 ~ 21:30 (라스트 오더 21:00)</td>
						</tr>
						<tr>
							<td colspan="6" id="rsc-blank"></td>
						</tr>
					</table>
				</div>
				<br>
				<br>
				<!-- 인피니티 이미지 -->
				<div id="rsc-bottom-image">
					<div id="rsc-bottom-image-1">
						<img src="/resources/image/nav/infinitiPool/infinityBottom.jpg" width="500px" height="222px">
					</div>
					<div id="rsc-bottom-image-2">
						<h4>
							감각적인 음악과 화려한 불빛에 몸을 맡기고 <br> 인피니티 풀에서 특별한 제주의 밤을 즐겨보세요.
						</h4>
						<dl>
							<dt id="image-left-text">운영기간</dt>
							<dd id="image-right-text">상시운영</dd>
							<dt id="image-left-text">운영시간</dt>
							<dd id="image-right-text">19:30 ~ 22:00 (21:30부터 DJ 공연 없음 / DJ 목요일 휴무)</dd>
							<dt id="image-left-text">이용대상</dt>
							<dd id="image-right-text">투숙객 한정</dd>
							<dt id="image-left-text">이용요금</dt>
							<dd id="image-right-text">유료 (문의 064-795-4151)</dd>
							<dt id="image-left-text">이용문의</dt>
							<dd id="image-right-text">064-795-4151</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ----------------------[footer]--------------------------- -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	<script src="/resources/js/nav/infinitiPool/infinitiPool.js"></script>
</body>
</html>