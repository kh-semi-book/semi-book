<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이닝</title>
<link rel="stylesheet" href="/resources/css/specialOffer/dining/dining_main.css">
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
			<div id="dining_body_menu">
				<ul id="dining_list">
					<li><a href="/html/dining_1.html"> <span> <img src="/image/dining1.jpg"></img>
						</span>
							<div id="strong">
								<strong>[치치/인피니티 바] Autumn Vibes</strong>
							</div>
							<div id="notice1">상큼한 청귤과 레몬으로 가을의 낭만을 담은 음료 2종</div>
							<div id="notice2">
								<div id="date">프로모션 기간 2022-10-01 ~ 2022-12-31</div>
							</div>
							<p>
								<br>
							</p>
					</a></li>
					<li><a href="/html/dining_2.html"> <span> <img src="/image/dining2.jpg"></img>
						</span>
							<div id="strong">
								<strong>[파노라마/비욘드] 1+1 Promotion</strong>
							</div>
							<div id="notice1">부담없는 가격으로 더하는 만찬의 즐거움</div>
							<div id="notice2">
								<div id="date">프로모션 기간 2021-08-02 ~ 2022-12-31</div>
							</div>
							<p>
								<br>
							</p>
					</a></li>

				</ul>
			</div>
			<div class="paging">
				<span> <a href=""> <img src="/image/first.png" alt="">
				</a>
				</span> <span> <a href=""> <img src="/image/prev.png" alt="">
				</a>
				</span> <span> <a href=""> </a>
				</span> <span> <a href=""> <img src="/image/next.png" alt="">
				</a>
				</span> <span> <a href=""> <img src="/image/last.png" alt="">
				</a>
				</span>
			</div>
			<div class="paging">
				<span> <a href=""> <img src="/image/btn_paging_first.png" alt="">
				</a>
				</span> <span> <a href=""> <img src="/image/btn_paging_prev_on.png" alt="">
				</a>
				</span> <span> <a href="" class="on">1</a>
				</span> <span> <a href=""> <img src="/image/btn_paging_next_on.png" alt="">
				</a>
				</span> <span> <a href=""> <img src="/image/btn_paging_last_on.png" alt="">
				</a>
				</span>
			</div>
		</div>
		<div id="dining_foot_area">하단 영역</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>