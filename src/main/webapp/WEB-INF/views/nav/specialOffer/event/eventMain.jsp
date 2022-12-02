<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="eventList" value="${eventList}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" href="/resources/css/nav/specialOffer/event/eventMain.css">
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
			<div id="event_body_menu">
				<ul id="event_list">
					<c:forEach var="event" items="${eventList}">
						<li>
							<a href="/nav/specialOffer/event/detail/${event.eventNo}"> 
								<span> <img src="${event.eventTitleImg}"></img> </span>
								<div id="strong">
									<strong>${event.eventTitle}</strong>
								</div>
								<div id="notice1">${event.eventSub}</div>
								<div id="notice2">
									<div id="date">프로모션 기간 ${event.eventStartDate} ~ ${event.eventEndDate}</div>
								</div>
							<p>
								<br>
							</p>
							</a>
						</li>	
					</c:forEach>
					
				</ul>
			</div>
			<div class="paging">
				<span> <a href=""> <img src="/resources/image/button/btn_paging_first.png" alt="">
				</a>
				</span> <span> <a href=""> <img src="/resources/image/button/btn_paging_prev_on.png" alt="">
				</a>
				</span> <span> <a href="" class="on">1</a>
				</span> <span> <a href=""> <img src="/resources/image/button/btn_paging_next_on.png" alt="">
				</a>
				</span> <span> <a href=""> <img src="/resources/image/button/btn_paging_last_on.png" alt="">
				</a>
				</span>
			</div>
		</div>
		<div id="dining_foot_area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>