<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MeetingRoom 예약 상세보기 - Hidden Cliff Hotel and Nature</title>

    <%-- <link rel="stylesheet" href="/resources/css/nav/meeting/meetingReservation.css"> --%>
	<link rel="stylesheet" href="/resources/css/manager/admin.css">
	<link rel="stylesheet" href="/resources/css/manager/meetingRoomDetail.css">

    <script src="https://kit.fontawesome.com/f7459b8054.js" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp" />
    <!-- **************** 위는 헤더 *************** -->

    <%-- 상단 배경 이미지 --%>
    <div id="head-img"></div>
    
    <div class="bsh-main">

        <div id="top-menu">
	    	<a href="#">MAIN</a>><a href="#">미팅룸 예약 상세보기</a>
		</div>

        <div class="bsh-main-title">
            <h1>미팅룸 예약 상세보기</h1>
        </div>

        <div class="bsh-section">
            <div class="bsh-warning">※ 모든 항목은 필수 입력 사항입니다.</div>
            
                <table class="bsh-tb1">
                    <tr>
                        <th class="inf-name">성명</th>
                        <td>${meeting.meetingMenName}</td>
                    </tr>
                    <tr>
                        <th>휴대폰</th>
                        <td>${meeting.meetingMenPhone}</td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>${meeting.meetingMenEmail}</td>
                    </tr>
                    <tr>
                        <th>업체명</th>
                        <td>${meeting.meetingBookCompany}</td>
                    </tr>
                    <tr>
                        <th>인원수</th>
                        <td>${meeting.meetingHeadCount}명</td>
                    </tr>
                    <tr>
                        <th>행사일시</th>
                        <td>${meeting.meetingBookDate}</td>
                    </tr>
                    <tr>
                        <th id="lastbox">내용</th>
                        <td>${meeting.meetingBookContent}</td>
                    </tr>
                </table>
                
                <div class="bsh-btn">
                    <%-- <button class="bsh-btn-gray"><a href="/manager/meetingRoom/meetingRoomDetail/${meeting.meetingBookNo}/meetingRoomDetailUpdate">수정하기</a></button> --%>
                    <button class="bsh-btn-gray" id="updateBtn">수정하기</button>
                    <button type="submit" class="bsh-btn-gray" id="return">돌아가기</button>
                </div>
        </div>

    </div>

<script src="/resources/js/manager/meetingRoom/meetingRoom.js"></script>
</body>
</html>