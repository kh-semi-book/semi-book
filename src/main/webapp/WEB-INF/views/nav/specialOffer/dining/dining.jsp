<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이닝</title>
<link rel="stylesheet" href="/resources/css/nav/specialOffer/dining/diningType.css">
<link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div id="dining_page">
		<div id="dining_image"></div>

		<div id="dining_head_area">
			<section></section>
			<!-- <section id="dining_title">
				<div>
					<a href="/">HOME</a> > 
					<a href="/nav/specialOffer/dining">SPECIAL OFFER</a> > 
					<a href="/nav/specialOffer/dining">다이닝</a> 
				</div>
				<div>다이닝</div>
			</section> -->
			<div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/specialOffer/dining">> &nbsp;SPECIAL OFFER</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="/nav/specialOffer/dining">> &nbsp;다이닝</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>다이닝</h1>
            </div>
			<section></section>
		</div>

		<div id="dining_body_area">
			<section id="dining_detail_title">
				<div>${dining.diningTitle}</div>
			</section>
			<section id="dining_detail_date">
				<div class="detail date">
					<strong class="strong">프로모션 기간</strong> ${dining.diningStartDate} ~ ${dining.diningEndDate}
				</div>
			</section>
			<section id="dining_detail_content">
				<img src="${dining.diningConImg}">
			</section>
			<section id="dining_menu_return">
				<div>
					<a href="/nav/specialOffer/dining">목록</a>
				</div>
			</section>
		</div>

		<div id="dining_foot_area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>