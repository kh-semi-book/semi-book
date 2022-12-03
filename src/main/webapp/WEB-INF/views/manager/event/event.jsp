<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
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
				<div>HOME > 이벤트 관리 > 이벤트 세부 사항</div>
				<div>이벤트 세부 사항</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			<div id="board_return">
				<a href="/manager/event">목록</a>
			</div>

			<table id="board_table">
				<tr>
					<th>제목</th>
					<td colspan="3">${event.eventTitle}</td>
				</tr>
				<tr>
					<th class="select-area">
						타이틀 이미지
					</th>
					<td>
						<img class="select-image" src="${event.eventTitleImg}">
					</td>
				</tr>
				<tr>
					<th>세부 내용</th>
					<td>${event.eventSub}</td>
				</tr>
				<tr class="date-area">
					<th>프로모션 기간</th>
					<td>
						${event.eventStartDate} ~
						${event.eventEndDate}
					</td>
				</tr>
				<tr>
					<th class="select-area">
						내용
					</th>
					<td>
						<img class="select-image" src="${event.eventConImg}">
					</td>
				</tr>


			</table>
			<c:if test="${event.memberNo==loginMember.memberNo}">
				<div id="board-post">
					<button class="save" id="updateBtn">수정</button>
					<button class="save" id="deleteBtn">삭제</button>
				</div>
			</c:if>
		</div>
		<div class="board-foot-area"></div>
	</div>

<script src="/resources/js/manager/board/boardPost.js"></script>
</body>
</html>