<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 프로모션</title>
<link rel="stylesheet" href="/resources/css/nav/specialOffer/roomPromotion/promotion_type.css">
<link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div id="promotion_page">
		<div id="promotion_image"></div>

		<div id="promotion_head_area">
			<section></section>
			<section id="promotion_title">
				<div>HOME > SPECIAL OFFER > 객실 프로모션</div>
				<div>객실 프로모션</div>
			</section>
			<section></section>
		</div>

		<div id="promotion_body_area">
			<section id="promotion_detail_title">
				<div>[얼리버드 Hidden Earlybird]</div>
				<div>
					<a href="#">예약</a>
				</div>
			</section>
			<section id="promotion_detail_date">
				<div class="detail date">
					<strong class="strong">투숙기간</strong> 2022-11-27~ 2023-07-16
				</div>
				<div class="detail date">
					<strong class="strong">판매기간</strong> 2022-10-13~ 2023-07-15
				</div>
				<div class="detail price">
					<strong class="strong">이용금액</strong> 220,000원 ~
				</div>
			</section>
			<section id="promotion_detail_content">
				<img src="/image/promotion_1.jpg">
			</section>
			<section id="promotion_menu_return">
				<div>
					<a href="/html/promotion_main.html">목록</a>
				</div>
			</section>
		</div>

		<div id="promotion_foot_area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>
</html>