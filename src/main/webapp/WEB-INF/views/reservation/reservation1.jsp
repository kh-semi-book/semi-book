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

   <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/reservation/reservation1.css">
    <link rel="stylesheet" href="/resources/css/common/main.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Sans+KR&display=swap');
        

   </style>
</head>

<body>
   <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <div id="top-photo"></div>
    <div class="reservation1-main">


        <div id="top-menu">
            <a href="#">HOME</a>><a href="#">예약하기</a>
        </div>
        <div id="info-title">
            예약하기
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
                        <!--  -->
                        <div class="sec_cal">
                            <div class="cal_nav">
                              <a class="nav-btn go-prev">&#x3C;</a>
                              <div class="year-month"></div>
                              <a class="nav-btn go-next">&#x3E;</a>
                            </div>


                            <div class="cal_wrap">
                              <div class="days">
                                <div class="day">일</div>
                                <div class="day">월</div>
                                <div class="day">화</div>
                                <div class="day">수</div>
                                <div class="day">목</div>
                                <div class="day">금</div>
                                <div class="day">토</div>
                              </div>
                              <div class="dates"></div>
                            </div>
                          </div>
                    <!--  -->
                    </div>


                    <div class="bsh-checking out">
                        <strong class="bsh-tit">체크아웃</strong>
                       
                        <!--  -->
                        <div class="sec_cal">
                            <div class="cal_nav">
                              <a class="nav-btn go-prev1">&#x3C;</a>
                              <div class="year-month1"></div>
                              <a class="nav-btn go-next1">&#x3E;</a>
                            </div>

                            
                            <div class="cal_wrap">
                              <div class="days">
                                <div class="day">일</div>
                                <div class="day">월</div>
                                <div class="day">화</div>
                                <div class="day">수</div>
                                <div class="day">목</div>
                                <div class="day">금</div>
                                <div class="day">토</div>
                              </div>
                              <div class="dates1"></div>
                            </div>
                          </div>
                    <!--  -->
                    
                    </div>
                    
                    
                    
                        <ul class="mention">
                        <!--	<li class="m1">선택가능날짜</li>-->
                        <li class="m2">선택날짜</li>
                    </ul>
                </div>
            </div>
        
            <div id="reservation3_side_area">
                <div class="side-table">
                    <div class="side-date-title">
                        일정
                    </div>
                    
            
                    <table id="side-date-content">
                        <tr>
                            <td>체크인</td>
                            <td id="checkInInput"></td>
                        </tr>
                        <tr>
                            <td>체크아웃</td>
                            <td id="checkOutInput"></td>
                        </tr>
                        <tr>
                            <td>박수</td>
                            <td>
                                <input type="text" readonly size="2" value="1" id="nights">
                                박</td>
                        </tr>
                        <tr>
                            <td>객실수</td>
                            <td>
                                
                                <select name="roomCount" id="roomCount">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                    <option value="">4</option>
                                    <option value="">5</option>
                                    
                                </select>

                            </td>
                        </tr>
                        <tr id="headCount">
                            <td>인원수</td>

                            <td>
                            <div>
                                어른
                                <select name="stayAdult" id="stayAdult">
                                    <option value="">0</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                    <option value="">4</option>
                                </select> 
                            </div>
                            <div>
                                어린이
                                <select name="stayChild" id="stayChild">
                                    <option value="">0</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                                <i class="fa-solid fa-circle-info"></i>
                            </td>
                        </tr>
                    </table>
            
                    
            
                </div>
            
            

            </div>

        </div> 
        
        
        
        <!--  안내 문구  -->

     
        <div class="info_txt">
            <strong>호텔 이용안내</strong> 

            <br><br>

             · 성인 2인 1실 기준이며 영유아 포함 최대 3인까지 투숙 가능합니다.<br>
             (패밀리 스위트는 어른 3인 또는 어른 2인, 미성년자 2인 포함 총 4인까지 투숙 가능)<br>

             · 투숙 기준 인원을 초과할 경우 별도의 요금이 부과됩니다.<br>

             -48개월부터 적용되며 1박당 24,200원입니다. (사전 인원 추가 시 22,000원)<br>
             -엑스트라베드, 조식 등의 서비스는 인원 추가비에 포함되지 않습니다.<br>
             · 체크인은 오후 2시 / 체크아웃은 오전 11시까지 입니다. 체크아웃 연장 시 시간에 따른 추가 요금이 발생됩니다.<br>

             · 전 객실은 금연 객실로 운영됩니다. 실내 흡연 시 3박에 해당하는 객실정비 요금이 부과됩니다.<br>
             · 예약 취소 및 변경은 업무시간(09:00~18:00) 내에만 가능하며, 예약 변경은 취소와 동일하게 간주됩니다.<br>
             · 인피니티 풀은 사계절 온수풀로 운영되며 투숙객 전용입니다.<br>

             · 풀 문 나이트 인 뮤직은 유료 입장권 결제 고객에 한하여 이용 가능합니다.<br>

             기타 궁금하신 사항은  이메일 info@hiddencliff.kr, 전화 02 2277 9999로 문의 바랍니다.<br>
         </div>
         
         <div class="btnCenterGroup">
             <a href="/reservation/reservation2" id="btn_next" class="btn gray">계속</a>
             <a href="../main/main.html" class="btn white">취소</a>
         </div>
        
    </div>




       
       

<!------------------------- 아래는 풋터 ------------------------->
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>

 <script src="/resources/js/reservation/reservation1.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>

</html>