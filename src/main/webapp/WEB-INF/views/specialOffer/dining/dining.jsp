<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이닝</title>
<link rel="stylesheet" href="/resources/css/specialOffer/dining/dining_type.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div id="dining_page">
		<div id="dining_image"></div>

		<div id="dining_head_area">
			<section></section>
			<section id="dining_title">
				<div>HOME > SPECIAL OFFER > 다이닝</div>
				<div>다이닝</div>
			</section>
			<section></section>
		</div>

		<div id="dining_body_area">
			<section id="dining_detail_title">
				<div>[치치/인피니티 바] Autumn vibes</div>
			</section>
			<section id="dining_detail_date">
				<div class="detail date">
					<strong class="strong">프로모션 기간</strong> 2022-10-01 ~ 2022-12-31
				</div>
			</section>
			<section id="dining_detail_content">
				<img src="/image/dining_1.jpg">
			</section>
			<section id="dining_menu_return">
				<div>
					<a href="/html/dining_main.html">목록</a>
				</div>
			</section>
		</div>

		<div id="dining_foot_area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>