<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원 탈퇴 - Hidden Cliff Hotel and Nature</title>
        
        <link rel="stylesheet" href="/resources/css/member/memberSecession.css">
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
                    <!-- 페이지 조회  -->
                    <nav class="rsc-page-list">
                    <a href="#">HOME</a> > 
                    <a href="#">마이페이지</a> > 
                    <a href="#">회원탈퇴</a>
                    </nav>
                    <!-- 페이지 제목 -->
                    <div class="rsc-page-title"><h1>회원탈퇴</h1></div>
                </section>
                <section></section>
            </div>

            <!-- 중간영역 -->
            <div class="rsc-body-area">
            <!-- 메인영역 -->
                <div id="rsc-member-Notice">
                    <p id="rsc-member-del-text">
                        간단한 본인정보 확인후 회원탈퇴가 가능합니다. <br>
                        더 좋은 여행상품과 서비스를 제공하기 위해 노력하겠습니다.
                    </p>
                </div>
                <form action="memeberDelete" id="rsc-memeber-del" method="POST" onsubmit="return memberDeleteValidate()">
                    <div id="rsc-del">
                        <div>
                            <ul>
                                <li><input type="text" name="memberName"   placeholder="이름"    id="memberName"></li>
                                <li><input type="text" name="memberId"     placeholder="아이디"  id="memberId" ></li>
                                <li><input type="password" name="memberPw" placeholder="비밀번호"  id="memberPw"></li>
                                <li><input type="email" name="memberEmail" placeholder="이메일"  id="memberEmail" ></li>
                            </ul>
                        </div>
                        <div>
                            <button id="SecessionBtn">회원탈퇴</button>
                        </div>
                    </div>
                </form>
            </div>



            

            <!-- [ 하단 영역 ]-->
            <div class="rsc-foot-area">
            <!-- ========================= [ footer ] ========================= -->
            <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
            <!-- ========================= [ /footer ] ========================= -->
        </div>

<script src="/resources/js/member/memberSecession.js"></script>   
</body>

</html>