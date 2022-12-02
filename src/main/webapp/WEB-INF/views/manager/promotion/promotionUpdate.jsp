<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션 등록</title>
<link rel="stylesheet" href="/resources/css/manager/board_detail.css">
<link rel="stylesheet" href="/resources/css/manager/admin.css">
<style>
body {
	margin: auto;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp" />
    <div class="board-lookUp-page">
        <div class="board-head-area">
            <div></div>
            <div id="board_title">
                <div>HOME > 프로모션 관리 > 프로모션 등록</div>
                <div>프로모션 등록</div>
            </div>
            <div></div>
        </div>
        <form action="/manager/promotionPost" method="post" enctype="multipart/form-data">
            <div class="board-body-area">
                <div id="board_return">
                    <a href="/manager/promotion">목록</a>
                </div>

				<table id="board_table">
					<tr>
						<th>제목</th>
						<td colspan="3"><input type="text" name="promotionTitle" value="${promotion.promotionTitle}"></td>
					</tr>
					<tr>
						<th class="select-area">타이틀 이미지 <label for="inputTitleImg">이미지 선택</label> <input type="file" name="promotionTitleImage" id="inputTitleImg" accept="image/*">
						<button type="button" class="deleteBtn">삭제</button>
						</th>
						<td colspan="3"><img class="select-image" src="${promotion.promotionTitleImg}"></td>
					</tr>
					<tr>
						<th>세부 내용</th>
						<td colspan="3"><input type="text" name="promotionSub" id="content" value="${promotion.promotionSub}"></td>
					</tr>
					<tr class="date-area">
						<th>투숙 기간</th>
						<td><input type="text" name="pStayStartDate" value="${promotion.pStayStartDate}">~ <input type="text" name="pStayEndDate" value="${promotion.pStayEndDate}"></td>
						<th>판매 기간</th>
						<td><input type="text" name="pSaleStartDate" value="${promotion.pSaleStartDate}">~ <input type="text" name="pSaleEndDate" value="${promotion.pSaleEndDate}"></td>
					</tr>
					<tr>
						<th>가격</th>
						<td colspan="3"><input type="text" name="promotionPrice" value="${promotion.promotionPrice}"></td>
					</tr>
					<tr>
						<th class="select-area">내용 이미지 <label for="inputConImg">이미지 선택</label> <input type="file" name="promotionConImage" id="inputConImg" accept="image/*">
						<button type="button" class="deleteBtn">삭제</button>
						</th>
						<td colspan="3"><img class="select-image" src="${promotion.promotionConImg}"></td>
					</tr>
					<tr>
					<th>객실 전망 선택</th>
					<td colspan="3">
						<c:forEach var="view" items="${viewList}">
							<c:choose>
								<c:when test="${view == 1}">
									<c:set var="view1" value="checked" />
								</c:when>
								<c:when test="${view == 2}">
									<c:set var="view2" value="checked" />
								</c:when>
								<c:when test="${view == 3}">
									<c:set var="view3" value="checked" />
								</c:when>
							</c:choose>
						</c:forEach>
						<span><input type="checkbox" name="viewType" id="gardenView" value="1" ${view1}><label for="gardenView">가든 뷰</label></span>
						<span><input type="checkbox" name="viewType" id="cliffView" value="2" ${view2}><label for="cliffView">클리프 뷰</label></span>
						<span><input type="checkbox" name="viewType" id="panoramaView" value="3" ${view3}><label for="panoramaView">파노라마 뷰</label></span>
					</td>
				</tr>
				<tr>
					<th>객실 타입 선택</th>
					<td colspan="3">
						<c:forEach var="type" items="${typeList}">
							<c:choose>
								<c:when test="${type == 1}">
									<c:set var="type1" value="checked" />
								</c:when>
								<c:when test="${type == 2}">
									<c:set var="type2" value="checked" />
								</c:when>
								<c:when test="${type == 3}">
									<c:set var="type3" value="checked" />
								</c:when>
								<c:when test="${type == 4}">
									<c:set var="type4" value="checked" />
								</c:when>
							</c:choose>
						</c:forEach>
						<span><input type="checkbox" name="roomType" id="deluxe" value="4" ${type4}><label for="deluxe">디럭스</label></span> 
						<span><input type="checkbox" name="roomType" id="cornerDeluxe" value="3" ${type3}><label for="cornerDeluxe">코너 디럭스</label></span> 
						<span><input type="checkbox" name="roomType" id="familySuite" value="2" ${type2}><label for="familySuite">패밀리 스위트</label></span> 
						<span><input type="checkbox" name="roomType" id="yeraeSuite" value="1" ${type1}><label for="yeraeSuite">예래 스위트</label></span></td>
				</tr>


				</table>


				<div id="board-post">
                    <button class="save">저장</button>
                </div>
            </div>
        </form>
        <div class="board-foot-area"></div>
    </div>

	<script src="/resources/js/manager/board/boardPost.js"></script>
</body>
</html>