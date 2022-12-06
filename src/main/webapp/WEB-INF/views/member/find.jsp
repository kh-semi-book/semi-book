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
                <div>
                    <p>아이디 찾기</p>
                    <div class="input-section">
                        <input type="text" name="inputName-id" placeholder="이름">
                        <input type="text" name="inputEmail-id" placeholder="이메일">
                    </div
                    ><div class="button-section">
                        <button id="find-id-btn">확인</button>
                   </div>
                </div>
            </div
            ><div id="guest-login">
                <div>
                    <p>비밀번호 찾기</p>
                    <div class="input-section">
                        <input type="text" name="inputId" placeholder="아이디">
                        <input type="text" name="inputName-pw" placeholder="이름">
                        <input type="text" name="inputEmail-pw" placeholder="이메일">
                    </div
                    ><div class="button-section">
                        <button id="find-pw-btn">확인</button>
                    </div>
                </div>
            </div> 
        </div>
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="/resources/js/member/findIdPw.js"></script>

</body>
</html>