<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


            <div class="manage-book-table-content">
                <div class="manage-book-no manage-border-right">1</div>
                <div class="manage-book-date manage-border-right">2022-10-13</div>
                <div class="manage-book-name manage-border-right">디럭스 더블 가든</div>
                <div class="manage-book-head-count manage-border-right">
                    <input type="text" value="2">
                </div>
                <div class="manage-book-room-no manage-border-right">
                    <input type="text" value="203">
                </div>
                <div class="manage-book-date manage-border-right">2022-11-11</div>
                <div class="manage-book-date manage-border-right">2022-11-20</div>
                <div class="manage-book-cost manage-border-right">560,000</div>
                <div class="manage-booker-name manage-border-right">홍길동</div>
                <div class="manage-book-status">
                    <select name="book-status" id="book-status">
                        <option value="">예약대기</option>
                        <option value="">예약완료</option>
                        <option value=""></option>
                    </select>
                </div>
                <div class="manage-book-status-change"><button>저장</button></div>
            </div>
        
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
</body>
</html>