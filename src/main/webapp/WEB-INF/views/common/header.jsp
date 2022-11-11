<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <div id="header">
        <div id="header-top">
            <a href="#"><img src="/resources/image/logo.png"></a>

             <!-- 우측 상단 로그인 예약조회 회원가입 -->
            <!-- 헤더 오른쪽 상단 메뉴 -->
            <div id="header-top-menu">
                <a href="/member/login">로그인</a>
                |
                <a href="/reservation/check">예약조회</a>
                |
                <a href="/member/signUp">회원가입</a>
            </div>


            <!-- media(내부 유튜브 링크)/instagram -->

            <div id="media-menu">
                <a href="#">
                    MEDIA
                    <i class="fa-brands fa-youtube"></i>
                </a>

                <a href="#">
                    INSTAGRAM
                    <i class="fa-brands fa-instagram"></i>
                </a>
            </div>
        </div>

    </div>

    <div id="nav-area">
        <ul>
            <li><a href="/nav/about">HIDDEN CLIFF</a></li>
            <li><a href="/nav/specialOffer">SPECIAL OFFER</a></li>
            <li><a href="/nav/rooms">ROOMS</a></li>
            <li><a href="/nav/dining">DINING</a></li>
            <li><a href="/nav/infinitiPool">THE INFINITY POOL</a></li>
            <li><a href="/nav/meeting">MEETING</a></li>
            <li><a href="/nav/facilities">FACILITIES</a></li>
            <li><a href="/nav/spa">SPA</a></li>
            <li>
                <a href="/reservation/reservation1" id="book-btn"><i class="fa-regular fa-calendar-days"></i>
                    예약하기</a> 
                    <!-- 새창으로 -->
            </li>
            
        </ul>

       
        <div id="header-top-btn">
            <a href="#"><i class="fa-solid fa-arrow-up"></i>TOP</a>
        </div>
       
    </div>