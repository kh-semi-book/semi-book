<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 프로모션</title>
<link rel="stylesheet" href="/resources/css/nav/specialOffer/roomPromotion/promotionType.css">
<link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div id="promotion_page">
		<div id="promotion_image"></div>

		<div id="promotion_head_area">
			<section></section>
			<section id="promotion_title">
				<div>
					<a href="/">HOME</a> > 
					<a href="/nav/specialOffer/roomPromotion">SPECIAL OFFER</a> > 
					<a href="/nav/specialOffer/roomPromotion">객실 프로모션</a> 
				</div>
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
				<img src="/resources/image/nav/specialOffer/roomPromotion/promotion1_detail.jpg">
			</section>
			<section id="promotion_menu_return">
				<div>
					<a href="/nav/specialOffer/roomPromotion">목록</a>
				</div>
			</section>
		</div>

		<div id="promotion_foot_area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>
</html>