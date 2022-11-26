<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<c:set var="bookList" value="${map.bookList}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 조회</title>
    
   	<link rel="stylesheet" href="/resources/css/manager/selectBook.css">
   	<link rel="stylesheet" href="/resources/css/manager/admin.css">
</head>
<body>

<jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp"/>
    
    
    <div id="search-book-area">

    <div id="top-menu">
        <a href="#">MAIN</a>><a href="#">예약 검색</a>
    </div>


    <div id="book-title">예약 조회 페이지</div>



    <fieldset>
        <legend>검색 상세</legend>
        
    <form action="" id="book-search-option">
        <span class="search-option">
            <select name="searchOption">
                <option value="bookerName">예약자명</option>
                <option value="roomType">룸타입</option>
                <option value="roomNum">호수</option>
                <option value="bookStatus">예약 상태</option>
            </select>
        </span>   
        
        <input type="text" class="search-option-input" name="searchOptionInput">

            
        
        <span id="search-date">
            <div class="search-option">날짜 선택</div>
        </span>
        <span class="search-option">
            <select name="searchDateOption">
                <option value="bookDate">예약일</option>
                <option value="checkIn">체크인</option>
                <option value="checkOut">체크아웃</option>
            </select>
        </span>
        <span class="search-date-input">
          <input name="inputDate1" type="date"> ~ <input name="inputDate2" type="date">
        </span> 

        <button>검색</button>

    </form>

    </fieldset>
    
    <div id="book-list-table">

        <div id="book-list-title">
            <div class="book-list-no">번호</div>
            <div class="book-list-date">예약일</div>
            <div class="book-list-reservation-no">예약번호</div>
            <div class="book-list-room-no">호수</div>
            <div class="book-list-party-num">인원</div>
            <div class="book-list-date">체크인</div>
            <div class="book-list-date">체크아웃</div>
            <div class="book-list-cost">금액</div>
            <div class="book-list-booker-name">예약자명</div>
            <div class="manage-book-status">진행상태</div>
            <div class="manage-book-status-change"></div>
        </div>

    <c:forEach var="book" items="${bookList}">
        <div class="book-list-content">
            <div class="book-list-no manage-border-right">${book.bookNo}</div>
            <div class="book-list-date manage-border-right">${book.bookDate}</div>
            <div class="book-list-reservation-no manage-border-right">${book.bookNo}</div>
            <div class="book-list-room-no manage-border-right">
                <input type="text" value="${book.bookRoomNum}" name="bookRoomNum"> 
            </div>
            <div class="book-list-party-num manage-border-right">
                <input type="text" value="${book.bookHeadCount}" name="bookHeadCount">
            </div>
            <div class="book-list-date manage-border-right">
                 <input name="checkIn" type="date" value="${book.checkIn}" name="checkIn">
            </div>
            <div class="book-list-date manage-border-right">
                <input name="checkOut" type="date" value="${book.checkOut}" name="checkOut">
            </div>
            <div class="book-list-cost money manage-border-right" id="money">${book.bookPrice}</div>
            <div class="book-list-booker-name manage-border-right">${book.bookMemberName}</div>
            <div class="manage-book-status">${book.bookProcess}
                <c:choose>
                    <c:when test="${book.bookProcess == 0}">
                        <c:set var="sel0" value="selected"/>
                    </c:when>
                    <c:when test="${book.bookProcess == 1}">
                        <c:set var="sel1" value="selected"/>
                    </c:when>
                    <c:when test="${book.bookProcess == 2}">
                        <c:set var="sel2" value="selected"/>
                    </c:when>
                </c:choose>
                <select name="bookProcess" id="book-process">
                    <option value="0" ${sel0}>예약대기</option>
                    <option value="1" ${sel1}>예약완료</option>
                    <option value="2" ${sel2}>예약취소</option>
                </select>
            </div>
            <div class="manage-book-status-change"><button>저장</button></div>
        </div>
        </c:forEach>

   
        
        <!— 페이지 이동 버튼 —>
        <div id="rsc-page-skip">
            <a href="#"><<</a>&nbsp;&nbsp;
            <a href="#">< </a> &nbsp;&nbsp;
            <button><a href="#">1</a></button>&nbsp;&nbsp;
            <a href="#">></a> &nbsp;&nbsp;
            <a href="#">>></a>
        
        </div>


    <script>
        const process="${bookList}";
    </script>

    <script src="/resources/js/manager/select.js"></script>
</body>
</html>