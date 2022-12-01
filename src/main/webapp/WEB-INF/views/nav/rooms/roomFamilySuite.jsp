<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL(EL형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>[rooms-패밀리스위트] Page</title>

        <link rel="stylesheet" href="/resources/css/nav/rooms/roomFamilySuite.css">
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
                <div class="reservation-content-main">
                    <nav class="kjh-page-list">
                        <a href="/">HOME</a> > <a href="/nav/rooms"> ROOMS</a> > <a href=""> 패밀리 스위트</a>
                    </nav>

                    <div class="kjh-title"> 
                        <span><h1 class="kjh-h1">패밀리 스위트</h1>
                    </div>

                    <div id = "slide-photo">
                        <span class="move prev">&#x3C;</span>
                        <span class="move next">&#x3E;</span>
                            <img src="/resources/image/nav/rooms/familySuite/familySuite1.jpg" id="slideImage">
                    </div>
                    
                    <div class="kjh-sub-section">
                        <p class="kjh-content">
                        패밀리 스위트 룸은 사랑하는 사람들과 함께 여유롭게 쉴 수 있도록 편안함을 가장 중요시한 공간입니다.
                        </p>
                    </div>

                    <div class="kjh-tbl">  <!-- 7행 5열 -->
                        <table class="kjh-border">
                            <tr class="kjh-no">
                                <th rowspan="3">객실개요</th>
                                <th class="kjh-sub">위치</th>
                                <td>3층 ~ 7층</td>
                                <th class="kjh-sub">투숙인원</th>
                                <td>성인 3인 기준/ 최대 4인(영유아 포함)</td>
                            </tr>

                            <tr class="kjh-no">
                                <th class="kjh-sub">배드타입</th>
                                <td>더블침대2개 <br>
                                    더브림대 1개 & 싱글침대 2개
                                </td>
                                <th class="kjh-sub">면적</th>
                                <td>45㎡</td>
                            </tr>

                            <tr class="kjh-no">
                                <th class="kjh-sub">체크인/체크아웃</th>
                                <td>14:00/11:00</td>
                                <th class="kjh-sub">전망</th>
                                <td>가든 뷰(기본 전망)<br>
                                    클리프 뷰(계곡, 바다 or 계곡, 폭포, 한라)
                                </td>
                            </tr>

                            <tr>
                                <td colspan="5" class="kjh-padding_bt"></td>
                            </tr>
                            <tr class="kjh-yes">
                                <th>어메니티</th>
                                <td colspan="4">록시땅 어메니티, 달바 올데이 스페셜 스킨케어 키트</td>
                                </tr>

                            <tr class="kjh-yes">
                                <th>제공사항</th>
                                <td colspan="4">발코니, 욕조, 생수 1일 2병 제공, 순면 목욕가운 및 슬리퍼, 옷장, 샤워부스, 비데, 화장거울, 업무용 책상,<br>
                                    초고속 무료 인터넷, 평면 LCD TV, 데이터포트, 헤어 드라이기, 전화기, 개인금고, 멀티콘센트, 전기 주전자</td>
                            </tr>
                            
                            <tr class="kjh-yes">
                                <th>부대시설</th>
                                <td colspan="4">2F 파노라마 레스토랑 조식 뷔페 07:00 ~ 10:00<br>
                                    1F 인피니티 풀 09:00 ~ 22:00 (19:30~22:00 유료)</td>
                            </tr>

                            <tr class="kjh-yes">
                                <th>이용문의</th>
                                <td colspan="4">02-2277-9999</td>
                            </tr>
                        </table>
    
                    </div>
            

                </div> <!-- content-main -->
            </div><!-- rsc-body-area --> 
                <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
                <script src="/resources/js/nav/room/roomFamilySuite.js"></script>

    </body>

</html>