<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션</title>
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
				<div>HOME > 다이닝 관리 > 다이닝 세부 사항</div>
				<div>다이닝 세부 사항</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			<div id="board-post">
				<a href="/manager/diningUpdate" class="update">다이닝 수정</a>
			</div>

			<table id="board_table">
				<tr>
					<th>1</th>
					<td colspan="3">[얼리버드] Hidden Earlybird</td>
				</tr>
				<tr>
					<th>타이틀 이미지</th>
					<td>이미지 등록</td>
					<th>세부 내용</th>
					<td>디럭스 1박+치치 아메리카노 2잔</td>
				</tr>
				<tr>
					<th>투숙 기간</th>
					<td>2022-11-27 ~ 2023-07-16</td>
					<th>판매 기간</th>
					<td>2022-10-13 ~ 2023-07-15</td>
				</tr>
				<tr>
					<th>가격</th>
					<td colspan="3">220,000원 ~</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3">이미지 등록
				</tr>


			</table>
			<div id="board_return">
				<a href="/manager/dining">목록</a>
			</div>
		</div>
		<div class="board-foot-area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>
</html>