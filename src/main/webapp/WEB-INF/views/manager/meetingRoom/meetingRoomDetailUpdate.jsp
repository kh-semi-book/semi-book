<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MeetingRoom 예약 상세보기 수정 - Hidden Cliff Hotel and Nature</title>

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
	    	<a href="#">MAIN</a>><a href="#">미팅룸 예약 수정하기</a>
		</div>

        <div class="bsh-main-title">
            <h1>미팅룸 예약 수정하기</h1>
        </div>

        <div class="bsh-section">
            <div class="bsh-warning">※ 모든 항목은 필수 입력 사항입니다.</div>
            <form action="meetingRoomUpdate" method="POST" id="meetingUpdate" >
                <table class="bsh-tb1">
                    <tr>
                        <th class="inf-name">성명</th>
                        <td><input name="meetingMenName" id="meetingMenName" type="text" placeholder="이름"
                            style="width:350px;" value="${meetingMenName}"></td>
                    
                    <tr>
                        <th>휴대폰</th>
                        <td class="kjh-input" colspan="3">
                            <input type="text" size="2" name="meetingMenPhone" id="meetingMenPhone1" maxlength="3"> -
                            <input type="text" size="4" name="meetingMenPhone" id="meetingMenPhone2" maxlength="4"> -
                            <input type="text" size="4" name="meetingMenPhone" id="meetingMenPhone3" maxlength="4">
                        </td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" size="10" name="meetingMenEmail" id="meetingMenEmail1"> @
                            <input type="text" size="10" name="meetingMenEmail" id="meetingMenEmail2">
                            <select name="meetingMenEmail" id="meetingMenEmail3">
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="dreamwiz.com">dreamwiz.com</option>
                                <option value="freechal.com">freechal.com</option>
                                <option value="">직접입력</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>업체명</th>
                        <td><input name="meetingBookCompany" id="meetingBookCompany" type="text" style="width:350px;"></td>
                    </tr>
                    <tr>
                        <th>인원수</th>
                        <td><input name="meetingHeadCount" id="meetingHeadCount" type="text" style="width:350px;"
                            placeholder='숫자만 입력해주세요'></td>
                    </tr>
                    <tr>
                        <th>행사일시</th>
                        <td><input name="meetingBookDate" id="meetingBookDate" type="date" style="width:350px;"></td>
                    </tr>
                    <tr>
                        <th id="lastbox">내용</th>
                        <td><textarea id="meetingBookContent" style="width:680px;" name="meetingBookContent" cols="45" rows="20"></textarea></td>
                    </tr>
                </table>
                
                <div class="bsh-btn">
                    <button class="bsh-btn-gray" id="meetingUpdate">수정하기</button>
                </div>
            </form>
        </div>
    </div>

<script src="/resources/js/manager/meetingRoom/meetingRoomUpdate.js"></script>
</body>
</html>