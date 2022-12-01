<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				</tr>
				<tr>
					<td><a href="/manager/eventDetail" class="detail">1</a></td>
					<td>[얼리버드] Hidden Earlybird</td>
					<td>2021-12-30</td>
				</tr>
				

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