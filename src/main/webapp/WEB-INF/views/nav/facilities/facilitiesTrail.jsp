<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>히든 트레일 - Hidden Cliff Hotel and Nature</title>

    <link rel="stylesheet" href="/resources/css/nav/facilities/facilities.css">
	<link rel="stylesheet" href="/resources/css/common/main.css">
    <script src="https://kit.fontawesome.com/f7459b8054.js" crossorigin="anonymous"></script>
</head>
<body> 

    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!------------------------- 위쪽은 헤더 ----------------------->

    <div class="bsh-main">
            <div id="head-img3"></div>
            <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">Home</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="#">> &nbsp;FACILITIES</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="#">> &nbsp;히든 트레일</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>히든 트레일</h1>
            </div>

            <div class="bsh-main-img">
                <img src="/resources/image/nav/facilities/trail/trail1.jpg">
            </div>

            <div class="bsh-main-content">
                <p style="letter-spacing: -1px; font-size: 16px;" >
                    문을 열고 나가면 가공되지 않은 제주도의 자연을 만날 수 있는 산책로 히든 트레일이 펼쳐집니다. <br>
                    고요한 시간 속에서 자연을 바라보고 호흡하며 몸과 마음의 평온을 느껴보시기 바랍니다.
                </p>
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
                        <tr class="bsh-con-cell concell1">
                            <th>위치</th>
                            <td>2층 파노라마 레스토랑 <br> 야외데크</td>
                            <th>이용대상</th>
                            <td>제한없음</td>
                        </tr>
                        <tr class="bsh-con-cell concell3">
                            <th>이용문의</th>
                            <td>064-752-7777</td>
                            <th>운영시간</th>
                            <td>09:00 ~ 18:00</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="bsh-tb2-info">
                <table class="bsh-tb2">
                    <colgroup>
                        <col style="width: 15%;">
                        <col style="width: 85%;">
                    </colgroup>
                    <tr>
                        <th>이용안내</th>
                        <td style="color: #333;">
                            · 산책로 이용 시 편안한 복장과 운동화, 선글라스 및 자외선 차단제를 준비하시면 도움이 됩니다. <br>
                            · 위생 관리를 위하여 음식물 반입이 불가하며 반려동물과 같이 이용하실 수 없습니다.<br>
                            · 본 산책로의 모든 지역은 금연구역입니다.<br>
                            · 본 산책로에는 직원이 상주하지 않습니다.<br>
                            · 13세 이하 어린이는 반드시 보호자 동반 시 이용이 가능합니다.<br>
                            · 안전사고 예방을 위하여 난간을 넘어서 무단으로 풀이나 숲에 들어가시지 마십시오.<br>
                            · 이용 규칙을 준수하지 않아 야기된 사고에 대하여는 당 호텔에서 책임을 지지 않습니다.<br>
                            · 본 산책로는 호텔 사정에 따라 이용이 제한될 수 있습니다.
                        </td>
                    </tr>
                </table>
            </div>

    <!------------------------- 아래는 풋터 ------------------------->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>