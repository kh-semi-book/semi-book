<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="promotionList" value="${promotionList}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션 관리</title>
<link rel="stylesheet" href="/resources/css/manager/board.css">
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
				<div>HOME > 프로모션 관리</div>
				<div>프로모션 관리</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			

			<table id="board_table">
				<tr>
					<th>번호</th>
					<th>프로모션 제목</th>
					<th>작성일</th>
				</tr>
				<c:forEach var="promotion" items="${promotionList}">
					<tr>
						<td>${promotion.promotionNo}</a></td>
						<td><a href="/manager/promotionDetail/${promotion.promotionNo}" class="detail">${promotion.promotionTitle}</a></td>
						<td>${promotion.promotionCreateDate}</td>
					</tr>
				</c:forEach>
				

			</table>
			<div id="board-post">
				<a href="/manager/promotionPost" class="post">프로모션 등록</a>
			</div>
			<div class="paging">
				<span> <a href="">&lt;&lt;</a></span> 
				<span> <a href="">&lt;</a></span> 
				<span> <a href="" class="on">1</a></span> 
				<span> <a href="">&gt;</a></span> 
				<span> <a href="">&gt;&gt;</a></span>
			</div>
		</div>
		<div class="board-foot-area"></div>
	</div>

</body>
</html>