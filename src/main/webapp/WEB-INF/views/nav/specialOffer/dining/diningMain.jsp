<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="diningList" value="${diningList}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이닝 - Hidden Cliff Hotel and Nature</title>
<link rel="stylesheet" href="/resources/css/nav/specialOffer/dining/diningMain.css">
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
			<div id="dining_body_menu">
				<ul id="dining_list">
					<c:forEach var="dining" items="${diningList}">
						<li>
							<a href="/nav/specialOffer/dining/detail/${dining.diningNo}"> 
								<span> <img src="${dining.diningTitleImg}"></img> </span>
								<div id="strong">
									<strong>${dining.diningTitle}</strong>
								</div>
								<div id="notice1">${dining.diningSub}</div>
								<div id="notice2">
									<div id="date">프로모션 기간 ${dining.diningStartDate} ~ ${dining.diningEndDate}</div>
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