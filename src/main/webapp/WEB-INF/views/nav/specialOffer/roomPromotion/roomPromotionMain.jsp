<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="promotionList" value="${promotionList}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 프로모션</title>
<link rel="stylesheet" href="/resources/css/nav/specialOffer/roomPromotion/promotionMain.css">
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
			<div id="promotion_body_menu">
				<ul id="promotion_list">
					
					<c:forEach var="promotion" items="${promotionList}">
						<li>
							<a href="/nav/specialOffer/roomPromotion/detail/${promotion.promotionNo}"> 
								<span> <img src="${promotion.promotionTitleImg}"></img> </span>
								<div id="strong">
									<strong>${promotion.promotionTitle}</strong>
								</div>
								<div id="notice1">${promotion.promotionSub}</div>
								<div id="notice2">
									<div id="date">
										투숙기간 : ${promotion.pStayStartDate} ~ ${promotion.pStayEndDate} 
										<br> 판매기간 : ${promotion.pSaleStartDate} ~ ${promotion.pSaleEndDate}
									</div>
								<div id="price">${promotion.promotionPrice} ~</div>
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
		<div id="promotion_foot_area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>
</html>

