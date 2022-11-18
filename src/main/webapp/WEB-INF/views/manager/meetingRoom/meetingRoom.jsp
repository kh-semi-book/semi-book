<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>meetingRoom</title>

    <link rel="stylesheet" href="/resources/css/manager/meetingRoom.css">
    <style>
        body { margin: auto; }
    </style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp" />
	<div id="manage-book-area">
		<div id="manage-book-title">미팅룸 관리 페이지</div>
		<div id="manage-book-table">
			<div id="manage-book-table-title">
				<div class="manage-book-no">번호</div>
				<div class="manage-book-date">예약일</div>
				<div class="manage-book-name">상품명</div>
				<div class="manage-book-count">인원</div>
				<div class="manage-booker-name">예약자명</div>
				<div class="manage-book-del">취소여부</div>
				<div class="manage-book-status">진행상태</div>
				<div class="manage-book-status-change"></div>
			</div>
			<div class="manage-book-table-content">
				<div class="manage-book-no manage-border-right">${meeting.meetingRoomBookNo}</div>
				<div class="manage-book-date manage-border-right">${meeting.meetingRoomDate}</div>
				<div class="manage-book-name manage-border-right">${meeting.meetingRoomMenName}</div>
				<div class="manage-book-count manage-border-right">${meeting.meetingRoomProcess}</div>
				<div class="manage-booker-name manage-border-right">${meeting.meetingRoomCancelFL}</div>
				<div class="manage-book-del manage-border-right">${meeting.roomNo}</div>
				<div class="manage-book-status">
					<select name="book-status" id="book-status">
						<option value="">예약대기</option>
						<option value="">예약완료</option>
						<option value=""></option>
					</select>
				</div>
				<div class="manage-book-status-change">
					<button id="save-btn">저장</button>
				</div>
			</div>
			
			<!-- 페이지 이동 버튼 -->
			<div id="rsc-page-skip">
				<a href="#"><<</a>&nbsp;&nbsp; <a href="#">< </a> &nbsp;&nbsp;
				<button>
					<a href="#">1</a>
				</button>
				&nbsp;&nbsp; <a href="#">></a> &nbsp;&nbsp; <a href="#">>></a>
			</div>
		</div>
	</div>
</body>

</html>