<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 프로모션 - Hidden Cliff Hotel and Nature</title>
<link rel="stylesheet" href="/resources/css/nav/specialOffer/roomPromotion/promotionType.css">
<link rel="stylesheet" href="/resources/css/common/main.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div id="promotion_page">
		<div id="promotion_image"></div>

		<div id="promotion_head_area">
			<section></section>
			<!-- <section id="promotion_title">
				<div>
					<a href="/">HOME</a> > 
					<a href="/nav/specialOffer/roomPromotion">SPECIAL OFFER</a> > 
					<a href="/nav/specialOffer/roomPromotion">객실 프로모션</a> 
				</div>
				<div>객실 프로모션</div>
			</section> -->
			<div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/specialOffer/roomPromotion">> &nbsp;SPECIAL OFFER</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="/nav/specialOffer/roomPromotion">> &nbsp;객실 프로모션</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>객실 프로모션</h1>
            </div>
			<section></section>
		</div>

		<div id="promotion_body_area">
			<section id="promotion_detail_title">
				<div>${promotion.promotionTitle}</div>
				<div></div>
			</section>
			<section id="promotion_detail_date">
				<div class="detail date">
					<strong class="strong">투숙기간</strong> ${promotion.pStayStartDate} ~ ${promotion.pStayEndDate}
				</div>
				<div class="detail date">
					<strong class="strong">판매기간</strong> ${promotion.pSaleStartDate} ~ ${promotion.pSaleEndDate}
				</div>
				<div class="detail price">
					<strong class="strong">이용금액</strong> ${promotion.promotionPrice} ~
				</div>
			</section>
			<section id="promotion_detail_content">
				<img src="${promotion.promotionConImg}">
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