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
        
            <span class="move prev">&#x3C;</span>
            <span class="move next">&#x3E;</span>
            
            <img src="/resources/image/mainimg1.jpeg" id="mainImage">
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
            <div id="main-photo-zone">
                <div id="main-photo-left">
                    <div id="main-left-up">
                        <img src="/resources/image/mainImage/new_photo1.jpeg" class="photo-zoom">
                    </div><div id="main-left-down">
                        <div id="main-left-down-left">
                            <img src="/resources/image/mainImage/new_photo3.jpg" class="photo-zoom">
                        </div><div id="main-left-down-right">
                           <img src="/resources/image/mainImage/new_photo2.jpg" class="photo-zoom" href="#">
                             <a id="photo-inner-text" href="/media">빌딩숲이 아닌 진짜 숲으로<br>
                            떠나는 힐링 여행<br><br><br>더보기+</a>
                        
                        </div>
                    </div>

                    </div><div id="main-photo-right">

                        <div id="main-right-up">
                            <img src="/resources/image/mainImage/new_photo4.jpg" class="photo-zoom">
                        </div><div id="main-right-down">
                            <img src="/resources/image/mainImage/new_photo5.jpg" class="photo-zoom">
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


    <script src="/resources/js/header.js"></script>
    <script src="/resources/js/main.js"></script>

</body>
</html>