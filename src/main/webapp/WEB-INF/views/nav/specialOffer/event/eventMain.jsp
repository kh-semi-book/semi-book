<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<li><a href="/nav/specialOffer/event/detail"> <span> <img src="/resources/image/nav/specialOffer/event/event1.jpg"></img>
						</span>
							<div id="strong">
								<strong>[스파] Refresh Your Day</strong>
							</div>
							<div id="notice1">페이셜 . 바디 트리트먼트 10% 할인</div>
							<div id="notice2">
								<div id="date">프로모션 기간 2022-07-15 ~ 2022-12-31</div>
							</div>
							<p>
								<br>
							</p>
					</a></li>
					<li><a href="/html/event_2.html"> <span> <img src="/image/event2.jpg"></img>
						</span>
							<div id="strong">
								<strong>[아트 클래스] My Palette</strong>
							</div>
							<div id="notice1">세상에 하나뿐인 나만의 작품을 완성해 보는 시간</div>
							<div id="notice2">
								<div id="date">프로모션 기간 2019-10-05 ~ 2022-12-31</div>
							</div>
							<p>
								<br>
							</p>
					</a></li>

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