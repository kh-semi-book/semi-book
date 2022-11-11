<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 문자열 관련 메서드를 제공하는 JSTL (EL 형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>심포니 - Hidden Cliff Hotel and Nature</title>
    
    <link rel="stylesheet" href="/KH_예약/프로젝트css/header/headfoot.css">
    <link rel="stylesheet" href="/KH_예약/프로젝트css/header/미팅룸공통.css">
    <script src="https://kit.fontawesome.com/f7459b8054.js" crossorigin="anonymous"></script>
</head>
<body>
    <header class="bsh-headerzz">
        <!-- 우측 상단 로그인 예약조회 회원가입 -->
        <!-- 헤더 오른쪽 상단 메뉴 -->
        <div id="header">
            <div id="header-top">
                <a href="#"><img src="/images/히든클리프 로고.png"></a>
    
                 <!-- 우측 상단 로그인 예약조회 회원가입 -->
                <!-- 헤더 오른쪽 상단 메뉴 -->
                <div id="header-top-menu">
                    <a href="#">로그인</a>
                    |
                    <a href="/">예약조회</a>
                    |
                    <a href="/">회원가입</a>
                </div>
    
    
                <!-- media(내부 유튜브 링크)/instagram -->
    
                <div id="media-menu">
                    <a href="#">
                        MEDIA
                        <i class="fa-brands fa-youtube"></i>
                    </a>
    
                    <a href="#">
                        INSTAGRAM
                        <i class="fa-brands fa-instagram"></i>
                    </a>
                </div>
            </div>
    
        </div>
    
        <div id="nav-area">
            <ul>
                <li><a href="#">HIDDEN CLIFF</a></li>
                <li><a href="#">SPECIAL OFFER</a></li>
                <li><a href="#">ROOMS</a></li>
                <li><a href="#">DINING</a></li>
                <li><a href="#">THE INFINITY POOL</a></li>
                <li><a href="#">MEETING</a></li>
                <li><a href="#">FACILITIES</a></li>
                <li><a href="#">SPA</a></li>
                <li>
                    <a href="#" id="book-btn"><i class="fa-regular fa-calendar-days"></i>
                        예약하기</a> 
                        <!— 새창으로 —>
                </li>
                
            </ul>
            
        </div>
    </header>




<!------------------------- 위쪽은 헤더 ----------------------->





<div class="bsh-main">
        <div id="head-img" ></div>
        <div class="bsh-path">
            <ol>
                <li class="bsh-path1">
                    <a href="https://www.hiddencliff.kr/main/main.html" style="color: #767676;">home</a>
                </li>
                <li class="bsh-path2">
                    <a href="http://www.hiddencliff.kr/meeting/symphony.html" style="color: #767676;">> &nbsp;meeting</a>
                </li>
                <li class="bsh-path3">> &nbsp;심포니</li>
            </ol>
        </div>

        <div class="bsh-main-title">
            <h1>심포니</h1>
        </div>

        <div class="bsh-main-img1"></div>

        <div class="bsh-main-content">
            <p style="letter-spacing: -1px; font-size: 16px;" >
                대연회장 심포니는 대규모 컨퍼런스에 최적화된 공간으로서 최대 150명까지 수용 가능합니다. <br>
                최상의 AV 시스템이 갖춰져 있고 두 개의 독립된 공간으로 분할하여 다용도로 활용 가능합니다. <br>
                공간은 콘크리트 월로 마감되었으며 최대 15명까지 수용 가능한 별도의 미팅룸이 마련되어 있습니다.
            </p>
        </div>

        <div class="bsh-btngroup">
            <a href="http://127.0.0.1:5500/KH_%EC%98%88%EC%95%BD/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8html/%EC%98%88%EC%95%BD%EB%AC%B8%EC%9D%98.html" class="bsh-btngray" target="_blank">예약 문의하기</a>
            <a href="https://www.hiddencliff.kr/pdf/plan_symphony.html" class="bsh-btngray" target="_blank">도면보기</a>
        </div>

        <div class="bsh-tb1-info">
            <table class="bsh-tb1">
                <colgroup>
                    <col style="width: 15%;">
                    <col style="width: 22%;">
                    <col style="width: 15%;">
                    <col style="width: 48%;">
                </colgroup>
                <tbody>
                    <tr>
                        <td colspan="4" class="bsh-padding-cell"></td>
                    </tr>
                    <tr class="bsh-con-cell">
                        <th>위치</th>
                        <td>1F</td>
                        <th>수용인원</th>
                        <td>최대 150명</td>
                    </tr>
                    <tr class="bsh-con-cell">
                        <th>이용문의</th>
                        <td>02-2277-9999</td>
                        <th>공통시설</th>
                        <td>AV 시스템, 스크린, 무선 마이크, 빔 프로젝터</td>
                    </tr>
                    <tr>
                        <td colspan="4" class="bsh-padding-cell2"></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="bsh-tb2-info">
            <table class="bsh-tb2">
                <colgroup>
                    <col style="width: 13%;">
                    <col style="width: 22%;">
                    <col style="width: 13%;">
                    <col style="width: 13%;">
                    <col style="width: 13%;">
                    <col style="width: 13%;">
                    <col style="width: 13%;">
                </colgroup>
                <thead>
                    <tr>
                        <th>Room name</th>
                        <th>Room Dimensions
                            <br>
                            L x W x H
                        </th>
                        <th>Room size
                            <br>
                            ㎡(Pyung)
                        </th>
                        <th>Banquet</th>
                        <th>Classroom</th>
                        <th>U-shape</th>
                        <th>Theater</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Symphony</td>
                        <td>24.67 x 11.45 x 5</td>
                        <td>282.5 (85.4)</td>
                        <td>170</td>
                        <td>150</td>
                        <td>70</td>
                        <td>250</td>
                    </tr>
                    <tr>
                        <td>Symphony A</td>
                        <td>12.23 x 11.45 x 5</td>
                        <td>141.25 (42.7)</td>
                        <td>60</td>
                        <td>75</td>
                        <td>33</td>
                        <td>100</td>
                    </tr>
                    <tr>
                        <td>Symphony B</td>
                        <td>12.23 x 11.45 x 5</td>
                        <td>141.25 (42.7)</td>
                        <td>60</td>
                        <td>75</td>
                        <td>33</td>
                        <td>100</td>
                    </tr>
                </tbody>
            </table>
        </div>
</div>






<!------------------------- 아래는 풋터 ------------------------->

<footer>
    <div id="footer-first">
        <div id="inner-footer-contact">
            <table>
                <tr>
                    <td colspan="4">
                        <p><strong>Contact US </strong></p>
                    </td>
                </tr>
                <tr>
                    <td>대표전화</td>
                    <td class="float-right padding-r">064-752-7777</td>
                    <td>파노라마(레스토랑)</td>
                    <td class="float-right">064-795-4163</td>
                </tr>
                <tr>
                    <td>객실 예약</td>
                    <td class="float-right padding-r">02-2277-9999</td>
                    <td>인피니티 풀 데스크</td>
                    <td class="float-right">064-795-4151</td>
                </tr>
                <tr>
                    <td></td>
                    <td id="small-font" class="float-right padding-r">(주중 09:00~18:00)</td>
                </tr>
                <tr>
                    <td>E - mail</td>
                    <td class="float-right padding-r">info@hiddencliff.kr</td>
                </tr>

            </table>

            <a href="#" class="book-btn2">예약하기</a>
        </div>
    </div>

    <div id="footer-middle-back">
        <div id="footer-middle">
            <ul>
                <p class="footer-menu-title">HIDDEN CLIFF</p>
                <li><a href="">호텔소개</a></li>
                <li><a href="">오시는길</a></li>
                <li><a href="">공지사항</a></li>
            </ul>
            <ul>
                <p class="footer-menu-title">SPECIAL OFFER</p>
                <li><a href="#">객실 프로모션</a></li>
                <li><a href="#">다이닝</a></li>
                <li><a href="#">이벤트</a></li>
            </ul>
            <ul>
                <p>ROOMS</p>
                <li><a href="#">객실 리스트</a></li>
            </ul>
            <ul>
                <p>DINING</p>
                <li><a href="">파노라마</a></li>
                <li><a href="">비욘드</a></li>
                <li><a href="">치치</a></li>
            </ul>
            <ul>
                <p id="small-text">THE INFINITY POOL</p>
                <li> <a href="#">인피니티 풀</a></li>
            </ul>
            <ul>
                <p>MEETING</p>
                <li><a href="">심포니</a></li>
                <li><a href="">하모니</a></li>
                <li><a href="">오퍼스</a></li>
            </ul>
            <ul>
                <p>FACILITIES</p>
                <li><a href="#">키즈 플레이 룸</a></li>
                <li><a href="#">피트니트 센터</a></li>
                <li><a href="#">히든 트레일</a></li>
            </ul>
            <ul>
                <p>SPA</p>
                <li><a href="#">보떼에르 스파 바이 록시땅</a></li>
            </ul>
        </div>
    </div>
    <div id="footer-last">
        <img src="/images/히든클리프 푸터 로고.png">

        <p>제주특별자치도 서귀포시 예래해안로 542 (중문) 예래클리프개발(주)</p>
        <p>(구: 제주특별자치도 서귀포시 상예동 625) 대표이사 : 이병혁</p>

        <!— 사이트상에서는 이부분이 좀 더 강조되어 보임 —>
            <p><strong>사업자등록번호</strong>616-81-98536<strong>통신판매신고번호</strong> (제2016-제주예래-15호)</p>

            <p>Copyright © yerae Cliff Development CO., LTD. All Rights Reserved.</p>


            <span>
                <a href="#">개인정보 처리 방침</a>
                |
                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                |
                <a href="#"><i class="fa-sharp fa-solid fa-n"></i></a>
                |
                <a href="#"><i class="fa-solid fa-hotel"></i></a>
            </span>
    </div>
</footer>
</body>
</html>