<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL (EL 형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키즈 플레이 룸 - Hidden Cliff Hotel and Nature</title>

    <link rel="stylesheet" href="/resources/css/nav/facilities/facilities.css">
	<link rel="stylesheet" href="/resources/css/common/main.css">
    <script src="https://kit.fontawesome.com/f7459b8054.js" crossorigin="anonymous"></script>
</head>
<body>
    
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!------------------------- 위쪽은 헤더 ----------------------->


            <div id="head-img1" ></div>
            <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/facilities/kids">> &nbsp;FACILITIES</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="/nav/facilities/kids">> &nbsp;키즈 플레이 룸</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>키즈 플레이 룸</h1>
            </div>

            <div class="bsh-main-img">
                <span class="move prev">&#x3C;</span>
                <span class="move next">&#x3E;</span>
                <img src="/resources/image/nav/facilities/kiz/kiz1.jpg" id="mainImage">
            </div>

            <div class="bsh-main-content">
                <p style="letter-spacing: -1px; font-size: 16px;" >
                    히든 클리프의 키즈 플레이 룸은 유럽을 비롯하여 해외에서 다양한 상을 수상한 바 있는 CEDAR WORKS로 꾸며져 있습니다.<br>
                    우리 아이의 즐거움을채워줄 다양한 교구와 함께 안전하고 즐거운 시간을 보내시기 바랍니다.
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
                            <td>1F</td>
                            <th>이용대상</th>
                            <td>투숙객 전용 (2~7세)</td>
                        </tr>
                        <tr class="bsh-con-cell concell3">
                            <th>이용문의</th>
                            <td>064-752-4151</td>
                            <th>운영시간</th>
                            <td>09:00 ~ 21:00</td>
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
                            · 시설 이용 시 마스크를 착용하여 주시기 바랍니다. 미착용 시 이용이 제한될 수 있습니다. <br>
                            · 이용 안내 및 안전 수칙 준수에 대한 동의서 서명 후 입장 가능합니다.<br>
                            · 시설 입장 시 보호자 동반을 필수로 합니다.<br>
                            · 키즈 플레이 룸 내 음식물 반입이 불가합니다.<br>
                            · 귀중품은 별도로 보관 불가하며, 당 호텔은 분실에 대한 책임을 지지 않습니다.<br>
                            · 키즈 플레이 룸 내 비치된 물품은 밖으로 가져가실 수 없습니다.<br>
                            · 부모님 또는 어린이 부주의에 의해 발생한 안전사고 및 분쟁에 대해서는 당 호텔에서 책임지지 않습니다.
                        </td>
                    </tr>
                </table>
            </div>

    <!------------------------- 아래는 풋터 ------------------------->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    <script src="/resources/js/nav/facilities/facilities1.js"></script>
    
</body>
</html>