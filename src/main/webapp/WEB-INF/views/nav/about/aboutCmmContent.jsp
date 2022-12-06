<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
   
    <link rel="stylesheet" href="/resources/css/common/main.css">
    <link rel="stylesheet" href="/resources/css/nav/about/about.css">
</head>
<body>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <div id="top-photo3">
    </div>
    <div id="cmm-in-main">
       <!--  <div id="top-menu">
            <a href="/">HOME</a>><a href="/nav/about">HIDDEN CLIFF</a>><a href="/nav/about/cmm">공지사항</a>
        </div>
        <div id="info-title">
            공지사항
        </div> -->
        
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

        <div id="cmm-in-title">
            ${cmm.cmmTitle }
        </div>
        <div id="cmm-in-content">
            <img src="${cmm.cmmConImg}">
        </div>

        <div id="cmm-in-goto-list"><a href="/nav/about/cmm">목록</a></div>
    </div>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
     <script src="/resources/js/header.js"></script>

</body>
</html>