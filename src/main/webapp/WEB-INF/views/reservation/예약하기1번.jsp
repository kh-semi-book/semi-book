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
    <link rel="stylesheet" href="../프로젝트css/예약하기1번.css">

</head>

<body>
    <header>
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




    <!--------------------------- 위는 헤더 ------------------------------>


    <div class="bsh-main">
        <div id="head-img"></div>
        <div class="bsh-path">
            <ol>
                <li class="bsh-path1">
                    <a href="https://www.hiddencliff.kr/main/main.html" style="color: #767676;">home</a>
                </li>
                <li class="bsh-path2">
                    <a href="http://127.0.0.1:5500/KH_%EC%98%88%EC%95%BD/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8html/%EC%98%88%EC%95%BD%ED%95%98%EA%B8%B01%EB%B2%88.html"
                        style="color: #767676;">> &nbsp;예약하기</a>
                </li>
            </ol>
        </div>

        <div class="bsh-main-title">
            <h1>예약하기</h1>
        </div>

        <div class="bsh-stepbox">
            <ul>
                <li class="bsh-on" title="현재 위치" style="color: #333;">
                    <span>STEP 01</span>
                    일정선택
                </li>
                <li>
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
            <div class="bsh-leftbox">
                <div class="bsh-calender">
                    <div class="bsh-checking in">
                        <strong class="bsh-tit">체크인</strong>
                        <div id="item_disp_datecal_in" class="pa20">
                            <ul class="year_wrap">
                                <li class="cal_pre"><img src="/images/step_작은화살표.png" alt="이전 달"
                                        onclick="ajax_loader('ajax.date_roomcal.html?yy=2022&amp;mm=10&amp;sdate=2022-11-05&amp;edate=&amp;format=&amp;hseq=&amp;ridx=&amp;mode=in&amp;cal=on','item_disp_datecal_in')"
                                        class="cp" style="transform: rotate(180deg)"></li>
                                <li class="cal_year">2022. <span>11</span></li>
                                <li class="cal_next"><img src="/images/step_작은화살표.png" alt="다음 달"
                                        onclick="ajax_loader('ajax.date_roomcal.html?yy=2022&amp;mm=12&amp;sdate=2022-11-05&amp;edate=&amp;format=&amp;hseq=&amp;ridx=&amp;mode=in&amp;cal=on','item_disp_datecal_in')"
                                        class="cp"></li>
                            </ul>
                            <!--<ul class="calendar_ico h_state">
                        <li><span class="ok"></span><span class="txt">즉시예약</span></li>
                        <li><span class="able"></span><span class="txt">일반예약</span></li>
                        <li><span class="close"></span><span class="txt">예약마감</span></li>
                    </ul>-->
                            <table border="0" cellspacing="0" cellpadding="0" class="p_calendar table_cal item_calendar"
                                id="item_calendar_in">
                                <thead>
                                    <tr>
                                        <th class="weekend">일</th>
                                        <th>월</th>
                                        <th>화</th>
                                        <th>수</th>
                                        <th>목</th>
                                        <th>금</th>
                                        <th class="weekend sat">토</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr height="40px">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td align="center"><strong style="color:#464646"><em class=""></em>1</strong>
                                        </td>
                                        <td align="center"><strong style="color:#464646"><em class=""></em>2</strong>
                                        </td>
                                        <td align="center"><strong style="color:#464646"><em class=""></em>3</strong>
                                        </td>
                                        <td align="center"><strong style="color:#464646"><em class=""></em>4</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-05" room_date="2022-11-05"
                                            class="cp in_active"><strong style="color:"><em class=""></em>5</strong>
                                        </td>
                                    </tr>
                                    <tr height="40px">
                                        <td align="center" id="dtdwe_2022-11-06" room_date="2022-11-06" class="cp">
                                            <strong style="color:#e22842"><em class=""></em>6</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-07" room_date="2022-11-07" class="cp">
                                            <strong style="color:#464646"><em class=""></em>7</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-08" room_date="2022-11-08" class="cp">
                                            <strong style="color:#464646"><em class=""></em>8</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-09" room_date="2022-11-09" class="cp">
                                            <strong style="color:#464646"><em class=""></em>9</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-10" room_date="2022-11-10" class="cp">
                                            <strong style="color:#464646"><em class=""></em>10</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-11" room_date="2022-11-11" class="cp">
                                            <strong style="color:#464646"><em class=""></em>11</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-12" room_date="2022-11-12" class="cp">
                                            <strong style="color:#333"><em class=""></em>12</strong>
                                        </td>
                                    </tr>
                                    <tr height="40px">
                                        <td align="center" id="dtdwe_2022-11-13" room_date="2022-11-13" class="cp">
                                            <strong style="color:#e22842"><em class=""></em>13</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-14" room_date="2022-11-14" class="cp">
                                            <strong style="color:#464646"><em class=""></em>14</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-15" room_date="2022-11-15" class="cp">
                                            <strong style="color:#464646"><em class=""></em>15</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-16" room_date="2022-11-16" class="cp">
                                            <strong style="color:#464646"><em class=""></em>16</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-17" room_date="2022-11-17" class="cp">
                                            <strong style="color:#464646"><em class=""></em>17</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-18" room_date="2022-11-18" class="cp">
                                            <strong style="color:#464646"><em class=""></em>18</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-19" room_date="2022-11-19" class="cp">
                                            <strong style="color:#333"><em class=""></em>19</strong>
                                        </td>
                                    </tr>
                                    <tr height="40px">
                                        <td align="center" id="dtdwe_2022-11-20" room_date="2022-11-20" class="cp">
                                            <strong style="color:#e22842"><em class=""></em>20</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-21" room_date="2022-11-21" class="cp">
                                            <strong style="color:#464646"><em class=""></em>21</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-22" room_date="2022-11-22" class="cp">
                                            <strong style="color:#464646"><em class=""></em>22</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-23" room_date="2022-11-23" class="cp">
                                            <strong style="color:#464646"><em class=""></em>23</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-24" room_date="2022-11-24" class="cp">
                                            <strong style="color:#464646"><em class=""></em>24</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-25" room_date="2022-11-25" class="cp">
                                            <strong style="color:#464646"><em class=""></em>25</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-26" room_date="2022-11-26" class="cp">
                                            <strong style="color:#333"><em class=""></em>26</strong>
                                        </td>
                                    </tr>
                                    <tr height="40px">
                                        <td align="center" id="dtdwe_2022-11-27" room_date="2022-11-27" class="cp">
                                            <strong style="color:#e22842"><em class=""></em>27</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-28" room_date="2022-11-28" class="cp">
                                            <strong style="color:#464646"><em class=""></em>28</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-29" room_date="2022-11-29" class="cp">
                                            <strong style="color:#464646"><em class=""></em>29</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-30" room_date="2022-11-30" class="cp">
                                            <strong style="color:#464646"><em class=""></em>30</strong>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- /달력 -->
                            <script type="text/javascript">
                                $(function () {
                                    // 로딩바 닫기
                                    objCenter("ajax_loading_bar", "off");

                                    var sdate = $("#sdate").val().substring(0, 10);
                                    var select = "";
                                    var mode = "in";
                                    var room_day = parseInt($("#room_day").val());
                                    var cal = "";
                                    if (cal) $("#item_disp_datecal_out").load("ajax.date_roomcal.html?yy=2022&mm=11&mode=out");

                                    // 초기상태
                                    if (select == 'in_sel') {
                                        $('#item_disp_datecal_out td#dtdwe_' + date_add(sdate, 1)).addClass('in_active');

                                        // 일정 박스에 추가
                                        $('#edate').val(date_add(sdate, 1) + ' (' + getTodayLabel(date_add(sdate, 1)) + ')');
                                        $('#room_day').val(1);
                                    }
                                    else {
                                        $('#item_disp_datecal_in td#dtdwe_' + sdate).addClass('in_active');
                                        $('#item_disp_datecal_out td#dtdwe_' + date_add(sdate, room_day)).addClass('in_active');

                                        // 일정 박스에 추가
                                        $('#sdate').val(sdate + ' (' + getTodayLabel(sdate) + ')');
                                        $('#edate').val(date_add(sdate, room_day) + ' (' + getTodayLabel(date_add(sdate, room_day)) + ')');
                                        $('#room_day').val(1);
                                    }

                                    // 달력 클릭
                                    $("#item_calendar_in tbody > tr > td").click(function () {
                                        var mode = 'in';
                                        if ($(this).attr('room_date')) {
                                            var id_val = $(this).parent().parent().parent().parent().attr('id');
                                            var sdate = $(this).attr('room_date');
                                            $('#' + id_val + ' td').removeClass('in_active');
                                            $(this).addClass('in_active');

                                            // 모드에 따른 입, 퇴실일 자동 선택
                                            if (mode == 'in') {
                                                $('#sdate').val(sdate + ' (' + getTodayLabel(sdate) + ')');
                                                var edate = date_add(sdate, 1);
                                                var edate_arr = edate.split("-");
                                                $("#item_disp_datecal_out").load("ajax.date_roomcal.html?hseq=&ridx=&yy=" + edate_arr[0] + "&mm=" + edate_arr[1] + "&mode=out&select=in_sel&sdate=" + sdate);

                                            }
                                            if (mode == 'out') {
                                                $('#edate').val(sdate + ' (' + getTodayLabel(sdate) + ')');

                                                // 숙박일수 구하기
                                                var strDate1 = $('#sdate').val();
                                                var strDate2 = $('#edate').val();
                                                strDate1 = strDate1.substring(0, 10);
                                                strDate2 = strDate2.substring(0, 10);

                                                var arr1 = strDate1.split('-');
                                                var arr2 = strDate2.split('-');
                                                var dat1 = new Date(arr1[0], arr1[1] - 1, arr1[2]);
                                                var dat2 = new Date(arr2[0], arr2[1] - 1, arr2[2]);

                                                var diff = dat2 - dat1;
                                                var currDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨

                                                $('#room_day').val((parseInt(diff / currDay)));
                                            }
                                        }
                                    });

                                    // 달 클릭
                                    //$('#item_disp_datecal_in .cal_next').click(function(){
                                    //$("#item_disp_datecal_out").load("ajax.date_roomcal.html?yy=2022&mm=12&mode=out");
                                    //});
                                    //$('#item_disp_datecal_in .cal_prev').click(function(){
                                    //$("#item_disp_datecal_out").load("ajax.date_roomcal.html?yy=2022&mm=10&mode=out");
                                    //});	
                                });

                                // 퇴실일 계산 함수
                                function date_add(sDate, nDays) {
                                    var yy = parseInt(sDate.substr(0, 4), 10);
                                    var mm = parseInt(sDate.substr(5, 2), 10);
                                    var dd = parseInt(sDate.substr(8), 10);

                                    d = new Date(yy, mm - 1, dd + nDays);

                                    yy = d.getFullYear();
                                    mm = d.getMonth() + 1; mm = (mm < 10) ? '0' + mm : mm;
                                    dd = d.getDate(); dd = (dd < 10) ? '0' + dd : dd;

                                    return '' + yy + '-' + mm + '-' + dd;
                                }

                                // 요일 구하기
                                function getTodayLabel(sdate) {
                                    var week = new Array('일', '월', '화', '수', '목', '금', '토');
                                    var day = new Date(sdate).getDay();
                                    var dayLabel = week[day];

                                    return dayLabel;
                                }

                            </script>
                        </div>
                    </div>
                    <div class="bsh-checking out">
                        <strong class="bsh-tit">체크아웃</strong>
                        <div id="item_disp_datecal_out" class="pa20">
                            <ul class="year_wrap">
                                <li class="cal_pre"><img src="/images/step_작은화살표.png" alt="이전 달"
                                        onclick="ajax_loader('ajax.date_roomcal.html?yy=2022&amp;mm=10&amp;sdate=2022-11-06&amp;edate=&amp;format=&amp;hseq=&amp;ridx=&amp;mode=out&amp;cal=on','item_disp_datecal_out')"
                                        class="cp" style="transform: rotate(180deg)"></li>
                                <li class="cal_year">2022. <span>11</span></li>
                                <li class="cal_next"><img src="/images/step_작은화살표.png" alt="다음 달"
                                        onclick="ajax_loader('ajax.date_roomcal.html?yy=2022&amp;mm=12&amp;sdate=2022-11-06&amp;edate=&amp;format=&amp;hseq=&amp;ridx=&amp;mode=out&amp;cal=on','item_disp_datecal_out')"
                                        class="cp"></li>
                            </ul>
                            <!--<ul class="calendar_ico h_state">
                        <li><span class="ok"></span><span class="txt">즉시예약</span></li>
                        <li><span class="able"></span><span class="txt">일반예약</span></li>
                        <li><span class="close"></span><span class="txt">예약마감</span></li>
                    </ul>-->
                            <table border="0" cellspacing="0" cellpadding="0" class="p_calendar table_cal item_calendar"
                                id="item_calendar_out">
                                <thead>
                                    <tr>
                                        <th class="weekend">일</th>
                                        <th>월</th>
                                        <th>화</th>
                                        <th>수</th>
                                        <th>목</th>
                                        <th>금</th>
                                        <th class="weekend sat">토</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr height="40px">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td align="center"><strong style="color:#464646"><em class=""></em>1</strong>
                                        </td>
                                        <td align="center"><strong style="color:#464646"><em class=""></em>2</strong>
                                        </td>
                                        <td align="center"><strong style="color:#464646"><em class=""></em>3</strong>
                                        </td>
                                        <td align="center"><strong style="color:#464646"><em class=""></em>4</strong>
                                        </td>
                                        <td align="center"><strong style="color:"><em class=""></em>5</strong></td>
                                    </tr>
                                    <tr height="40px">
                                        <td align="center" id="dtdwe_2022-11-06" room_date="2022-11-06"
                                            class="cp in_active"><strong style="color:#e22842"><em
                                                    class=""></em>6</strong></td>
                                        <td align="center" id="dtdwe_2022-11-07" room_date="2022-11-07" class="cp">
                                            <strong style="color:#464646"><em class=""></em>7</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-08" room_date="2022-11-08" class="cp">
                                            <strong style="color:#464646"><em class=""></em>8</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-09" room_date="2022-11-09" class="cp">
                                            <strong style="color:#464646"><em class=""></em>9</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-10" room_date="2022-11-10" class="cp">
                                            <strong style="color:#464646"><em class=""></em>10</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-11" room_date="2022-11-11" class="cp">
                                            <strong style="color:#464646"><em class=""></em>11</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-12" room_date="2022-11-12" class="cp">
                                            <strong style="color:#333"><em class=""></em>12</strong>
                                        </td>
                                    </tr>
                                    <tr height="40px">
                                        <td align="center" id="dtdwe_2022-11-13" room_date="2022-11-13" class="cp">
                                            <strong style="color:#e22842"><em class=""></em>13</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-14" room_date="2022-11-14" class="cp">
                                            <strong style="color:#464646"><em class=""></em>14</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-15" room_date="2022-11-15" class="cp">
                                            <strong style="color:#464646"><em class=""></em>15</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-16" room_date="2022-11-16" class="cp">
                                            <strong style="color:#464646"><em class=""></em>16</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-17" room_date="2022-11-17" class="cp">
                                            <strong style="color:#464646"><em class=""></em>17</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-18" room_date="2022-11-18" class="cp">
                                            <strong style="color:#464646"><em class=""></em>18</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-19" room_date="2022-11-19" class="cp">
                                            <strong style="color:#333"><em class=""></em>19</strong>
                                        </td>
                                    </tr>
                                    <tr height="40px">
                                        <td align="center" id="dtdwe_2022-11-20" room_date="2022-11-20" class="cp">
                                            <strong style="color:#e22842"><em class=""></em>20</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-21" room_date="2022-11-21" class="cp">
                                            <strong style="color:#464646"><em class=""></em>21</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-22" room_date="2022-11-22" class="cp">
                                            <strong style="color:#464646"><em class=""></em>22</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-23" room_date="2022-11-23" class="cp">
                                            <strong style="color:#464646"><em class=""></em>23</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-24" room_date="2022-11-24" class="cp">
                                            <strong style="color:#464646"><em class=""></em>24</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-25" room_date="2022-11-25" class="cp">
                                            <strong style="color:#464646"><em class=""></em>25</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-26" room_date="2022-11-26" class="cp">
                                            <strong style="color:#333"><em class=""></em>26</strong>
                                        </td>
                                    </tr>
                                    <tr height="40px">
                                        <td align="center" id="dtdwe_2022-11-27" room_date="2022-11-27" class="cp">
                                            <strong style="color:#e22842"><em class=""></em>27</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-28" room_date="2022-11-28" class="cp">
                                            <strong style="color:#464646"><em class=""></em>28</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-29" room_date="2022-11-29" class="cp">
                                            <strong style="color:#464646"><em class=""></em>29</strong>
                                        </td>
                                        <td align="center" id="dtdwe_2022-11-30" room_date="2022-11-30" class="cp">
                                            <strong style="color:#464646"><em class=""></em>30</strong>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- /달력 -->

                            <script type="text/javascript">
                                $(function () {
                                    // 로딩바 닫기
                                    objCenter("ajax_loading_bar", "off");

                                    var sdate = $("#sdate").val().substring(0, 10);
                                    var select = "";
                                    var mode = "out";
                                    var room_day = parseInt($("#room_day").val());
                                    var cal = "";
                                    if (cal) $("#item_disp_datecal_out").load("ajax.date_roomcal.html?yy=2022&mm=11&mode=out");

                                    // 초기상태
                                    if (select == 'in_sel') {
                                        $('#item_disp_datecal_out td#dtdwe_' + date_add(sdate, 1)).addClass('in_active');

                                        // 일정 박스에 추가
                                        $('#edate').val(date_add(sdate, 1) + ' (' + getTodayLabel(date_add(sdate, 1)) + ')');
                                        $('#room_day').val(1);
                                    }
                                    else {
                                        $('#item_disp_datecal_in td#dtdwe_' + sdate).addClass('in_active');
                                        $('#item_disp_datecal_out td#dtdwe_' + date_add(sdate, room_day)).addClass('in_active');

                                        // 일정 박스에 추가
                                        $('#sdate').val(sdate + ' (' + getTodayLabel(sdate) + ')');
                                        $('#edate').val(date_add(sdate, room_day) + ' (' + getTodayLabel(date_add(sdate, room_day)) + ')');
                                        $('#room_day').val(1);
                                    }

                                    // 달력 클릭
                                    $("#item_calendar_out tbody > tr > td").click(function () {
                                        var mode = 'out';
                                        if ($(this).attr('room_date')) {
                                            var id_val = $(this).parent().parent().parent().parent().attr('id');
                                            var sdate = $(this).attr('room_date');
                                            $('#' + id_val + ' td').removeClass('in_active');
                                            $(this).addClass('in_active');

                                            // 모드에 따른 입, 퇴실일 자동 선택
                                            if (mode == 'in') {
                                                $('#sdate').val(sdate + ' (' + getTodayLabel(sdate) + ')');
                                                var edate = date_add(sdate, 1);
                                                var edate_arr = edate.split("-");
                                                $("#item_disp_datecal_out").load("ajax.date_roomcal.html?hseq=&ridx=&yy=" + edate_arr[0] + "&mm=" + edate_arr[1] + "&mode=out&select=in_sel&sdate=" + sdate);

                                            }
                                            if (mode == 'out') {
                                                $('#edate').val(sdate + ' (' + getTodayLabel(sdate) + ')');

                                                // 숙박일수 구하기
                                                var strDate1 = $('#sdate').val();
                                                var strDate2 = $('#edate').val();
                                                strDate1 = strDate1.substring(0, 10);
                                                strDate2 = strDate2.substring(0, 10);

                                                var arr1 = strDate1.split('-');
                                                var arr2 = strDate2.split('-');
                                                var dat1 = new Date(arr1[0], arr1[1] - 1, arr1[2]);
                                                var dat2 = new Date(arr2[0], arr2[1] - 1, arr2[2]);

                                                var diff = dat2 - dat1;
                                                var currDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨

                                                $('#room_day').val((parseInt(diff / currDay)));
                                            }
                                        }
                                    });

                                    // 달 클릭
                                    //$('#item_disp_datecal_in .cal_next').click(function(){
                                    //$("#item_disp_datecal_out").load("ajax.date_roomcal.html?yy=2022&mm=12&mode=out");
                                    //});
                                    //$('#item_disp_datecal_in .cal_prev').click(function(){
                                    //$("#item_disp_datecal_out").load("ajax.date_roomcal.html?yy=2022&mm=10&mode=out");
                                    //});	
                                });

                                // 퇴실일 계산 함수
                                function date_add(sDate, nDays) {
                                    var yy = parseInt(sDate.substr(0, 4), 10);
                                    var mm = parseInt(sDate.substr(5, 2), 10);
                                    var dd = parseInt(sDate.substr(8), 10);

                                    d = new Date(yy, mm - 1, dd + nDays);

                                    yy = d.getFullYear();
                                    mm = d.getMonth() + 1; mm = (mm < 10) ? '0' + mm : mm;
                                    dd = d.getDate(); dd = (dd < 10) ? '0' + dd : dd;

                                    return '' + yy + '-' + mm + '-' + dd;
                                }

                                // 요일 구하기
                                function getTodayLabel(sdate) {
                                    var week = new Array('일', '월', '화', '수', '목', '금', '토');
                                    var day = new Date(sdate).getDay();
                                    var dayLabel = week[day];

                                    return dayLabel;
                                }

                            </script>
                        </div>
                        <ul class="mention">
                            <!--	<li class="m1">선택가능날짜</li>-->
                            <li class="m2">선택날짜</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="RightBar">
                <div id="_tip_box_item" style="left: 147px; top: 163px; display: none;">
                    <div class="pop_age">
                        <ul class="box">
                            <li><span class="a_age">48개월 이상~만12세 이하</span> <span class="a_date">(인원 추가 요금 별도 발생)</span>
                            </li>
                        </ul><span class="arrow"></span>
                    </div>
                </div>
                <ul class="summary">
                    <li>
                        <div class="bsh-tit">일정</div>
                        <div class="bsh-cont">
                            <form name="frm" method="post" action="reservation2.html">
                                <input type="hidden" name="mseq" value="">
                                <table class="normal right_box" summary="체크인, 체크아웃, 숙박일수, 객실수, 인원 선택">
                                    <caption>일정 선택</caption>
                                    <colgroup>
                                        <col width="24%">
                                        <col width="33%">
                                        <col width="43%">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th scope="row"><label for="sdate">체크인</label></th>
                                            <td colspan="2">
                                                <input style="text-align:right;" type="text" name="sdate" id="sdate"
                                                    value="2022-11-05" readonly="">
                                                <!--<input type="text" name="sdate" id="sdate" value="2022-11-06" readonly/>-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="edate">체크아웃</label></th>
                                            <td colspan="2">
                                                <input style="text-align:right;" type="text" name="edate" id="edate"
                                                    value="2022-11-06" readonly="">
                                                <!--<input type="text" name="edate" id="edate" value="2022-11-07" readonly/>-->
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="room_day">박수</label></th>
                                            <td colspan="2"><input type="text" name="room_day" id="room_day" value="1"
                                                    class="w03" style="width: 19px !important" readonly=""> 박</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="room_cnt">객실수</label></th>
                                            <td colspan="2">
                                                <select name="room_cnt" id="room_cnt" class="w06">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><label for="room_adult_num">인원수</label></th>
                                            <td style="padding-right: 0">
                                                어른
                                                <select name="room_adult_num" id="room_adult_num" class="w06">
                                                    <option value="0">0</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                </select>
                                            </td>
                                            <td style="padding-right: 0" class="bsh-zzz">
                                                어린이
                                                <select name="room_child_num" id="room_child_num" class="w06"
                                                    onchange="add_age()">
                                                    <option value="0">0</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                </select>
                                                <p class="age_info ageguide_tip"><a href="javascript:;"><img
                                                            src="/images/i이미지.gif" alt="상세정보보기"
                                                            style="margin-left: 5px;"></a></p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!---- 어린이 나이 추가 ---->
                                <div id="child_age"></div>
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </div>


        <!--  안내 문구  -->

        <div class="bsh-sub-section">
            <div class="info_txt">
                <p
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:0in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <strong><span class="\&quot;tit_font_size\&quot;">호텔 이용안내</span></strong></p>

                <p
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:0in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <br>
                    <span style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">·
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">성인 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">2</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">인 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">1</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">실 기준이며</span></span></span></span> <span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">영유아 포함 최대 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">3</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">인까지 투숙
                                    가능합니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.<br>
                                    &nbsp; (</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">패밀리 스위트는 어른
                                </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">3</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">인 또는 어른 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">2</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">인</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">,
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">미성년자 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">2</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">인 포함 총 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">4</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">인까지 투숙 가능</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">)</span></span></span></span>
                </p>

                <p
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:0in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <span style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">·
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">투숙 기준 인원을 초과할 경우 별도의
                                </span></span></span></span><span style="\&quot;language:ko;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">요금이 </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">부과됩니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">. </span></span></span></span>
                </p>

                <div
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:.31in;text-indent:-.31in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <span style="\&quot;font-size:12.0pt;\&quot;">-</span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">48</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">개월부터 </span></span></span></span><span
                        style="\&quot;language:ko;\&quot;"><span style="\&quot;color:#333333;\&quot;"><span
                                style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">적용되며</span></span></span></span> <span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">1</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">박당 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">24,200</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">원입니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.
                                    (</span></span></span></span><span style="\&quot;language:ko;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">사전 </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">인원 추가 시 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">22,000</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">원</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">)</span></span></span></span>
                </div>

                <div
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:.31in;text-indent:-.31in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <span style="\&quot;font-size:12.0pt;\&quot;">-</span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">엑스트라베드</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">,
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">조식 등의 </span></span></span></span><span
                        style="\&quot;language:ko;\&quot;"><span style="\&quot;color:#333333;\&quot;"><span
                                style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">서비스는 인원 추가비에 포함되지
                                    않습니다</span></span></span></span><span style="\&quot;language:en-US;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.</span></span></span></span>
                </div>

                <p
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:0in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <span style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">·
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">체크인은 오후 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">2</span></span></span></span><span
                        style="\&quot;language:ko;\&quot;"><span style="\&quot;color:#333333;\&quot;"><span
                                style="\&quot;font-family:맑은" 고딕;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">시
                                </span></span></span></span><span style="\&quot;language:en-US;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">/</span></span></span></span>
                    <span style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">체크아웃은
                                    오전&nbsp;</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">11</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">시까지 입니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">체크아웃 연장 시 시간에 따른 추가 요금이
                                    발생됩니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.</span></span></span></span></p>

                <p
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:0in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <span style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">·
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">전 객실은 금연 객실로
                                    운영됩니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">실내 흡연 시 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">3</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">박에 해당하는 객실정비 요금이
                                    부과됩니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.<br>
                                    · </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">예약 취소 및 변경은
                                    업무시간</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">(09:00~18:00)
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">내에만 가능하며</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">,
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">예약 변경은 취소와 동일하게
                                    간주됩니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.<br>
                                    · </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">인피니티 풀은 사계절 온수풀로 운영되며 투숙객
                                    전용입니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.</span></span></span></span></p>

                <p
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:0in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <span style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">·
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">풀 문 나이트 인 뮤직은&nbsp;유료 입장권 결제 고객에 한하여 이용
                                    가능합니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.</span></span></span></span></p>

                <p
                    style="\&quot;language:ko;margin-top:0pt;margin-bottom:0pt;margin-left:0in;text-align:left;direction:ltr;unicode-bidi:embed;word-break:break-hangul;punctuation-wrap:hanging;\&quot;">
                    <span style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">기타 궁금하신 사항은&nbsp; 이메일
                                </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">info@hiddencliff.kr,
                                </span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">전화 </span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">02 2277
                                    9999</span></span></span></span><span
                        style="\&quot;language:ko;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:맑은" 고딕;\"=""><span
                                    style="\&quot;font-size:12.0pt;\&quot;">로 문의 바랍니다</span></span></span></span><span
                        style="\&quot;language:en-US;font-weight:normal;font-style:normal;\&quot;"><span
                            style="\&quot;color:#333333;\&quot;"><span style="\&quot;font-family:noto" sans=""
                                kr;\"=""><span style="\&quot;font-size:12.0pt;\&quot;">.</span></span></span></span></p>
            </div>
            <div class="btnCenterGroup">
                <a href="javascript:;" id="btn_next" class="btn gray">계속</a>
                <a href="../main/main.html" class="btn white">취소</a>
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