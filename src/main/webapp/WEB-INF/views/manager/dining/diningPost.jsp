<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이닝 등록</title>
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
				<div>HOME > 다이닝 관리 > 다이닝 등록</div>
				<div>다이닝 등록</div>
			</div>
			<div></div>
		</div>
		<form action="/manager/diningPost" method="post"  enctype="multipart/form-data">
		<div class="board-body-area">
			<div id="board_return">
				<a href="/manager/dining">목록</a>
			</div>

			<table id="board_table">
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" name="diningTitle" id="title"></td>
				</tr>
				<tr>
					<th class="select-area">
						타이틀 이미지
						<label for="inputTitleImg">이미지 선택</label>
  	        			<input type="file" name="diningTitleImage" id="inputTitleImg" accept="image/*"><button type="button" class="deleteBtn">삭제</button>
					</th>
					<td>
						<img class="select-image" src="">
					</td>
				</tr>
				<tr>
					<th>세부 내용</th>
					<td><input type="text" name="diningSub" id="content"></td>
				</tr>
				<tr class="date-area">
					<th>프로모션 기간</th>
					<td>
						<input type="text" name="diningStartDate">~
						<input type="text" name="diningEndDate">
					</td>
				</tr>
				<tr>
					<th class="select-area">
						내용
						<label for="inputConImg">이미지 선택</label>
            			<input type="file" name="diningConImage" id="inputConImg" accept="image/*"><button type="button" class="deleteBtn">삭제</button>
					</th>
					<td>
						<img class="select-image" src="">
					</td>
				</tr>


			</table>

			
			<div id="board-post">
				<button class="save">저장</button>
			</div>
		</div>
		</form>
		<div class="board-foot-area"></div>
	</div>

	<script src="/resources/js/manager/board/boardPost.js"></script>
	<jsp:include page="/WEB-INF/views/common/admin-footer.jsp" />
</body>
</html>