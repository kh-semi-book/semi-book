<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원 가입 최종 페이지</title>
        
        <link rel="stylesheet" href="resources/css/member/memberSession.css">
        <link rel="stylesheet" href="resources/css/common/main.css">
        
        <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>
        
        <style>
            body{margin: auto;}
        </style>
    </head>

    <body>
        <!-- =================================[ header ]=================================== -->
       	<jsp.include page="/WEB-INF/views/common/header.jsp">
        <!-- =================================[ header ]=================================== -->




        <div class="reservation-lookUp-page">
            <!-- 최상단 이미지 -->
            <div class="rsc-top-image"></div>
        
                <!-- 상단영역 -->
            <div class="rsc-head-area">
                <section></section>
                <section class="rsc-body-TopArea">
                <!-- 페이지 제목 -->
                    <div class="rsc-page-title"><h1>회원가입</h1></div>
                </section>
                <section></section>
            </div>

            <!-- 중간영역 -->
            <div class="rsc-body-area">
                <!-- 메인영역 -->
                <div id="rsc-member-Notice">
                    <!-- ====================================================== -->
                    <br><br>

                    <section id="reservation4_body_area">
                        <div id="reservation4_step_area">
                            <div class="reservation4_step" id="step1">
                                <p class="step">STEP 01</p>
                                <p>일정선택</p>
                            </div>
                            <div id="rsc-arrow-var">
                                <img src="/webapp/resources/image/화살표.png">
                            </div>
                            <div class="reservation4_step" id="step2">
                                <p class="step">STEP 02</p>
                                <p>객실&패키지 선택</p>
                            </div>
                            <div id="rsc-arrow-var">
                                <img src="/webapp/resources/image/화살표.png">
                            </div>
                            <div class="reservation4_step" id="step3">
                                <p class="step">STEP 03</p>
                                <p>옵션 선택</p>
                            </div>
                        </div>
                    </section>
                    <!-- ====================================================== -->
                    <br><br>

                    <section id="rsc-memberDelete-subTitle">
                        <h1>가입 완료</h1>
                    </section>

                    <br><br>
                    <section id="memberDelete_body_area">
                        <div id="rsc-member-del-text">
                            <h3>히든 클리프 호텔 & 네이쳐 회원이 되신걸 환영합니다.</h3> <br>
                            <span>
                                공식 홈페이지에서만 예약 가능한 다양한 상품과 이벤트 혜택을 이용해 보시기 바랍니다. 
                            </span> <br><br>
                            <p>
                                김연수님의 아이디는 raura98입니다.
                            </p>
                        </div>

                        <br><br>
            
                        <!-- 버튼 -->
                        <div class="rsc-btn">
                            <form action="#">
                                <button id="rsc-btn-login">로그인</button>
                            </form> 
                            &nbsp;
                            <form action="#">
                                <button id="rsc-btn-goMain">메인으로</button>
                            </form>
                        </div>
                    </section>
                </div>
            </div>


            
            <!-- 하단 영역 -->
            <div class="rsc-foot-area">
                <!-- ========================= footer ========================= -->
                <jsp.include page="/WEB-INF/views/common/footer.jsp">
                <!-- ========================= footer ========================= -->
        
</body>

</html>