<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link rel="stylesheet" href="/resources/css/member/login.css">
    <link rel="stylesheet" href="/resources/css/common/main.css">

    <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <div id="login-section">
        <div id="login-head">
            로그인
        </div>

        <div id="login-main">
            <div id="member-login">
                <form action="/member/reservationLogin" method="post" 
                onsubmit="return loginValidate();">
                    <p>회원 로그인</p>
                    <div class="input-section">
                        <input type="text" name="memberId" placeholder="아이디" value="${cookie.saveId.value}">
                        <input type="password" name="memberPw" placeholder="비밀번호">
                    </div
                    ><div class="button-section">
                        <button id="member-login-btn">로그인</button>
                    </div>
                    <label for="saveId"><input type="checkbox" name="saveId" id="saveId" ${temp}>아이디 저장</label>
                </form>
            </div>
            <c:if test="${!empty cookie.saveId.value}">
                <c:set var="temp" value="checked" />
            
            </c:if>
            <div id="guest-login">
                <form action="/reservation/reservationView">
                    <p>비회원 로그인</p>
                    <div class="input-section">
                        <input type="text" name="nonMemberName" placeholder="이름">
                        <input type="text" name="nonMemberBookNo" placeholder="예약번호">
                        <input type="password" name="nonMemberPhone" placeholder="휴대폰(- 빼고 숫자만 입력)">
                    </div
                    ><div class="button-section">
                        <button id="guest-login-btn">로그인</button>
                    </div>
                    <span>* 예약번호는 고객님께 발송되는 예약 확정 문자를 통해 안내됩니다.</span>
                </form>
            </div> 
        </div>

        <div id="login-others">
            <div id="sign-in"> <a href="/member/signUp">
                    <div><i class="fa-solid fa-computer-mouse"></i></div>
                    <div><p>회원가입하기</p><span>다양한 서비스를 편하게 이용하세요!</span></div>
                </a></div
            ><div> <a href="/member/findIdPw">
                <div><i class="fa-solid fa-magnifying-glass"></i></div>
                <div><p>아이디/비밀번호 찾기</p><span>아이디/비밀번호를 잊으셨나요?</span></div>
            </a></div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    <script src="/resources/js/member/login.js"></script>


</body>
</html>

