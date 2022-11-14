<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디/비밀번호 찾기</title>

    
    <link rel="stylesheet" href="/resources/css/member/login.css">

    <link rel="stylesheet" href="/resources/css/common/main.css">

    <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

</head>
<body>
    
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    
    <div id="login-section">
        <div id="login-head">
            아이디/비밀번호 찾기
        </div>

        <div id="login-main" class="find-id-pw-main">
            <div id="member-login">
                <form action="#">
                    <p>아이디 찾기</p>
                    <div class="input-section">
                        <input type="text" name="inputId" placeholder="이름">
                        <input type="password" name="inputPw" placeholder="이메일">
                    </div
                    ><div class="button-section">
                        <button id="member-login-btn">확인</button>
                   </div>
                </form>
            </div
            ><div id="guest-login">
                <form action="#">
                    <p>비밀번호 찾기</p>
                    <div class="input-section">
                        <input type="text" name="inputName" placeholder="아이디">
                        <input type="text" name="inputBookNo" placeholder="이름">
                        <input type="password" name="inputTel" placeholder="이메일">
                    </div
                    ><div class="button-section">
                        <button id="guest-login-btn">확인</button>
                    </div>
                </form>
            </div> 
        </div>
    </div>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>


</body>
</html>