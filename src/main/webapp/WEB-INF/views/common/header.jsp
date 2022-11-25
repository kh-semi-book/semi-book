<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>


    <div id="header">
        <div id="header-top">
            <a href="/"><img src="/resources/image/logo.png"></a>

             <!-- 우측 상단 로그인 예약조회 회원가입 -->
            <!-- 헤더 오른쪽 상단 메뉴 -->
            <c:choose>
                <c:when test="${empty sessionScope.loginMember}">
                    <div id="header-top-menu">
                        <a href="/member/login">로그인</a>
                        |
                        <a href="/reservation/reservationView">예약조회</a>
                        |
                        <a href="/member/signUp">회원가입</a>
                    </div>
                </c:when>

                <c:otherwise>
                     <div id="header-top-menu">
                        <a href="/member/logout">로그아웃</a>
                        |
                        <a href="/member/memberEdit">마이페이지</a>
                        |
                        <a href="/reservation/reservationView">예약조회</a>
                    </div>
                
                </c:otherwise>
            </c:choose>



            <!-- media(내부 유튜브 링크)/instagram -->

            <div id="media-menu">
                <a href="/media">
                    MEDIA
                    <i class="fa-brands fa-youtube"></i>
                </a>

                <a href="/manager/main">
                    INSTAGRAM
                    <i class="fa-brands fa-instagram"></i>
                </a>
            </div>
        </div>

    </div>


    <div id="outer-nav-area">
        <div id="nav-area">
            <ul>
                <li>
                    <a href="/nav/about" class="li-animation">HIDDEN CLIFF</a>
                    <ul class="inner-list">
                        <li><a href="/nav/about">호텔소개</a></li>
                        <li><a href="/nav/about/contact">오시는길</a></li>
                        <li><a href="/nav/about/cmm">공지사항</a></li>
                    </ul>
                </li>
                <li >
                    <a href="/nav/specialOffer/roomPromotion" class="li-animation">SPECIAL OFFER</a>
                    <ul class="inner-list">
                        <li><a href="/nav/specialOffer/roomPromotion">객실 프로모션</a></li>
                        <li><a href="/nav/specialOffer/dining">다이닝</a></li>
                        <li><a href="/nav/specialOffer/event">이벤트</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/nav/rooms" class="li-animation" >ROOMS</a>
                    <ul class="inner-list">
                        <li><a href="/nav/rooms">객실 리스트</a></li>
                    </ul>
                </li>
                <li >
                    <a href="/nav/dining/panorama" class="li-animation">DINING</a>
                    <ul class="inner-list">
                        <li><a href="/nav/dining/panorama">파노라마</a></li>
                        <li><a href="/nav/dining/beyond">비욘드</a></li>
                        <li><a href="/nav/dining/chichi">치치</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/nav/infinitiPool" class="li-animation">THE INFINITY POOL</a>
                    <ul class="inner-list">
                        <li><a href="/nav/infinitiPool">인피니티 풀</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/nav/meeting/symphony" class="li-animation">MEETING</a>
                    <ul class="inner-list">
                        <li><a href="/nav/meeting/symphony">심포니</a></li>
                        <li><a href="/nav/meeting/harmony">하모니</a></li>
                        <li><a href="/nav/meeting/opus">오퍼스</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/nav/facilities/kids" class="li-animation">FACILITIES</a>
                    <ul class="inner-list">
                        <li><a href="/nav/facilities/kids">키즈 플레이 룸</a></li>
                        <li><a href="/nav/facilities/fitness">피트니스 센터</a></li>
                        <li><a href="/nav/facilities/trail">히든 트레일</a></li>
                    </ul>
                </li>
                <li >
                    <a href="/nav/spa" class="li-animation">SPA</a>
                    <ul class="inner-list">
                        <li><a href="/nav/spa">보떼에르 스파 바이 록시땅</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/reservation/reservation1" id="book-btn"><i class="fa-regular fa-calendar-days"></i>
                        예약하기</a> 
                        <!-- 새창으로 -->
                </li>
                
            </ul>
        </div>

        <div id="header-top-btn">
            <a href="#"><i class="fa-solid fa-arrow-up"></i>TOP</a>
        </div>
       
    </div>
    
    <script src="/resources/js/header.js"></script>