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
    <title>예약하기 - Hidden Cliff Hotel and Nature</title>

    <link rel="stylesheet" href="../프로젝트css/header/headfoot.css">
    <link rel="stylesheet" href="../프로젝트css/예약하기2번.css">

</head>

<body>
    <header>
        <div id="header">
            <div id="header-top">
                <a href="#"><img src="/images/히든클리프 로고.png"></a>

                <!-- 우측 상단 로그인 예약조회 회원가입 -->
                <!-- 헤더 오른쪽 상단 메뉴 -->
                <div id="header-top-menu" style="margin-top: 25px;">
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
                    <!-- <!— 새창으로 —> -->
                </li>

            </ul>

        </div>

    </header>




    <!--------------------------- 위는 헤더 ------------------------------>


    <div class="bsh-main">
        <div id="head-img"></div>
        <div class="bsh-path">
            <ol>
                <li class="bsh-path1">
                    <a href="https://www.hiddencliff.kr/main/main.html" style="color: #767676;">home</a>
                </li>
                <li class="bsh-path2">
                    <a href="http://127.0.0.1:5500/KH_%EC%98%88%EC%95%BD/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8html/%EC%98%88%EC%95%BD%ED%95%98%EA%B8%B02%EB%B2%88.html#"
                        style="color: #767676;">> &nbsp;&nbsp;예약하기</a>
                </li>
            </ol>
        </div>

        <div class="bsh-main-title">
            <h1>예약하기</h1>
        </div>

        <div class="bsh-stepbox">
            <ul>
                <li>
                    <span>STEP 01</span>
                    일정선택
                </li>
                <li class="bsh-on" title="현재 위치">
                    <span>STEP 02</span>
                    객실&패키지 선택
                </li>
                <li>
                    <span>STEP 03</span>
                    옵션 선택
                </li>
                <li>
                    <span>STEP 04</span>
                    고객 정보 입력
                </li>
                <li>
                    <span>STEP 05</span>
                    예약 완료
                </li>
            </ul>
        </div>

        <div class="bsh-sub-section">
            <div class="bsh-plz">
                <form name="frm" method="post" action="#">
                    <div class="bsh-leftbox">
                        <div class="bsh-promotionlist" style="display: block;">
                            <ul>
                                <li>
                                    <div class="bsh-item">
                                        <div class="bsh-img">
                                            <img src="/images/예약하기2-1.jpg" title="대표이미지"
                                                style="width: 210px; height: 100%; object-fit:cover;" class="bsh-cp">
                                        </div>
                                        <div class="bsh-cont">
                                            <strong>Fall in Infiniti</strong>
                                            <span class="bsh-txt">기간 : 2022-08-24 ~ 2022-11-30</span>
                                            <table class="opt_table">
                                                <colgroup>
                                                    <col style="width:34px">
                                                    <col>
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th
                                                            style="font-size:13px; font-weight:400; color:#666; vertical-align:top;">
                                                            구성 :</th>
                                                        <td>
                                                            <span class="bsh-txt">
                                                                디럭스 1박+풀문나이트 2인+말피 칵테일 2잔<br>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <a href="#" onclick="window.open()"
                                                style="width: 170px; vertical-align: middle; display: inline-block; margin-top: 44px;">
                                                패키지 상세보기 &nbsp;> </a>
                                        </div>
                                    </div>


                                    <div class="bsh-roomselect">
                                        <ul class="bsh-hidelist" id="list332">
                                            <li>
                                                <strong class="bsh-tit">가든 디럭스 </strong>
                                                <div class="bsh-priceitem">
                                                    <ul>
                                                        <li>
                                                            <span class="bsh-view" style="margin-bottom: 10px;">더블
                                                                (1박)</span>
                                                            <span class="bsh-price"
                                                                style="margin-bottom: 10px;">230,000원</span>
                                                            <a href="#" class="bsh-btn bsh-blue"
                                                                style="margin-bottom: 10px;">예약</a>
                                                        </li>
                                                        <li>
                                                            <span class="bsh-view">트윈 (1박)</span>
                                                            <span class="bsh-price">230,000원</span>
                                                            <a href="#" class="bsh-btn bsh-blue">예약</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li>
                                                <strong class="bsh-tit">클리프 디럭스 </strong>
                                                <div class="bsh-priceitem">
                                                    <ul>
                                                        <li>
                                                            <span class="bsh-view" style="margin-bottom: 10px;">더블
                                                                (1박)</span>
                                                            <span class="bsh-price"
                                                                style="margin-bottom: 10px;">260,000원</span>
                                                            <a href="#" class="bsh-btn bsh-blue"
                                                                style="margin-bottom: 10px;">예약</a>
                                                        </li>
                                                        <li>
                                                            <span class="bsh-view">트윈 (1박)</span>
                                                            <span class="bsh-price">260,000원</span>
                                                            <a href="#" class="bsh-btn bsh-blue">예약</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>



                            <!-- 2번 -->



                            <ul>
                                <li>
                                    <div class="bsh-item">
                                        <div class="bsh-img">
                                            <img src="/images/예약하기2-2.jpg" title="대표이미지"
                                                style="width: 210px; height: 100%; object-fit:cover;" class="bsh-cp">
                                        </div>
                                        <div class="bsh-cont">
                                            <strong>LA DOLCE VITA</strong>
                                            <span class="bsh-txt">기간 : 2022-08-08 ~ 2022-12-31</span>
                                            <table class="opt_table">
                                                <colgroup>
                                                    <col style="width:34px">
                                                    <col>
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th
                                                            style="font-size:13px; font-weight:400; color:#666; vertical-align:top;">
                                                            구성 :</th>
                                                        <td>
                                                            <span class="bsh-txt">
                                                                스위트 1박+조식 2인+풀문나이트+말피 칵테일 2잔&비치타올<br>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <a href="#" onclick="window.open()"
                                                style="width: 170px; vertical-align: middle; display: inline-block; margin-top: 44px;">
                                                패키지 상세보기 &nbsp;> </a>
                                        </div>
                                    </div>


                                    <div class="bsh-roomselect">
                                        <ul class="bsh-hidelist" id="list332">
                                            <li>
                                                <strong class="bsh-tit">파노라마 스위트 </strong>
                                                <div class="bsh-priceitem">
                                                    <ul>
                                                        <li>
                                                            <span class="bsh-view" style="margin-bottom: 10px;">더블
                                                                (1박)</span>
                                                            <span class="bsh-price"
                                                                style="margin-bottom: 10px;">310,000원</span>
                                                            <a href="#" class="bsh-btn bsh-blue"
                                                                style="margin-bottom: 10px;">예약</a>
                                                        </li>
                                                        <li>
                                                            <span class="bsh-view">더블 (1박)</span>
                                                            <span class="bsh-price">310,000원</span>
                                                            <a href="#" class="bsh-btn bsh-blue">예약</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>



                            <!-- 3번 -->



                            <ul>
                                <li>
                                    <div class="bsh-item">
                                        <div class="bsh-img">
                                            <img src="/images/예약하기2-3.jpg" title="대표이미지"
                                                style="width: 210px; height: 100%; object-fit:cover;" class="bsh-cp">
                                        </div>
                                        <div class="bsh-cont">
                                            <strong>[스파 패키지] Time to Relax</strong>
                                            <span class="bsh-txt">기간 : 2022-08-06 ~ 2023-03-31</span>
                                            <table class="opt_table">
                                                <colgroup>
                                                    <col style="width:34px">
                                                    <col>
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <th
                                                            style="font-size:13px; font-weight:400; color:#666; vertical-align:top;">
                                                            구성 :</th>
                                                        <td>
                                                            <span class="bsh-txt">
                                                                클리프 뷰 무료 업그레이드+16만 8천원 상당 스파 1인+풀문나이트인뮤직<br>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <a href="#" onclick="window.open()"
                                                style="width: 170px; vertical-align: middle; display: inline-block; margin-top: 44px;">
                                                패키지 상세보기 &nbsp;> </a>
                                        </div>
                                    </div>


                                    <div class="bsh-roomselect">
                                        <ul class="bsh-hidelist" id="list332">
                                            <li>
                                                <strong class="bsh-tit">클리프 디럭스 </strong>
                                                <div class="bsh-priceitem">
                                                    <ul>
                                                        <li>
                                                            <span class="bsh-view" style="margin-bottom: 10px;">더블
                                                                (1박)</span>
                                                            <span class="bsh-price"
                                                                style="margin-bottom: 10px;">340,000원</span>
                                                            <a href="#" class="bsh-btn bsh-blue"
                                                                style="margin-bottom: 10px;">예약</a>
                                                        </li>
                                                        <li>
                                                            <span class="bsh-view">트윈 (1박)</span>
                                                            <span class="bsh-price">340,000원</span>
                                                            <a href="#" class="bsh-btn bsh-blue">예약</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>



            <!-- 라이트 빠 -->



            <div class="RightBar" style="position: absolute; top: 630px; left: 1190px;">

                <div class="RightBar" style="position: absolute; top: 0px;">
                    <div id="_tip_box_item" style="left: 147px; top: 163px; display: none;">
                        <div class="pop_age">
                            <ul class="box">
                                <li><span class="a_age">48개월 이상~만12세 이하</span> <span class="a_date">(인원 추가 요금 별도
                                        발생)</span></li>
                            </ul><span class="arrow"></span>
                        </div>
                    </div>
                    <ul class="summary">
                        <li>
                            <div class="bsh-tit abc">일정</div>
                            <div class="bsh-cont">
                                <table class="normal right_box" summary="체크인, 체크아웃, 숙박일수, 객실수, 인원 선택">
                                    <caption>일정 선택</caption>
                                    <colgroup>
                                        <col width="23%">
                                        <col width="34%">
                                        <col width="43%">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th scope="row"><label for="sdate">체크인</label></th>
                                            <td colspan="2">
                                                <input style="text-align:right;" type="text" name="sdate" id="sdate"
                                                    value="2022-11-04 (금)" readonly="">
                                                <input type="hidden" name="room_date" value="2022-11-04">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="edate">체크아웃</label></th>
                                            <td colspan="2">
                                                <input style="text-align:right;" type="text" name="edate" id="edate"
                                                    value="2022-11-05 (토)" readonly="">
                                                <input type="hidden" name="room_date_out" value="2022-11-05">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="room_day">박수</label></th>
                                            <td colspan="2"><input type="text" name="room_day" id="room_day" value="1"
                                                    class="w06" style="width: 19px !important" readonly=""> 박</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="room_cnt">객실수</label></th>
                                            <td colspan="2">
                                                <input type="text" name="room_cnt" id="room_cnt"
                                                    style="text-align:right; padding-right:7px" value="1" readonly=""> 실
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="room_adult_num">인원수</label></th>
                                            <td style="padding-right: 0">
                                                <span>어른</span>
                                                <!--<select name="room_adult_num" id="room_adult_num" class="w06"></select>-->
                                                <input type="text" name="room_adult_num" id="room_adult_num" class="w30"
                                                    value="1" readonly="">
                                            </td>
                                            <td style="padding-right: 0" class="bsh-zzz">
                                                <span>어린이</span>
                                                <!--<select name="room_child_num" id="room_child_num" class="w06"></select>-->
                                                <input type="text" name="room_child_num" id="room_child_num" class="w30"
                                                    value="0" readonly="">
                                                <p class="age_info ageguide_tip"><a href="#"><img src="/images/i이미지.gif"
                                                            alt="상세정보보기" style="filter:grayscale(1);"></a></p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                    </ul>
                    <div class="btn_rewind mt15"><a href="#" class="btn powderblue wid">일정 재선택하기</a></div>
                </div>
            </div>
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
