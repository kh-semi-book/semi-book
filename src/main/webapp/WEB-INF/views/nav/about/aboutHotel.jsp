<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>호텔 소개 - Hidden Cliff Hotel and Nature</title>

    <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="/resources/css/common/main.css">
    <link rel="stylesheet" href="/resources/css/nav/about/about.css">
</head>
<body>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
     <div id="top-photo1">
    </div>
    
        <div id="about-main">
           <!--  <div id="top-menu">
                <a href="/">HOME</a>><a href="/nav/about">HIDDEN CLIFF</a>><a href="/nav/about">호텔 소개</a>
            </div>
            
             <div id="info-title">
                호텔 소개
            </div> -->

            <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/about">> &nbsp;HIDDEN CILFF</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="/nav/about">> &nbsp;호텔 소개</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>호텔 소개</h1>
            </div>


           

            <div id="info-silde-photo">
                <span class="move prev">&#x3C;</span>
                <span class="move next">&#x3E;</span>
            
                <img src="/resources/image/nav/about/hidden_company01.jpg" id="aboutImage">
            </div>
            <div id="logo-info">
                <div id="logo-photo"><img src="/resources/image/nav/about/logo3.png" width="248px"></div>
                <div id="logo-text">
                    <p>히든 클리프 호텔 & 네이쳐 브랜드 아이덴티티(BI)</p>
                    <p>6개의 클리프 기둥은 제주의 하늘, 구름, 초원, 절벽, 바다, 땅을 의미합니다. <br>
                        자연 그대로의 살아있는 느낌을 표현하기 위하여 아웃라인을 거친 텍스쳐로 마무리하였습니다.</p>
                </div>
            </div>
        </div>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="/resources/js/about.js"></script>
    
</body>
</html>