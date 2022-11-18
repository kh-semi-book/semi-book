<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션 관리</title>
<link rel="stylesheet" href="/resources/css/manager/board.css">
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
				<div>HOME > 프로모션 관리</div>
				<div>프로모션 관리</div>
			</div>
			<div></div>
		</div>
		<div class="board-body-area">
			<div id="board-post">
				<a href="/html/promotion_post.html" class="post">프로모션 등록</a>
			</div>

			<table id="board_table">
				<tr>
					<th>번호</th>
					<th>프로모션 제목</th>
					<th>작성일</th>
				</tr>
				<tr>
					<td><a href="/html/promotion.html" class="detail">1</a></td>
					<td>[얼리버드] Hidden Earlybird</td>
					<td>2021-12-30</td>
				</tr>
				<tr>
					<td><a href="#" class="detail">2</a></td>
					<td>LA DOLCE VITA</td>
					<td>2021-12-30</td>
				</tr>
				<tr>
					<td><a href="#" class="detail">3</a></td>
					<td>Fall in Infiniti</td>
					<td>2021-12-30</td>
				</tr>
				<tr>
					<td><a href="#" class="detail">4</a></td>
					<td>Full of Love</td>
					<td>2021-12-30</td>
				</tr>
				<tr>
					<td><a href="#" class="detail">5</a></td>
					<td>[4인 패키지] Dear My Family</td>
					<td>2021-12-30</td>
				</tr>
				<tr>
					<td><a href="#" class="detail">6</a></td>
					<td>[스파 패키지] Time to Relax</td>
					<td>2021-12-30</td>
				</tr>

			</table>
			<div class="paging">
				<span> <a href=""> <img src="/image/btn_paging_first.png" alt="">
				</a>
				</span> <span> <a href=""> <img src="/image/btn_paging_prev_on.png" alt="">
				</a>
				</span> <span> <a href="" class="on">1</a>
				</span> <span> <a href=""> <img src="/image/btn_paging_next_on.png" alt="">
				</a>
				</span> <span> <a href=""> <img src="/image/btn_paging_last_on.png" alt="">
				</a>
				</span>
			</div>
		</div>
		<div class="board-foot-area"></div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>
</html>