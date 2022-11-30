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
	<jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp"/>
	<div class="board-lookUp-page">
		<div class="board-head-area">
			<div></div>
			<div id="board_title">
				<div>HOME > 프로모션 관리 > 프로모션 세부 사항</div>
				<div>프로모션 세부 사항</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			<div id="board_return">
				<a href="/manager/promotion">목록</a>
			</div>

			<table id="board_table">
				<tr>
					<th>제목</th>
					<td colspan="3">
						${promotion.promotionTitle}
					</td>
				</tr>
				<tr>
					<th class="select-area">
						타이틀 이미지
					</th>
					<td colspan="3">
						<img class="select-image" src="${promotion.promotionTitleImg}">
					</td>
				</tr>
				<tr>
					<th>세부 내용</th>
					<td colspan="3">
						${promotion.promotionSub}
					</td>
				</tr>
				<tr class="date-area">
					<th>투숙 기간</th>
					<td>
						${promotion.pStayStartDate} ~ 
						${promotion.pStayEndDate}
						</td>
					<th>판매 기간</th>
					<td>
						${promotion.pSaleStartDate} ~
						${promotion.pSaleEndDate}  
					</td>
				</tr>
				<tr>
					<th>가격</th>
					<td colspan="3">
						${promotion.promotionPrice}
					</td>
				</tr>
				<tr>
					<th class="select-area">
						내용
					</th>
					<td colspan="3"><img class="select-image" src="${promotion.promotionConImg}"></td>
				</tr>


			</table>

			
			<div id="board-post">
				<button class="save" id="updateBtn">수정</button>  <button class="save" id="deleteBtn">삭제</button> 
			</div>
		</div>
		<div class="board-foot-area"></div>
	</div>

	<script src="/resources/js/manager/board/boardPost.js"></script>
</body>
</html>