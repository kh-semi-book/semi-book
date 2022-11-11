<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HIDDEN_CLILFF</title>
<link rel="stylesheet" href="/resources/css/common/main.css">

</head>
<body>
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
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>