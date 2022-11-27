<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>하모니 - Hidden Cliff Hotel and Nature</title>

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
                            <a href="/">home</a>
                        </li>
                        <li class="bsh-path2">
                            <a href="/meeting/symphony">>&nbsp; meeting</a>
                        </li>
                        <li class="bsh-path3">
                            <a href="#">>&nbsp; 하모니</a>
                        </li>
                    </ol>
                </div>

                <div class="bsh-main-title">
                    <h1>하모니</h1>
                </div>

                <div class="bsh-main-img2"></div>

                <div class="bsh-main-content">
                    <p style="letter-spacing: -1px; font-size: 16px;">
                        중연회장 하모니는 세미나 및 비즈니스 미팅에 최적화된 공간으로 최대 70명까지 수용할 수 있습니다. <br>
                        방문객의 성공적인 행사 진행을 위하여 최첨단 시스템과 실용성을 겸비한 이곳은 각 최대 15명씩 <br>
                        수용 가능한 별도의 미팅룸 난드르 / 뜬드르 2실이 마련되어 있어 보다 원활한 행사 진행이 가능합니다.
                    </p>
                </div>

                <div class="bsh-btngroup">
                    <a href="" class="bsh-btngray" target="_blank">예약 문의하기</a>
                    <a href="/resources/image/nav/meeting/harmony/harmony.jpg" class="bsh-btngray" target="_blank">도면보기</a>
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
                                <td>2F</td>
                                <th>수용인원</th>
                                <td>최대 70명</td>
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
                                <th>Room Dimensions
                                    <br>
                                    L x W x H
                                </th>
                                <th>Room size
                                    <br>
                                    ㎡(Pyung)
                                </th>
                                <th>Banquet</th>
                                <th>Classroom</th>
                                <th>U-shape</th>
                                <th>Theater</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Harmony</td>
                                <td>15.5 x 7.53 x 2.5</td>
                                <td>117.2 (35.4)</td>
                                <td>50</td>
                                <td>72</td>
                                <td>50</td>
                                <td>80</td>
                            </tr>
                            <tr>
                                <td>Nandeureu</td>
                                <td>4.5 x 6.73 x 2.5</td>
                                <td>30.39 (9.2)</td>
                                <td>10</td>
                                <td>16</td>
                                <td>15</td>
                                <td>20</td>
                            </tr>
                            <tr>
                                <td>Tteundeureu	</td>
                                <td>4.5 x 6.73 x 2.5</td>
                                <td>30.39 (9.2)</td>
                                <td>10</td>
                                <td>16</td>
                                <td>15</td>
                                <td>20</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
        </div>





<!------------------------- 아래는 풋터 ------------------------->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>



</body>
</html>