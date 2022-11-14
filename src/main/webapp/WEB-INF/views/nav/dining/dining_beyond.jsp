<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL(EL형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 <title>[다이닝 - 비욘드] Page</title>

        <link rel="stylesheet" href="css/dining_beyond.css">
       	<link rel="stylesheet" href="/resources/css/common/main.css">

        <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>


        <style>
            body{margin: auto;}
        </style>
    </head>

    <body>
         <!-- header -->
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
    <div class="kjh-head-area">
        <!-- 헤더밑에 파노라마 사진 -->
    </div>

                 

          <div class="rsc-body-area">
            <div class="reservation-content-main">
                <div class="kjh-step"> 
                    <ol>
                        <li class="kjh-path1"><a href="">HOME</a></li>
                        <li class="kjh-path2"><a href="">> DINING</a></li>
                        <li class="kjh-path3"><a href="">> 비욘드</a></li>
                    </ol>
                </div>
              <h1 class="kjh-h1">비욘드 루프탑 바</h1>
              <div>
                <img src="/img/beyond3.jpg" alt="">
              </div>
              <div class="kjh-sub-section">
                    <p class="kjh-content">
                        탁 트인 야외 전망 데크에서 제주 중문을 한눈에 내려다 볼 수 있는 비욘드 루프탑 바.<br>
                        다양한 주류 컬렉션과 아름다운 야경이 어우어린 이곳에서 가장 로맨틱한 순간을 맞이하세요.
                    </p>
              
               </div>
                <div class="kjh-btn">
                  <a href="">전체 메뉴보기</a>
                  <a href="">다이닝 이벤트</a>
                </div>

            
              
                <div class="kjh-tbl">
                    <table class="kjh-border">
                            <tr class="kjh-no">
                            <td class="">위치</td>
                            <td>7F</td>
                            <td>좌석</td>
                            <td > 실내 38석 </td>
                            </tr>
                            <tr>
                            <td>이용문의</td>
                            <td>064-795-4163</td>
                            <td>운영시간</td>
                            <td>
                                <ul >
                                    <li class="kjh-last" >
                                    <strong>루프탑 바</strong> 18:00 ~ 24:00(라스트오더 23:00)
                                    </li>
                                </ul>
                            </td>
                            </tr>

                    </table>
                </div>
            </div> <!-- 메인 영역 -->


        </div>
  <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
         </body>

</html>