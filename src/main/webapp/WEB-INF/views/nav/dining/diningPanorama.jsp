<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL(EL형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 <title>파노라마 - Hidden Cliff Hotel and Nature</title>

        <link rel="stylesheet" href="/resources/css/nav/dining/diningPanorama.css">
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
                 
     </div>
                 

          <div class="rsc-body-area">
                <!-- <nav class="kjh-page-list">
                    <a href="/">HOME</a> > <a href="/nav/dining/panorama"> DINING</a> > <a href=""> 파노라마</a>
                </nav>
                 <h1 class="kjh-h1">파노라마 올데이 다이닝</h1> -->
                 
                 <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/dining/panorama">> &nbsp;DINING</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="/nav/dining/panorama">> &nbsp;파노라마</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>파노라마</h1>
            </div>
                <div id = "slide-photo">

                    <span class="move prev">&#x3C;</span>
                    <span class="move next">&#x3E;</span>

                  <img src="/resources/image/nav/dining/panorama/panorama1.jpg" id="slideImage">
                </div>
                <div class="kjh-sub-section">
                  <p class="kjh-content">
                    국내 최초 270˚파노라마 뷰를 조망할 수 있는 자연 속 레스토랑 올 데이 다이닝 파노라마에서는<br>
                    엄선된 재료로 정성스럽게 만들어진 조식 뷔페부터 다채로운 디너까지 다양한 메뉴의 올 데이 다이닝을 즐기실 수 있습니다.<br>
                    포근한 우드 인테리어가 공간에 포근함을 더하는 이곳에서 풍성한 미식 여행을 시작하시길 바랍니다.
                  </p>
                

                  <div class="kjh-btn">
                    <a href="/resources/image/nav/dining/panorama/panorama_menu_221031.pdf">전체 메뉴보기</a>
                    <a href="/nav/specialOffer/dining">다이닝 이벤트</a>
                  </div>

              
                  <p class="kjh-gray_box">· 조식 뷔페 요금은 세금 포함된 가격이며 할인카드 및 기타 중복 할인이 불가합니다.</p>
                </div>
                
              <div class="kjh-tbl">
                <table class="kjh-border">
                  <tr class="kjh-no">
                    <td class="">위치</td>
                    <td>2F</td>
                    <td>좌석</td>
                    <td > 실내 160석/ 야외 테라스 76석</td>
                  </tr>
                  <tr>
                    <td>이용문의</td>
                    <td>064-795-4163</td>
                    <td>이용안내</td>
                    <td>
                        <ul >
                          <li class="kjh-last" >
                            <strong>조식 뷔페</strong> 07:00 ~ 10:00<br>
                            성인 41,000원 & 어린이 (48개월 ~ 초등학생까지) 22,000원
                          </li>
                          <li class="kjh-last">
                            <strong>런치 & 디너</strong> 12:00 ~ 21:30 (라스트 오더 20:30)<br>
                            단품 메뉴 별 상이
                          </li>
                        </ul>
                    </td>
                  </tr>

                </table>
              </div>
            </div> <!-- 메인 영역 -->


  <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
  	     <script src="/resources/js/nav/dining/diningPanorama.js"></script>

           </body>

</html>