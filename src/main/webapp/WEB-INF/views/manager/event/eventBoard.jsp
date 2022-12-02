<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="eventList" value="${eventList}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 관리</title>
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
				<div>HOME > 이벤트 관리</div>
				<div>이벤트 관리</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			

			<table id="board_table">
				<tr>
					<th>번호</th>
					<th>이벤트 제목</th>
					<th>작성일</th>
					<th>작성자</th>
				</tr>
				<c:forEach var="event" items="${eventList}">
					<tr>
						<td>${event.eventNo}</a></td>
						<td><a href="/manager/eventDetail/${event.eventNo}" class="detail">${event.eventTitle}</a></td>
						<td>${event.eventCreateDate}</td>
						<td>${event.memberNo}</td>
					</tr>
				</c:forEach>
				

			</table>
			<div id="board-post">
				<a href="/manager/eventPost" class="post">이벤트 등록</a>
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