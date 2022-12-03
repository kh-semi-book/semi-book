<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" href="/resources/css/nav/specialOffer/event/eventType.css">
<link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<div id="event_page">
		<div id="event_image"></div>

		<div id="event_head_area">
			<section></section>
			<section id="event_title">
				<div>
					<a href="/">HOME</a> > 
					<a href="/nav/specialOffer/event">SPECIAL OFFER</a> > 
					<a href="/nav/specialOffer/event">이벤트</a> 
				</div>
				<div>이벤트</div>
			</section>
			<section></section>
		</div>

		<div id="event_body_area">
			<section id="event_detail_title">
				<div>${event.eventTitle}</div>
			</section>
			<section id="event_detail_date">
				<div class="detail date">
					<strong class="strong">프로모션 기간</strong> ${event.eventStartDate} ~ ${event.eventEndDate}
				</div>
			</section>
			<section id="event_detail_content">
				<img src="${event.eventConImg}">
			</section>
			<section id="event_menu_return">
				<div>
					<a href="/nav/specialOffer/event">목록</a>
				</div>
			</section>
		</div>

		<div id="event_foot_area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>