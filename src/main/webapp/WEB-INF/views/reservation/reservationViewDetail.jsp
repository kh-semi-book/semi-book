<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>예약조회 - Hidden Cliff Hotel and Nature</title>
				
        <link rel="stylesheet" href="/resources/css/reservation/reservationViewDetails.css">
        <link rel="stylesheet" href="/resources/css/common/main.css">
        
        <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

        <style>
            body{margin: auto;}
        </style>
    </head>

    <body>
    
    <!-- =================================[ header ]=================================== -->
    	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- =================================[ header ]=================================== -->




        <!-- 전체 div 태그 -->
        <div class="reservation-lookUp-page">
            <!-- 상단 영역 -->
            <div class="rsc-top-image"></div>      
            <div class="rsc-head-area">
                <section></section>
                <section class="rsc-body-TopArea">
                    <!-- 페이지 조회  -->
                    <nav class="rsc-page-list">
                        <a href="/">HOME</a> > <a href="#">마이페이지</a> > <a href="#">예약하기</a>
                    </nav>
                    <!-- 페이지 제목 -->
                    <div class="rsc-page-title"><h1>예약조회</h1></div>
                </section>
                <section></section>
            </div>
         </div>
            <!-- 중간 영역 -->
            <div class="rsc-body-area">
                <div class="reservation-content-main">
                    <!-- 테이블 영역 -->
                    <div class="rsc-table">

                        <!-- 01. 기본 정보 테이블 -->
                        <h4>01. 기본정보</h4>
                        <div>
                            <table class="rsc-basic-info">
                                <tr>
                                    <th width="133px" height="65px" id="rsc-first-th">예약번호</th>
                                    <td width="200px"></td>
                                    <th width="133px">접수번호</th>
                                    <td width="200px"></td>
                                    <th width="133px">예약일</th>
                                    <td width="201px" id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">예약자명</th>
                                    <td>${book.memberName}</td>
                                    <th>휴대폰</th>
                                    <td>010-7130-5756(시험)</td>
                                    <th>전화번호</th>
                                    <td id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">이메일</th>
                                    <td colspan="5" id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">고객요청</th>
                                    <td colspan="5" id="rsc-last-td"></td>
                                </tr>
                            </table>
                        </div> 
                        
                        <br>
                        
                        <!-- 02. 룸 정보 테이블 -->
                        <h4>02. 예약객실 정보</h4>
                        <div>
                            <table class="rsc-room-info">
                                <tr>
                                    <th width="133px" height="65px" id="rsc-first-th">상품명</th>
                                    <td width="367px"></td>
                                    <th width="133px" id="rsc-first-th">룸타입</th>
                                    <td width="367px"id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">체크인</th>
                                    <td></td>
                                    <th id="rsc-first-th">체크아웃</th>
                                    <td id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">박수</th>
                                    <td></td>
                                    <th id="rsc-first-th">룸수</th>
                                    <td id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">어른 인원</th>
                                    <td></td>
                                    <th id="rsc-first-th">어린이 인원</th>
                                    <td id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">진행상태</th>
                                    <td colspan="3" id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">옵션</th>
                                    <td colspan="3" id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">옵션합계</th>
                                    <td colspan="3" id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">객실가</th>
                                    <td></td>
                                    <th id="rsc-first-th">객실가 부가세</th>
                                    <td id="rsc-last-td"></td>
                                </tr>
                                <tr>
                                    <th height="64.5px" id="rsc-first-th">요금합계</th>
                                    <td colspan="3" id="rsc-last-td"></td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <br><br>
                        <!-- 버튼 -->
                    <div class="rsc-btn">
                        <form action="/reservation/reservationView">
                            <button id="rsc-btn-list">목록</button>
                        </form> 
                        &nbsp;
                        <form action="#">
                            <button id="rsc-btn-change">예약변경/취소</button>
                        </form>
                    </div>
                </div>
            </div>
        <!-- ========================= footer ========================= -->
        	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
        <!-- ========================= footer ========================= -->



    </body>

</html>