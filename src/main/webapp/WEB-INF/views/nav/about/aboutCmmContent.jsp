<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
   
    <link rel="stylesheet" href="/resources/css/common/main.css">
    <link rel="stylesheet" href="/resources/css/nav/about/about.css">
</head>
<body>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <div id="top-photo3">
    </div>
    <div id="cmm-in-main">
        <div id="top-menu">
            <a href="/">HOME</a>><a href="/nav/about">HIDDEN CLIFF</a>><a href="/nav/about/cmm">공지사항</a>
        </div>
        <div id="info-title">
            공지사항
        </div>

        <div id="cmm-in-title">
            코로나 19 관련 안내
        </div>
        <div id="cmm-in-content">
            <img src="/resources/image/nav/about/aboutCmmContent.jpeg">
        </div>

        <div id="cmm-in-goto-list"><a href="/nav/about/cmm">목록</a></div>
    </div>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
     <script src="/resources/js/header.js"></script>

</body>
</html>