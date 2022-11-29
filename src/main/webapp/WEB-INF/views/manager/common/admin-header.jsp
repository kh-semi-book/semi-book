<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="header">
    <div id="header-top">
        <a href="/manager/main"><img src="/resources/image/logo.png"></a>

            <!-- 우측 상단 로그인 예약조회 회원가입 -->
        <!-- 헤더 오른쪽 상단 메뉴 -->
        <div id="header-top-menu">
            <a href="/manager/test">로그아웃</a>
            |
            <a>관리자 페이지</a>
        </div>

    </div>

</div>

<div id="nav-area">
    <ul>
        <li><a href="/manager/selectBook">객실 예약 관리</a></li>
        <li><a href="/manager/meetingRoom">미팅룸 예약 관리</a></li>
        <li><a href="/manager/cmm">공지사항 관리</a></li>
        <li><a href="/manager/promotion">프로모션 관리</a></li>
        <li><a href="/manager/dining">다이닝 관리</a></li>
        <li><a href="/manager/event">이벤트 관리</a></li>
    </ul>

    
    <div id="header-top-btn">
        <a href="#"><i class="fa-solid fa-arrow-up"></i>TOP</a>
    </div>
    
</div>