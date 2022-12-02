<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로모션 등록</title>
<link rel="stylesheet" href="/resources/css/manager/board_detail.css">
<link rel="stylesheet" href="/resources/css/manager/admin.css">
<style>
body {
	margin: auto;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp" />
	<div class="board-lookUp-page">
		<div class="board-head-area">
			<div></div>
			<div id="board_title">
				<div>HOME > 프로모션 관리 > 프로모션 등록</div>
				<div>프로모션 등록</div>
			</div>
			<div></div>
		</div>
		<form action="/manager/promotionPost" method="post" enctype="multipart/form-data">
			<div class="board-body-area">
				<div id="board_return">
					<a href="/manager/promotion">목록</a>
				</div>

				<table id="board_table">
					<tr>
						<th>제목</th>
						<td colspan="3"><input type="text" name="promotionTitle"></td>
					</tr>
					<tr>
						<th class="select-area">타이틀 이미지 <label for="inputTitleImg">이미지 선택</label> <input type="file" name="promotionTitleImage" id="inputTitleImg" accept="image/*">
							<button type="button" class="deleteBtn">삭제</button>
						</th>
						<td colspan="3"><img class="select-image" src=""></td>
					</tr>
					<tr>
						<th>세부 내용</th>
						<td colspan="3"><input type="text" name="promotionSub"></td>
					</tr>
					<tr class="date-area">
						<th>투숙 기간</th>
						<td><input type="text" name="pStayStartDate">~ <input type="text" name="pStayEndDate"></td>
						<th>판매 기간</th>
						<td><input type="text" name="pSaleStartDate">~ <input type="text" name="pSaleEndDate"></td>
					</tr>
					<tr>
						<th>가격</th>
						<td colspan="3"><input type="text" name="promotionPrice"></td>
					</tr>
					<tr>
						<th class="select-area">내용 이미지 <label for="inputConImg">이미지 선택</label> <input type="file" name="promotionConImage" id="inputConImg" accept="image/*">
							<button type="button" class="deleteBtn">삭제</button>
						</th>
						<td colspan="3"><img class="select-image" src=""></td>
					</tr>
					<tr>
          	<th>객실 전망 선택</th>
            <td colspan="3">
            	<span><input type="checkbox" name="viewType" id="gardenView" value="1"><label for="gardenView">가든 뷰</label></span>
              <span><input type="checkbox" name="viewType" id="cliffView" value="2"><label for="cliffView">클리프 뷰</label></span>
              <span><input type="checkbox" name="viewType" id="panoramaView" value="3"><label for="panoramaView">파노라마 뷰</label></span>
            </td>
          </tr>
          <tr>
             <th>객실 타입 선택</th>
             <td colspan="3">
               <span><input type="checkbox" name="roomType" id="deluxe" value="4"><label for="deluxe">디럭스</label></span>
               <span><input type="checkbox" name="roomType" id="cornerDeluxe" value="3"><label for="cornerDeluxe">코너 디럭스</label></span>
               <span><input type="checkbox" name="roomType" id="familySuite" value="2"><label for="familySuite">패밀리 스위트</label></span>
               <span><input type="checkbox" name="roomType" id="yeraeSuite" value="1"><label for="yeraeSuite">예래 스위트</label></span>
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
</body>
</html>