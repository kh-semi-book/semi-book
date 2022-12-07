<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>예약 완료 - Hidden Cliff Hotel and Nature</title>
        
        
        <link rel="stylesheet" href="/resources/css/reservation/reservation5.css">
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

        <div class="reservation-lookUp-page">
            <!-- 최상단 이미지 -->
            <div class="rsc-top-image"></div>
        
            <!-- 상단영역 -->
            <div class="rsc-head-area">
                <section></section>
                <section class="rsc-body-TopArea">
                <!-- 페이지 제목 -->
                    <div class="rsc-page-title"><h1>예약완료</h1></div>
                </section>
                <section></section>
            </div>

            <!-- 중간영역 -->
            <div class="rsc-body-area">
                <!-- 메인영역 -->
                <div id="rsc-member-Notice">
                    <!-- ====================================================== -->
                    <br><br>

                   
                    <!-- ====================================================== -->
                    <br><br>

                    <section id="rsc-reservationComplete-subTitle">
                        <h1>예약하기 완료</h1>
                    </section>

                    <br><br>
                    <section id="reservation_body_area">
                        <div id="rsc-reservationComplete-text">
                            <h3>히든 클리프 호텔 & 네이쳐를 예약해주셔서 감사합니다.</h3> <br>
                            <span>
                                우수한 서비스와 품질로 특별한 경험을 선사해드리겠습니다.
                            </span>
                        </div>

                        <br><br>
            
                        <!-- 버튼 -->
                        <div class="rsc-btn">
                            <form action="/reservation/reservationView">
                                <button id="rsc-btn-login">예약조회</button>
                            </form> 
                            &nbsp;
                            <form action="/">
                                <button id="rsc-btn-goMain">메인으로</button>
                            </form>
                        </div>
                    </section>
                </div>
            </div>

            <!-- 하단 영역 -->
            <div class="rsc-foot-area">
                <!-- ========================= footer ========================= -->
                <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
                <!-- ========================= footer ========================= -->
            </div>  
        </div>
        
</body>

</html>