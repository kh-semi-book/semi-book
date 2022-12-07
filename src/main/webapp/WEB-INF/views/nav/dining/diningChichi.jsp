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
            
               <!--  <nav class="kjh-page-list">
                    <a href="/">HOME</a> > <a href="/nav/dining/panorama"> DINING</a> > <a href=""> 치치</a>
                </nav>

                <h1 class="kjh-h1">치치 (라운드 카페)</h1> -->
                
                <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/dining/panorama">> &nbsp;DINING</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="/nav/dining/chichi">> &nbsp;치치</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>치치</h1>
            </div>
                <div id = "slide-photo">
                    <span class="move prev">&#x3C;</span>
                        <span class="move next">&#x3E;</span>
                    <img src="/resources/image/nav/dining/chichi/chichi1.jpg" id="slideImage">
                </div>
                <div class="kjh-sub-section">
                    <p class="kjh-content">
                    이태리어로 ‘정겹게 이야기 나누다’라는 뜻의 라운지 카페 치치에서는 간단한 델리와 프리미엄 커피, 다양한 종류의 Tea를 맛보실 수 있습니다.<br>
                    사랑하는 사람과 도란도란 이야기를 나누며 차 한 잔의 여유를 즐겨보세요.
                    </p>        
                </div>
    
                <div class="kjh-btn">
                    <a href="/resources/image/nav/dining/chichi/chichi_menu_221005.pdf">전체 메뉴보기</a>
                    <a href="/nav/specialOffer/dining">다이닝 이벤트</a>
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
        </div>
            <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
            <script src="/resources/js/nav/dining/diningChichi.js"></script>

        </body>

</html>