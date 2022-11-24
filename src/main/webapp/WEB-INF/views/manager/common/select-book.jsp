<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<c:set var="bookList" value="${map.bookList}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 조회</title>
    
   	<link rel="stylesheet" href="/resources/css/manager/admin.css">
</head>
<body>

<jsp:include page="/WEB-INF/views/manager/common/admin-header.jsp"/>
    
    
    <div id="manage-book-area">
    
    	<div id="top-menu">
        	<a href="#">MAIN</a>><a href="#">예약 조회/수</a>
    	</div>
    	
    
        <div id="manage-book-title">
            예약 관리 페이지
        </div>

        <div id="manage-book-table">

            <div id="manage-book-table-title">
                <div class="manage-book-no">번호</div>
                <div class="manage-book-date">예약일</div>
                <div class="manage-book-name">상품명</div>
                <div class="manage-book-head-count">인원수</div>
                <div class="manage-book-room-no">호수</div>
                <div class="manage-book-date">체크인</div>
                <div class="manage-book-date">체크아웃</div>
                <div class="manage-book-cost">금액</div>
                <div class="manage-booker-name">예약자명</div>
                <div class="manage-book-status">진행상태</div>
                <div class="manage-book-status-change"></div>
            </div>

                <form action="#" method="post">
            <c:forEach var="bookContent" items="${bookList}">
                    <div class="manage-book-table-content">
                        <div class="manage-book-no manage-border-right" name="bookNo" value="${bookContent.bookNo}">${bookContent.bookNo}</div>
                        <div class="manage-book-date manage-border-right" value="${bookContent.bookDate}">${bookContent.bookDate}</div>
                        <div class="manage-book-name manage-border-right" name="bookPromotion">${bookContent.bookPromotion}</div>
                        <div class="manage-book-head-count manage-border-right">
                            <input type="text" value="${bookContent.bookHeadCount}" name="bookHeadCount">
                        </div>
                        <div class="manage-book-room-no manage-border-right">
                            <input type="text" value="${bookContent.bookRoomNum}" name="bookRoomNum">
                        </div>
                        <div class="manage-book-date manage-border-right">${bookContent.checkIn}</div>
                        <div class="manage-book-date manage-border-right">${bookContent.checkOut}</div>
                        <div class="manage-book-cost manage-border-right">${bookContent.bookPrice}</div>
                        <div class="manage-booker-name manage-border-right">${bookContent.bookMemberName}</div>
                        <div class="manage-book-status">
                            <c:choose>
                                <c:when test="${bookContent.bookProcess == 0}">
                                    <c:set var="sel0" value="selected"/>
                                </c:when>
                                <c:when test="${bookContent.bookProcess == 1}">
                                    <c:set var="sel1" value="selected"/>
                                </c:when>
                                <c:when test="${bookContent.bookProcess == 2}">
                                    <c:set var="sel2" value="selected"/>
                                </c:when>
                            </c:choose>
                            <select name="book-status" id="book-status" >
                                <option value="0" ${sel0}>예약대기</option>
                                <option value="1" ${sel1}>예약완료</option>
                                <option value="2" ${sel2}>예약취소</option>
                            </select>
                        </div>
                        <div id="manage-book-status-change"><button>저장</button></div>
                    </div>
             </c:forEach>
                </form>

        
            <!-- 페이지 이동 버튼 -->
            <div id="rsc-page-skip">
                <a href="#"><<</a>&nbsp;&nbsp;
                <a href="#">< </a> &nbsp;&nbsp;
                <button><a href="#">1</a></button>&nbsp;&nbsp;
                <a href="#">></a> &nbsp;&nbsp;
                <a href="#">>></a>
            </div>
     
        
        </div>
    </div>

    <script>
        const process="${bookList}";
    </script>

    <script src="/resources/js/manager/select.js"></script>
</body>
</html>