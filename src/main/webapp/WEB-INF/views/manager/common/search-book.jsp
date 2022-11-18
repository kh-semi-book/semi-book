<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 검색</title>
    
    <link rel="stylesheet" href="/resources/css/manager/admin.css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp"/>
    <div id="search-book-area">
    
     <div id="top-menu">
        <a href="#">MAIN</a>><a href="#">예약 검색</a>
    </div>
    
    
    
    <div id="search-book-title">예약 검색 페이지</div>

    <fieldset id="search-book-option">
        <legend>검색 상세</legend>
        
        <span class="search-option">
            <select name="search-option">
                <option value="">예약자명</option>
                <option value="">룸타입</option>
                <option value="">호수</option>
                <option value="">예약 상태</option>
            </select>
        </span>   
        
        <input type="text" class="search-option-input">

            
        
        <span id="search-date">
            <div class="search-option">날짜 선택</div>
        </span>
        <span class="search-option">
            <select name="search-option">
                <option value="">예약일</option>
                <option value="">체크인</option>
                <option value="">체크아웃</option>
            </select>
        </span>
        <span class="search-date-input">
          <input type="date"> ~ <input type="date">
        </span> 
        <button>검색</button>

    </fieldset>
    
        <div id="search-book-table">

        <div id="search-book-table-title">
            <div class="search-book-no">번호</div>
            <div class="search-book-date">예약일</div>
            <div class="search-book-reservation-no">예약번호</div>
            <div class="search-book-room-no">호수</div>
            <div class="search-book-party-num">인원</div>
            <div class="search-book-type">룸타입</div>
            <div class="search-book-date">체크인</div>
            <div class="search-book-date">체크아웃</div>
            <div class="search-book-cost">금액</div>
            <div class="manage-booker-name">예약자명</div>
            <div class="search-book-status">진행상태</div>
        </div


        ><div class="search-book-table-content">
            <div class="search-book-no manage-border-right">1</div>
            <div class="search-book-date manage-border-right">2022-10-13</div>
            <div class="search-book-reservation-no manage-border-right">R12341234</div>
            <div class="search-book-room-no manage-border-right">301</div>
            <div class="search-book-party-num manage-border-right">3</div>
            <div class="search-book-type manage-border-right">A</div>
            <div class="search-book-date manage-border-right">2022-11-11</div>
            <div class="search-book-date manage-border-right">2022-11-20</div>
            <div class="search-book-cost manage-border-right">560,000</div>
            <div class="manage-booker-name manage-border-right">홍길동</div>
            <div class="search-book-status">예약완료</div>
        </div>
        
        <!-- 페이지 이동 버튼 -->
        <div id="rsc-page-skip">
            <a href="#"><<</a>&nbsp;&nbsp;
            <a href="#">< </a> &nbsp;&nbsp;
            <button><a href="#">1</a></button>&nbsp;&nbsp;
            <a href="#">></a> &nbsp;&nbsp;
            <a href="#">>></a>
        <div>

        
        </div>
    </div>

    
</body>
</html>