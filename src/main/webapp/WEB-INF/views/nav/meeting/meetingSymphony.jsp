<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>심포니 - Hidden Cliff Hotel and Nature</title>
    
    <link rel="stylesheet" href="/resources/css/nav/meeting/meeting.css">
    <link rel="stylesheet" href="/resources/css/common/main.css">
    
    <script src="https://kit.fontawesome.com/f7459b8054.js" crossorigin="anonymous"></script>
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
                        <a href="#">> &nbsp;심포니</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>심포니</h1>
            </div>

            <div class="bsh-main-img">
                <span class="move prev">&#x3C;</span>
                <span class="move next">&#x3E;</span>
                <img src="/resources/image/nav/meeting/symphony/symphony1.jpg" id="mainImage">
            </div>

            <div class="bsh-main-content">
                <p style="letter-spacing: -1px; font-size: 16px;" >
                    대연회장 심포니는 대규모 컨퍼런스에 최적화된 공간으로서 최대 150명까지 수용 가능합니다. <br>
                    최상의 AV 시스템이 갖춰져 있고 두 개의 독립된 공간으로 분할하여 다용도로 활용 가능합니다. <br>
                    공간은 콘크리트 월로 마감되었으며 최대 15명까지 수용 가능한 별도의 미팅룸이 마련되어 있습니다.
                </p>
            </div>

            <div class="bsh-btngroup">
                <a href="/nav/meeting/meetingReservation" class="bsh-btngray" target="_blank">예약 문의하기</a>
                <a href="/resources/image/nav/meeting/symphony/symphony.jpg" class="bsh-btngray" target="_blank">도면보기</a>
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
                            <td>1F</td>
                            <th>수용인원</th>
                            <td>최대 150명</td>
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
                            <th>Room Dimensions <br> L x W x H </th>
                            <th>Room size <br> ㎡(Pyung) </th>
                            <th>Banquet</th>
                            <th>Classroom</th>
                            <th>U-shape</th>
                            <th>Theater</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Symphony</td>
                            <td>24.67 x 11.45 x 5</td>
                            <td>282.5 (85.4)</td>
                            <td>170</td>
                            <td>150</td>
                            <td>70</td>
                            <td>250</td>
                        </tr>
                        <tr>
                            <td>Symphony A</td>
                            <td>12.23 x 11.45 x 5</td>
                            <td>141.25 (42.7)</td>
                            <td>60</td>
                            <td>75</td>
                            <td>33</td>
                            <td>100</td>
                        </tr>
                        <tr>
                            <td>Symphony B</td>
                            <td>12.23 x 11.45 x 5</td>
                            <td>141.25 (42.7)</td>
                            <td>60</td>
                            <td>75</td>
                            <td>33</td>
                            <td>100</td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </div>
    <!------------------------- 아래는 풋터 ------------------------->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="/resources/js/nav/meeting/meeting1.js"></script>
</body>
</html>