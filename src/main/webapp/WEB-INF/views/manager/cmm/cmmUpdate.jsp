<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
				<div><a href="/manager/selectBook">HOME</a> > <a href="/manager/cmm">공지사항 관리</a> > 공지사항 수정</div>
				<div>공지사항 수정</div>
			</div>
			<div></div>
		</div>
		<form action="cmmUpdate" method="post"  enctype="multipart/form-data">
		<div class="board-body-area">
			
			<div id="board_return">
				<a href="/manager/cmm">목록</a>
			</div>
			<table id="board_table">
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" name="cmmTitle" value="${cmm.cmmTitle}"></td>
				</tr>
				<tr>
					<th class="select-area">
						타이틀 이미지
						<label for="inputTitleImg">이미지 선택</label>
  	        			<input type="file" name="cmmTitleImage" id="inputTitleImg" accept="image/*"><button type="button" class="deleteBtn">삭제</button>
					</th>
					<td>
						<img class="select-image" src="${cmm.cmmTitleImg}">
					</td>
				</tr>
				<tr>
					<th>세부 내용</th>
					<td><input type="text" name="cmmSub" id="content" value="${cmm.cmmSub}"></td>
				</tr>
				<tr>
					<th class="select-area">
						내용
						<label for="inputConImg">이미지 선택</label>
            			<input type="file" name="cmmConImage" id="inputConImg" accept="image/*"><button type="button" class="deleteBtn">삭제</button>
					</th>
					<td>
						<img class="select-image" src="${cmm.cmmConImg}">
					</td>
				</tr>


			</table>
			
		</div>
			<div id="board-post">
				<button class="save">수정</button>
			</div>
		</form>
	</div>
	<div class="board-foot-area"></div>
	
	<script src="/resources/js/manager/board/boardPost.js"></script>
	<jsp:include page="/WEB-INF/views/manager/common/admin-footer.jsp" />
</body>
</html>