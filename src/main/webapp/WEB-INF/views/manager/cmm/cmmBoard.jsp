<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 관리</title>
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
				<div>HOME > 공지사항 관리</div>
				<div>공지사항 관리</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			<div id="board-post">
				<a href="/manager/cmmPost" class="post">공지사항 등록</a>
			</div>

			<table id="board_table">
				<tr>
					<th>번호</th>
					<th>공지사항 제목</th>
					<th>작성일</th>
				</tr>
				<tr>
					<td><a href="/manager/cmmDetail" class="detail">1</a></td>
					<td>코로나 19 관련 이용안내</td>
					<td>2021-12-30</td>
				</tr>
				<tr>
					<td><a href="#" class="detail">2</a></td>
					<td>히든클리프 이용안내</td>
					<td>2021-12-30</td>
				</tr>

			</table>
			<div class="paging">
				<span> <a href=""> <img src="/resources/image/btn_paging_first.png">
				</a>
				</span> <span> <a href=""> <img src="/resources/image/btn_paging_prev_on.png">
				</a>
				</span> <span> <a href="" class="on">1</a>
				</span> <span> <a href=""> <img src="/resources/image/btn_paging_next_on.png">
				</a>
				</span> <span> <a href=""> <img src="/resources/image/btn_paging_last_on.png">
				</a>
				</span>
			</div>
		</div>
		<div class="board-foot-area"></div>
	</div>

</body>
</html>