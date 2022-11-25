<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<c:set var="bookList" value="${map.bookList}"/>

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

     <fieldset>
        <legend>검색 상세</legend>
        
        <form action="/manager/searchBook" id="search-book-option">
        <span class="search-option">
            <select name="searchOption">
                <option value="bookerName">예약자명</option>
                <option value="roomNum">호수</option>
                <option value="bookStatus">예약 상태</option>
            </select>
        </span>   
        
        <input type="text" class="search-option-input" name="searchOptionInput" value="${sc.searchOptionInput}">

            
        
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
          <input name="searchDateInput1" type="date" value="${sc.searchDateInput1}"> ~ <input name="searchDateInput2" type="date" value="${sc.searchDateInput2}">
        </span> 
        <button id="searchOptionBtn">검색</button>

    </form>

    </fieldset>

    
    <div id="search-book-table">


        <div id="search-book-table-title">
            <div class="search-book-no">번호</div>
            <div class="search-book-date">예약일</div>
            <div class="search-book-reservation-no">예약번호</div>
            <div class="search-book-room-no">호수</div>
            <div class="search-book-party-num">인원</div>
            <div class="search-book-date">체크인</div>
            <div class="search-book-date">체크아웃</div>
            <div class="search-book-cost">금액</div>
            <div class="manage-booker-name">예약자명</div>
            <div class="search-book-status">진행상태</div>
        </div>

        <c:choose>
            <c:when test="${empty bookList}">
            <div class="search-book-table-content">
                조회된 내용이 없습니다. 
            </div>
            </c:when>
        
	        <c:otherwise>     
		        <c:forEach var="bookList" items="${bookList}">
		           
		            <div class="search-book-table-content">
		                <div class="search-book-no manage-border-right">${bookList.bookNo}</div>
		                <div class="search-book-date manage-border-right">${bookList.bookDate}</div>
		                <div class="search-book-reservation-no manage-border-right">${bookList.bookNo}</div>
		                <div class="search-book-room-no manage-border-right">${bookList.bookRoomNum}</div>
		                <div class="search-book-party-num manage-border-right">${bookList.bookHeadCount}</div>
		                <div class="search-book-date manage-border-right">${bookList.checkIn}</div>
		                <div class="search-book-date manage-border-right">${bookList.checkOut}</div>
		                <div class="search-book-cost manage-border-right">${bookList.bookPrice}</div>
		                <div class="manage-booker-name manage-border-right">${bookList.bookMemberName}</div>
		                <div class="search-book-status">${bookList.bookProcess}</div>
		            </div>
		            
		
		        </c:forEach>
	        </c:otherwise>
         </c:choose>
        
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
    <script src="/resources/js/manager/search.js"></script>
    
</body>
</html>