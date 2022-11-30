<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="bookList" value="${map.bookList}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>meetingRoom</title>

    <link rel="stylesheet" href="/resources/css/manager/admin.css">
    <link rel="stylesheet" href="/resources/css/manager/meetingRoom.css">
</head>

<body>

	<jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp" />
	
	<div id="manage-book-area">
	
		<div id="top-menu">
	    	<a href="#">MAIN</a>><a href="#">미팅룸 예약 관리</a>
		</div>
	
		<div id="manage-book-title">미팅룸 관리 페이지</div>
		
	<fieldset>
        <legend>검색 상세</legend>
		<form action="/manager/meetingRoom" id="search-book-option">
			<span class="search-option">
				<select name="searchOption">
					<option value="bookerName">예약자명</option>
					<option value="roomName">상품명</option>
				</select>
			</span>   
			<input type="text" class="search-option-input" name="searchOptionInput">


			<span id="search-date">
				<div class="search-option">날짜 선택</div>
			</span>
			<span class="search-option">
				<select name="searchDateOption">
					<option value="bookDate">예약일</option>
					<option value="receiptDate">접수일</option>
				</select>
			</span>
			<span class="search-date-input">
			<input name="searchDateInput" type="date">
			</span> 
			<button id="searchOptionBtn">검색</button>

		</form>

    </fieldset><br>

		<div id="manage-book-table">
			<div id="manage-book-table-title">
				<div class="manage-book-no">번호</div>
				<div class="manage-book-date">접수일</div>
				<div class="manage-book-date">예약일</div>
				<div class="manage-book-name">상품명</div>
				<div class="manage-book-count">인원 수</div>
				<div class="manage-booker-name">예약자명</div>
				<div class="manage-book-del">취소여부</div>
				<div class="manage-book-status">진행상태</div>
				<div class="manage-book-status-change">저장</div>
			</div>
			
			<c:forEach var="book" items="${bookList}">
			<div class="manage-book-table-content">
				<div class="manage-book-no manage-border-right">${book.meetingBookNo}</div>
				<div class="manage-book-date manage-border-right">${book.meetingDate}</div>
				<div class="manage-book-date manage-border-right">${book.meetingBookDate}</div>
				<div class="manage-book-name manage-border-right"><a href="/manager/meetingRoom/meetingRoomDetail">${book.meetingName}</a></div>
				<div class="manage-book-count manage-border-right">${book.meetingHeadCount}</div>
				<div class="manage-booker-name manage-border-right">${book.meetingMenName}</div>
				<div class="manage-book-del manage-border-right">${book.meetingCancelFL}</div>
				<div class="manage-book-status manage-border-right">
				<c:if test="${book.meetingProcess==0}">예약대기</c:if> 
				<c:if test="${book.meetingProcess==1}">예약완료</c:if> 
				<c:if test="${book.meetingProcess==2}">취소완료</c:if> 
					&nbsp;&nbsp;
					<select name="book-status" id="book-status">
						<option value="0">예약대기</option>
						<option value="1">예약완료</option>
						<option value="2">취소완료</option>
					</select>
				</div>
				<div class="manage-book-status-change"> 
					<button id="save-btn">저장</button>
				</div>
			</div>
			</c:forEach>
			
			<!-- 페이지 이동 버튼 -->
			<div id="rsc-page-skip">
				<a href="#">&lt;&lt;</a>&nbsp;&nbsp; <a href="#">&lt;</a> &nbsp;&nbsp;
				<button>
					<a href="#">1</a>
				</button>
				&nbsp;&nbsp; <a href="#">&gt;</a> &nbsp;&nbsp; <a href="#">&gt;&gt;</a>
			</div>
			
		</div>
	</div>
</body>

</html>