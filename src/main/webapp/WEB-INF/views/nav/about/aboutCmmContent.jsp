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
    <div id="top-photo">
        사진자리
    </div>
    <div id="cmm-in-main">
        <div id="top-menu">
            <a href="#">HOME</a>><a href="#">HIDDEN CLIFF</a>><a href="#">공지사항</a>
        </div>
        <div id="info-title">
            공지사항
        </div>

        <div id="cmm-in-title">
            코로나 19 관련 안내
        </div>
        <div id="cmm-in-content">
            <img src="/img/cmm-in-content-ex.jpeg">
        </div>

        <div id="cmm-in-goto-list"><a href="#">목록</a></div>
    </div>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

</body>
</html>