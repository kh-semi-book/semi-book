<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 - Hidden Cliff Hotel and Nature</title>

    <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

   
    <link rel="stylesheet" href="/resources/css/common/main.css">
    <link rel="stylesheet" href="/resources/css/nav/about/about.css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
	<!-- 상단 배경 이미지 -->
   
    <div id="top-photo3"></div>
    <div id="cmm-main">
        <!-- <div id="top-menu">
            <a href="/">HOME</a>><a href="/nav/about">HIDDEN CLIFF</a>><a href="/nav/about/cmm">공지사항</a>
        </div>
        <div id="info-title">
            공지사항
        </div>
         -->
         
         <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/about">> &nbsp;HIDDEN CILFF</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="/nav/about/cmm">> &nbsp;공지사항</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>공지사항</h1>
            </div>
        <div id="cmm-contant-area">
            <c:forEach var="cmm" items="${cmmList}">
                <a href="/nav/about/cmmContent/${cmm.cmmNo}" name="right">
                <div id="right-area" name="right">
                    <label for="right">
                        <img src="${cmm.cmmTitleImg}" width="485px" height="335px">
                        <div class="text-area">
                            <div class="cmm-main-title">${cmm.cmmTitle}</div>
                            <div class="cmm-sub-title">${cmm.cmmSub}</div>
                        </div>
                    </label>
                </div>
            </a>
            </c:forEach>
            

            
        </div>

        <div id="other-page"><a href="#"><<</a><a href="#"><</a><a href="#">1</a><a href="#">></a><a href="#">>></a></div>
    </div>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
     <script src="/resources/js/header.js"></script>

</body>
</html>