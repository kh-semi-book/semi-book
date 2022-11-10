<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약하기-3</title>
    <link rel="stylesheet" href="/main/css/reservation-style.css">
</head>
<body>

    <div id="reservation4_body_area">

        <div id="top-menu">
            <a href="#">HOME</a>><a href="#">예약하기</a>
        </div>
        <div id="info-title">
            예약하기
        </div>

        <div id="reservation4_step_area">
          <div class="reservation4_step" id="step1">
            <p class="step">STEP 01</p>
            <p>일정선택</p>
          </div>
          <div class="reservation4_step" id="step2">
              <p class="step">STEP 02</p>
              <p>객실&패키지 선택</p>
          </div>
          <div class="reservation4_step" id="step3">
              <p class="step">STEP 03</p>
              <p>옵션 선택</p>
          </div>
          <div class="reservation4_step" id="step4">
              <p class="step">STEP 04</p>
              <p>고객 정보 입력</p>
          </div>
          <div class="reservation4_step" id="step5">
              <p class="step">STEP 05</p>
              <p>예약 완료</p>
          </div>
        </div>

            <div id="reservation3_option_title_area">
                <span>추가 옵션</span>
                <span>패키지 구성 외 추가로 필요한 옵션을 선택해 주세요.</span>
            </div>

            <div id="reservation3_content_area">

            
            <div id="reservation3_option_area">
                

                <div class="reservation3_option_content_area">
                    <div class="reservation3_option_name">
                        <div class="option-date">날짜</div>
                        <div class="option-content">항목</div>
                        <div class="option-amount">금액</div>
                        <div class="option-count">개수</div>
                    </div>

                    <div class="reservation3_option_content">
                        <div class="option-date" style="border-bottom:1px solid #bbb">
                            2022-11-02
                        </div>

                        <div class="reservation3_option_date_content_list">
                            <div class="reservation3_option_date_content">
                                <div class="option-content">1인 인원추가(48개월 이상)*기준인원(2인)외 투숙시 선택필수</div>
                                <div class="option-amount">22,000원</div>
                                <div class="option-count">
                                    <select name="" id="">
                                        <option>0</option>
                                        <option>1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="reservation3_option_date_content">
                                <div class="option-content">1인 인원추가(48개월 이상)*기준인원(2인)외 투숙시 선택필수</div>
                                <div class="option-amount">22,000원</div>
                                <div class="option-count">
                                    <select name="" id="">
                                        <option>0</option>
                                        <option>1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="reservation3_option_date_content">
                                <div class="option-content">1인 인원추가(48개월 이상)*기준인원(2인)외 투숙시 선택필수</div>
                                <div class="option-amount">22,000원</div>
                                <div class="option-count">
                                    <select name="" id="">
                                        <option>0</option>
                                        <option>1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="reservation3_option_date_content">
                                <div class="option-content">1인 인원추가(48개월 이상)*기준인원(2인)외 투숙시 선택필수</div>
                                <div class="option-amount">22,000원</div>
                                <div class="option-count">
                                    <select name="" id="">
                                        <option>0</option>
                                        <option>1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="reservation3_option_date_content">
                                <div class="option-content">1인 인원추가(48개월 이상)*기준인원(2인)외 투숙시 선택필수</div>
                                <div class="option-amount">22,000원</div>
                                <div class="option-count">
                                    <select name="" id="">
                                        <option>0</option>
                                        <option>1</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        
                    </div> 
                </div>
               
                <button id="reservation3-btn">예약하기</button>

            </div>

            <div id="reservation3_side_area">
                    <div class="side-table">
                        <div class="side-date-title">
                            일정
                        </div>
                        
                
                        <table id="side-date-content">
                            <tr>
                                <td>체크인</td>
                                <td>2022-11-02 (수)</td>
                            </tr>
                            <tr>
                                <td>체크아웃</td>
                                <td>2022-11-03 (목)</td>
                            </tr>
                            <tr>
                                <td>박수</td>
                                <td><input type="text" readonly size="1"> 박</td>
                            </tr>
                            <tr>
                                <td>객실수</td>
                                <td><input type="text" readonly size="1">실</td>
                            </tr>
                            <tr>
                                <td>인원수</td>
                                <td>어른<input type="text" readonly size="1"> 어린이<input type="text" readonly size="1"></td>
                            </tr>
                        </table>
                
                        <div class="side-rooms-pack">
                            <div class="side-rooms-pack-title">
                                객실&패키지
                            </div>
                            <div class="side-room-name">
                                디럭스 더블 가든
                            </div>
                            <table class="side-room-select">
                                <tr>
                                    <td>2022-11-02</td>
                                    <td> <span>230,000원</span><span>(VAT별도)</span></td>
                                </tr>
                                <!-- <span>2022-11-02</span><span>230,000원(VAT별도)</span> -->
                            </table>
                            <div class="side-room-cost-total">
                                253,000원 (VAT포함)
                            </div>
                        </div>
                
                        <div class="side-option">
                            <div class="side-option-title">
                                객실&패키지
                            </div>
                            <div class="side-option-name">
                                1인 인원추가(48개월 이상)*기준인원(2인)외 투숙시 선택필수
                            </div>
                            <table class="side-room-select">
                                <tr>
                                    <td>2022-11-02</td>
                                    <td> <span>230,000원</span><span>(VAT별도)</span></td>
                                </tr>
                            </table>
                            <div class="side-option-cost">
                                0원 (VAT포함)
                            </div>
                        </div>
                
                        <div>
                            <table id="total-money">
                                <tr>
                                    <td>요금 합계</td>
                                    <td>253,000원 (VAT포함)</td>
                                </tr>
                            </table>
                        </div>


                        <div id="option-btn-area">
                            <a href="#">이전</a>
                            <a href="#">일정 재선택하기</a>
                          
                        </div>
                    </div>
                </div>
            </div> 
        </div>
    </div>

</body>
</html>