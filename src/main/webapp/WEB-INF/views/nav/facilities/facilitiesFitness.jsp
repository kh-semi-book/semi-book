<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>피트니스 센터 - Hidden Cliff Hotel and Nature</title>

    <link rel="stylesheet" href="/resources/css/nav/facilities/facilities.css">
	<link rel="stylesheet" href="/resources/css/common/main.css">

    <script src="https://kit.fontawesome.com/f7459b8054.js" crossorigin="anonymous"></script>
</head>
<body>

    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!------------------------- 위쪽은 헤더 ----------------------->
  
    <div class="bsh-main">
            <div id="head-img2" ></div>
            <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">Home</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="#">> &nbsp;FACILITIES</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="">> &nbsp;피트니스 센터</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>피트니스 센터</h1>
            </div>

            <div class="bsh-main-img">
                <img src="/resources/image/nav/facilities/fitness/fitness1.jpg">
            </div>

            <div class="bsh-main-content">
                <p style="letter-spacing: -1px; font-size: 16px;" >
                    유산소 운동과 웨이트 트레이닝을 위한 다양한 설비가 갖춰진 피트니스 센터에서는 <br>
                    피로를 해소하고 새로운 활력을 얻을 수 있습니다.
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
                        <tr class="bsh-con-cell concell1">
                            <th>위치</th>
                            <td>1층</td>
                            <th>이용대상</th>
                            <td>투숙객 전용</td>
                        </tr>
                        <tr class="bsh-con-cell">
                            <th>이용문의</th>
                            <td>064-795-4151</td>
                            <th>운영시간</th>
                            <td>09:00 ~ 22:00</td>
                        </tr>
                        <tr class="bsh-con-cell concell3">
                            <th>주요시설</th>
                            <td colspan="3">런닝머신, 좌식 싸이클, 레그컬, 레그익스텐션, 버터플라이, 하이풀리, 벨트 마사지 등</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        
    <!------------------------- 아래는 풋터 ------------------------->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
        </div>
            
            
</body>
</html>