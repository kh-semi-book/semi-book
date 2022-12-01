<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오퍼스 - Hidden Cliff Hotel and Nature</title>

  	<link rel="stylesheet" href="/resources/css/nav/meeting/meeting.css">
    <link rel="stylesheet" href="/resources/css/common/main.css">

</head>
<body>

    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
<!------------------------- 위쪽은 헤더 ----------------------->




    <div class="bsh-main">
            <div id="head-img" ></div>
            <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/meeting/symphony">> &nbsp;meeting</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="#">> &nbsp;오퍼스</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>오퍼스</h1>
            </div>

            <div class="bsh-main-img">
                <span class="move prev">&#x3C;</span>
                <span class="move next">&#x3E;</span>
                <img src="/resources/image/nav/meeting/opus/opus1.jpg" id="mainImage">
            </div>

            <div class="bsh-main-content">    
                <p>
                    오퍼스 (Opus)는 최대 50명까지 수용 가능한 다목적 미팅룸입니다. <br>
                    비즈니스 뿐 아니라 다양한 종류의 프라이빗한 행사 진행이 가능합니다.
                </p>
            </div>

            <div class="bsh-btngroup">
                <a href="/nav/meeting/meetingReservation" class="bsh-btngray" target="_blank">예약 문의하기</a>
                <a href="/resources/image/nav/meeting/opus/opus.jpg" class="bsh-btngray" target="_blank">도면보기</a>
            </div>

            <div class="bsh-tb1-info">
                <table class="bsh-tb1">
                    <colgroup>
                        <col style="width: 15%;">
                        <col style="width: 22%;">
                        <col style="width: 15%;">
                        <col style="width: 48%;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <td colspan="4" class="bsh-padding-cell"></td>
                        </tr>
                        <tr class="bsh-con-cell">
                            <th>위치</th>
                            <td>3F</td>
                            <th>수용인원</th>
                            <td>최대 50명</td>
                        </tr>
                        <tr class="bsh-con-cell">
                            <th>이용문의</th>
                            <td>02-2277-9999</td>
                            <th>공통시설</th>
                            <td>AV 시스템, 스크린, 무선 마이크, 빔 프로젝터</td>
                        </tr>
                        <tr>
                            <td colspan="4" class="bsh-padding-cell2"></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="bsh-tb2-info">
                <table class="bsh-tb2">
                    <colgroup>
                        <col style="width: 13%;">
                        <col style="width: 22%;">
                        <col style="width: 13%;">
                        <col style="width: 13%;">
                        <col style="width: 13%;">
                        <col style="width: 13%;">
                        <col style="width: 13%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>Room name</th>
                            <th>Room Dimensions <br> L x W x H</th>
                            <th>Room size<br>㎡(Pyung)</th>
                            <th>Banquet</th>
                            <th>Classroom</th>
                            <th>U-shape</th>
                            <th>Theater</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Opus</td>
                            <td>16.8 x 8.4 x 3.5</td>
                            <td>141 (42)</td>
                            <td>40</td>
                            <td>70</td>
                            <td>30</td>
                            <td>80</td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </div>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    <script src="/resources/js/nav/meeting/meeting3.js"></script>
</body>
</html>