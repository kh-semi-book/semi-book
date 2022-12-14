<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL(EL형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>rooms - Hidden Cliff Hotel and Nature</title>

    <link rel="stylesheet" href="/resources/css/nav/rooms/rooms.css">
    <link rel="stylesheet" href="/resources/css/common/main.css">


        <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

        <style>
            body{margin: auto;}
        </style>
    </head>

    <body>


        <!-- header -->
        <jsp:include page="/WEB-INF/views/common/header.jsp" />

            <div class="kjh-head-area">
                        
            </div>

            <div class="rsc-body-area">
                <div class="reservation-content-main">
                
                   <!--  <nav class="kjh-page-list">
                        <a href="/">HOME</a> > <a href=""> ROOMS</a>
                    </nav>

                    <div class="kjh-title"> 
                        <span><h1>객실</h1></span>
                        <a href="/resources/image/nav/rooms/roomService_220920.pdf">룸 서비스 메뉴 보기</a>
                    </div> -->
                    
                     <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/rooms">> &nbsp;ROOMS</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>객실</h1>
            </div>

                        <div class="room_section">
                            <div class="room-list-div">    
                                <ul class="room-list-ul">
                                    <li>
                                        <a href="rooms/roomDeluxe">
                                            <span>
                                                <img src="/resources/image/nav/rooms/deluxe1.jpg" id="slideImage">
                                            </span>
                                            <div class="room_info">
                                                <strong>디럭스</strong>
                                                <br>
                                                <span>Deluxe</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="rooms/roomCornerDeluxe">
                                            <span class="list-frame">
                                                <img src="/resources/image/nav/rooms/corner_deluxe1.jpg">
                                            </span>
                                            <div class="room_info">
                                                
                                                    <strong>코너 디럭스</strong><br>
                                                    <span>Corner Deluxe</span>
                                                
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="rooms/roomFamilySuite">
                                            <span>
                                                <img src="/resources/image/nav/rooms/family_suite1.jpg">
                                            </span>
                                            <div class="room_info">
                                            
                                                    <strong>패밀리 스위트</strong><br>
                                                    <span>Family Suite</span>
                                                
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="rooms/roomYeraeSuite">
                                            <span>
                                                <img src="/resources/image/nav/rooms/yerae_suite1.jpg">
                                            </span>
                                            <div class="room_info">
                                                    <strong>예래 스위트</strong><br>
                                                    <span>Yerae Suite</span>
                                                
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                </div>
            </div><!-- rsc-body-area --> 
                <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </body>
</html>