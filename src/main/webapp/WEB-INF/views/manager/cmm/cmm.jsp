<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
				<div>HOME > 공지사항 관리 > 공지사항 세부 사항</div>
				<div>공지사항 세부 사항</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			<div id="board-post">
				<a href="/html/cmm_post.html" class="update">공지사항 수정</a>
			</div>

			<table id="board_table">
				<tr>
					<th>1</th>
					<td colspan="3">코로나 19 관련 이용안내</td>
				</tr>
				<tr>
					<th>타이틀 이미지</th>
					<td>이미지 등록</td>
					<th>세부 내용</th>
					<td>세부 내용은....???</td>
				</tr>

				<tr>
					<th>내용</th>
					<td colspan="3">이미지 등록
				</tr>


			</table>

			<div id="board_return">
				<a href="/html/cmm_board.html">목록</a>
			</div>
		</div>
		<div class="board-foot-area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>
</html>