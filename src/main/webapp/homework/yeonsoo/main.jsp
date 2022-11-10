<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>

    <link rel="stylesheet" href="/main/css/main-style.css">
</head>
<body>
    <%-- 헤더 추가 --%>
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <div id="main-example">
        
        <div id="main-slide-photo">
            <img src="/img/main_photo.jpeg" alt="">
        </div>
    
        <div class="main-content">
            <span>Special Package</span>
            <div>
                <a href=""></a>
                <a href=""></a>
                <a href=""></a>
            </div>
        </div>
    
        <div class="main-content">
            <span>Events & Notice</span>
            <div>
                <a href=""></a>
                <a href=""></a>
                <a href=""></a>
            </div>
        </div>
    
        <div id="main-movie-lib">
            <span>Movie Library</span>
            <iframe width="1000px" height="550px" src="https://www.youtube.com/embed/e8QNxsnYC58" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

        </div>
    
        <div id="main-photo-gallary">
            <span>Photo Gallery</span>
            <div id="main-photo-zone"></div>
        </div>
    </div>

    <%-- footer.jsp 포함 --%>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

</body>
</html>