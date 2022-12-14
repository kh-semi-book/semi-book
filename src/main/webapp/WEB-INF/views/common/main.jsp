<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
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
            <span class="main-sub-title">Special Package</span>
            <div>
           		<c:forEach var="promotion" items="${promotionList }" begin="0" end="2">
               		 <a href="nav/specialOffer/roomPromotion/detail/${promotion.promotionNo }"> <img alt="" src="${promotion.promotionTitleImg}" class="main-content-img">
               		 <span>${promotion.promotionTitle }</span>
               		 </a>
                </c:forEach>
               
            </div>
        </div>
    
        <div class="main-content">
            <span class="main-sub-title">Events & Notice</span>
            <div>
               <c:forEach var="dining" items="${diningList }" begin="0" end="2">
               		 <a href="nav/specialOffer/dining/detail/${dining.diningNo }"> <img alt="" src="${dining.diningTitleImg}" class="main-content-img">
               		 <span>${dining.diningTitle }</span></a>
                </c:forEach>
            </div>
        </div>
    
        <div id="main-movie-lib">
            <span class="main-sub-title">Movie Library</span>

            <ul id="videoSlide">
                <li>
                    <iframe width="1000px" height="550px" src="https://www.youtube.com/embed/baJClWIqtUk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </li>
                <li>
                    <iframe width="1000px" height="550px" src="https://www.youtube.com/embed/lz1vsGB307g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </li>
                <li>
                    <iframe width="1000px" height="550px" src="https://www.youtube.com/embed/RlKPXS6RQ_g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </li>
                <li>
                    <iframe width="1000px" height="550px" src="https://www.youtube.com/embed/QdaVkZNfIbw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </li>
                <li>
                    <iframe width="1000px" height="550px" src="https://www.youtube.com/embed/66CEGbqrvzY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </li>
            </ul>


            <span class="move1 prev1">&#x3C;</span>
            <span class="move1 next1">&#x3E;</span>
        </div>
    
        <div id="main-photo-gallary">
            <span class="main-sub-title">Photo Gallery</span>
            <div id="main-photo-zone">
                <div id="main-photo-left">
                    <div id="main-left-up">
                        <img src="/resources/image/mainImage/new_photo1.jpeg" class="photo-zoom">
                    </div><div id="main-left-down">
                        <div id="main-left-down-left">
                            <img src="/resources/image/mainImage/new_photo3.jpg" class="photo-zoom">
                        </div><div id="main-left-down-right">
                           <img src="/resources/image/mainImage/new_photo2.jpg" class="photo-zoom" href="#">
                             <a id="photo-inner-text" href="/media">???????????? ?????? ?????? ?????????<br>
                            ????????? ?????? ??????<br><br><br>?????????+</a>
                        
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


    <%-- <script src="/resources/js/header.js"></script> --%>
    <script src="/resources/js/main.js"></script>

</body>
</html>