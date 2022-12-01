<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="bookList" value="${map.bookList}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 조회 - Hidden Cliff Hotel and Nature</title>

    <link rel="stylesheet" href="/resources/css/reservation/reservationView.css">
    <link rel="stylesheet" href="/resources/css/common/main.css">
    
    <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>
    <style>
        body { margin: auto; }
    </style>
</head>

<body>
    
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <div class="reservation-lookUp-page">
        <div class="rsc-top-image"></div>
        <div class="rsc-head-area">
            <section></section>
            <section class="rsc-body-TopArea">
                <!-- 페이지 조회  -->
                <nav class="rsc-page-list">
                    <a href="#">HOME</a> > <a href="#">마이페이지</a> > <a href="#">예약조회</a>
                </nav>
                <!-- 페이지 제목 -->
                <div class="rsc-page-title">
                    <h1>예약조회</h1>
                </div>
            </section>
            <section></section>
        </div>
        
        <div class="rsc-body-area">
            <div class="reservation-content-main">
                <table width="960px" id="table-room-view">
                    <tr>
                        <th width="100px" height="100px">예약일</th>
                        <th width="300px">상품명</th>
                        <th width="160px">룸타입</th>
                        <th width="100px">체크인</th>
                        <th width="100px">체크아웃</th>
                        <th width="100px">금액<br>(VAT포함)</th>
                        <th width="100px">진행상태</th>
                    </tr>
                <c:forEach var="book" items="${bookList}">
                    <tr>
                        <td height="100px">${book.bookDate}</td>
                        <td><a href="/reservation/reservationViewDetail">${book.promotionTitle}</a></td>
                        <td>${book.roomName}${book.roomViewName}</td>
                        <td>${book.checkIn}</td>
                        <td>${book.checkOut}</td>
                        <td>${book.bookPrice}</td>
                        <td>${book.roomProcess}</td>
                    </tr>
                </c:forEach>
                </table>

                <br><br><br>

                <!-- 페이지 이동 버튼 -->
                <div id="rsc-page-skip">
                    <a href="#"> << </a>&nbsp;&nbsp;
                    <a href="#"> < </a> &nbsp;&nbsp;
                    <button><a href="#">1</a></button>&nbsp;&nbsp;
                    <a href="#">></a> &nbsp;&nbsp;
                    <a href="#">>></a>

                    <br><br><br>
                </div>
                
            </div>
        </div>
        
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>

</html>