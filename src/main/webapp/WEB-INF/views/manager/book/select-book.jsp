<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="bookList" value="${map.bookList}"/>
<c:set var="pagination" value="${map.pagination}"/>

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
        <span class="search-date">
            예약자명
        </span>   
        
        <input type="text" class="search-option-input" name="searchOptionInput" value="${beforeSearch.searchOptionInput}">

            
        
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
          <input name="inputDate1" type="date"  value="${beforeSearch.inputDate1}"> ~ <input name="inputDate2" type="date"value="${beforeSearch.inputDate2}">
        </span> 

        <button id="searchOptionBtn">검색</button>

    </form>

    </fieldset>
    
 
    
    <div id="book-list-table">

        <div id="book-list-title">
            <div class="book-list-no">번호</div>
            <div class="book-list-date">예약일</div>
            <div class="book-list-reservation-no">예약번호</div>
            <div class="book-list-room-no">호수</div>
            <div class="book-list-party-num">총 인원</div>
            <div class="book-list-date">체크인</div>
            <div class="book-list-date">체크아웃</div>
            <div class="book-list-cost">금액</div>
            <div class="book-list-booker-name">예약자명</div>
            <div class="manage-book-status">진행상태</div>
            <div class="manage-book-status-change"></div>
        </div>
        

    <c:forEach var="book" items="${bookList}" varStatus="index">
      <form action="/manager/updateBook" method="POST">
        <div class="book-list-content">
     
            <div class="book-list-no manage-border-right">${index.count}</div>
            <div class="book-list-date manage-border-right">${book.bookDate}</div>
            <div class="book-list-reservation-no manage-border-right bookNo">
            <%-- 수정 완료 후 리다이렉트 시 사용 예정 --%>
            <input type="hidden" name="bookNo" value="${book.bookNo}">
            ${book.bookNo}</div>
            <div class="book-list-room-no manage-border-right">
            <c:choose>
                    <c:when test="${book.roomProcess == 2}">
                      <!--  <input type="text" value="0" name="bookRoomNum" class="bookRoomNum">  -->
                    </c:when>
                    <c:otherwise>
                       <input type="text" value="${book.bookRoomNum}" name="bookRoomNum" class="bookRoomNum"> 
                    </c:otherwise>
                   
                </c:choose>
                
            </div>
            <div class="book-list-party-num manage-border-right">
                <input type="text" value="${book.adultCount+book.childCount}" name="bookHeadCount" readonly>
            </div>
            <div class="book-list-date manage-border-right">
                 <input name="checkIn" type="text" value="${book.checkIn}" name="checkIn" readonly>
            </div>
            <div class="book-list-date manage-border-right">
                <input name="checkOut" type="text" value="${book.checkOut}" name="checkOut" readonly>
            </div>
            <div class="book-list-cost money manage-border-right" id="money"> <fmt:formatNumber value="${book.bookPrice}" /></div>
            <c:choose>
            	<c:when test="${book.bookMemberName=='무명'}">
	            <div class="book-list-booker-name manage-border-right">${book.bookNonMemberName}</div>
            	</c:when>
            	<c:otherwise>
	            <div class="book-list-booker-name manage-border-right">${book.bookMemberName}</div>
            	</c:otherwise>
            
            </c:choose>
	            
             <c:choose>
                 <c:when test="${book.roomProcess == 0}">
                     <c:set var="sel0" value="selected"/>
                 </c:when>
                 <c:when test="${book.roomProcess == 1}">
                     <c:set var="sel1" value="selected"/>
                 </c:when>
                 <c:when test="${book.roomProcess == 2}">
                     <c:set var="sel2" value="selected"/>
                 </c:when>
             </c:choose>
            <!-- <div class="manage-book-status"> -->
                
                <c:choose>
                    <c:when test="${book.roomProcess == 2}">
                       <div class="manage-book-status"> <input type="text" value="예약취소" readonly/></div>
                       <div class="manage-book-status-change"></div>
                       
                       
                    </c:when>
                    <c:otherwise>
                        <div class="manage-book-status"><select name="roomProcess" id="book-process">
		                    <option value="0" ${sel0}>예약대기</option>
		                    <option value="1" ${sel1}>예약완료</option>
		                    <option value="2" ${sel2}>예약취소</option>
		                </select></div>
		                
		                <div class="manage-book-status-change"><button id="updateBtn">저장</button></div>
		                
                    </c:otherwise>
                   
                </c:choose>
                
                
                
                
                 <c:set var="sel0" value=""/>
                 <c:set var="sel1" value=""/>
                 <c:set var="sel2" value=""/>
           <!--  </div>
            <div class="manage-book-status-change"><button id="updateBtn">저장</button></div> -->
            
        </div>
        </form>
        </c:forEach>

   
        
        
        </div>
        


    <script>
        const process="${bookList}";
    </script>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="/resources/js/manager/select.js"></script>
</body>
</html>