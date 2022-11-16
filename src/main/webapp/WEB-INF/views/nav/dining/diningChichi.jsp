<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL(EL형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  <title>[다이닝 - 치치] Page</title>

        <link rel="stylesheet" href="/resources/css/nav/dining/diningChichi.css">
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
                        <li class="kjh-path3"><a href="">> 치치</a></li>
                    </ol>
                </div>
              <h1 class="kjh-h1">치치 (라운드 카페)</h1>
              <div>
                <img src="/resources/image/nav/dining/chichi1.jpg" alt="">
              </div>
              <div class="kjh-sub-section">
                    <p class="kjh-content">
                        이태리어로 ‘정겹게 이야기 나누다’라는 뜻의 라운지 카페 치치에서는 간단한 델리와 프리미엄 커피, 다양한 종류의 Tea를 맛보실 수 있습니다.<br>
                사랑하는 사람과 도란도란 이야기를 나누며 차 한 잔의 여유를 즐겨보세요.
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
                            <td>3층</td>
                            <td>좌석</td>
                            <td > 실내 42석 </td>
                            </tr>
                            <tr>
                            <td>이용문의</td>
                            <td>064-795-4163</td>
                            <td>운영시간</td>
                            <td>
                                <ul >
                                    <li class="kjh-last" >
                                    10:00 ~ 16:30(라스트오더 16:20)
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