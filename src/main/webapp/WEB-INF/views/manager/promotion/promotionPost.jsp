<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션 등록</title>
<link rel="stylesheet" href="/resources/css/manager/board_detail.css">
<style>
body {
	margin: auto;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="board-lookUp-page">
		<div class="board-head-area">
			<div></div>
			<div id="board_title">
				<div>HOME > 프로모션 관리 > 프로모션 등록</div>
				<div>프로모션 등록</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			<div id="board-post">
				<a href="#" class="update">저장</a>
			</div>

			<table id="board_table">
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" id="title"></td>
				</tr>
				<tr>
					<th>타이틀 이미지</th>
					<td>이미지 등록</td>
					<th>세부 내용</th>
					<td><input type="text" id="content"></td>
				</tr>
				<tr>
					<th>투숙 기간</th>
					<td><input type="text" id="date1"></td>
					<th>판매 기간</th>
					<td><input type="text" id="date2"></td>
				</tr>
				<tr>
					<th>가격</th>
					<td colspan="3"><input type="text" id="price"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3">이미지 등록
				</tr>


			</table>

			<div id="board_return">
				<a href="/html/promotion_board.html">목록</a>
			</div>
		</div>
		<div class="board-foot-area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>