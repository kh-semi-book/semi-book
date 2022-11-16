<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>호텔 소개</title>

    <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="/resources/css/common/main.css">
    <link rel="stylesheet" href="/resources/css/nav/about/about.css">
</head>
<body>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
     <div id="top-photo1">
    </div>
    
        <div id="about-main">
            <div id="top-menu">
                <a href="/">HOME</a>><a href="/nav/about">HIDDEN CLIFF</a>><a href="/nav/about">호텔 소개</a>
            </div>


            <div id="info-title">
                호텔 소개
            </div>

            <div id="info-silde-photo">
                사진존
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
    <script src="/resources/js/header.js"></script>
</body>
</html>