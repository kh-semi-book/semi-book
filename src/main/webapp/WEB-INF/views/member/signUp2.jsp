<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>[회원 가입] Page</title>

      
   	<link rel="stylesheet" href="/resources/css/common/main.css">
   	<link rel="stylesheet" href="/resources/css/member/signup.css">

        <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>


        <style>
            body{margin: auto;}
        </style>
    </head>

    <body>
     <!-- header -->
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
     <div class="rsc-body-area">
            <div class="reservation-content-main">
              
              <h1 class="kjh-h1">회원 가입</h1>
                  <div class="kjh-main-border">
                      <div class="kjh-main-container">
                          <div class="kjh-stepbox-border">
                            <div class="kjh-stepbox">
                              <ul>
                                <li>
                                  <span>STEP 01</span>
                                  <span>약관동의</span>
                                </li>
                                <li class="kjh-step2">
                                  <span>STEP 02</span>
                                  <span>정보입력</span>
                                </li>
                                <li>
                                  <span>STEP 03</span>
                                  <span>가입완료</span>
                                </li>
                              </ul>

                            </div> <!-- kjh-stepbox -->
                          </div>
                          <br><br><br>
                          <div class="kjh-step-blank">

                          </div>

                        <h2 class="kjh-h2">정보입력</h2>
                        <h4 class="kjh-h4">원활한 홈페이지 이용을 위하여 회원 정보를 정확하게 입력해주시기 바랍니다.</h4>
                        
                        <h4>기본항목
                          <span class="kjh-txt"><strong class="star">*</strong>표시는 필수항목입니다.</span>
                        </h4>

                          <div class="form1">
                            <table class="kjh-form1-table">
                              <tr>
                                <label for="m_name">
                                  <th>성명<span class="star">*</span>
                                </label>
                                </th>
                                
                                <td class="kjh_input"colspan="3">
                                  <input type="text" size="20" name="m_name" id="m_name" >
                                </td>
                              </tr>

                              <tr>
                                <label for="m_id">
                                  <th>아이디<span class="star">*</span>
                                </label>
                                </th>
                                
                                <td class="kjh_input"colspan="3">
                                  <input type="text" size="20" name="m_id" id="m_id" >
                                  <input type="button" class="btn" value="중복확인">

                                </td>
                              </tr>
                              
                              <tr>
                                <th>비밀번호<span class="star">*</span></th>
                                <td class="kjh_input">
                                  <input type="password" size="20" name="m_pw1" id="m_pw1" >
                                </td>
                                <th>비밀번호 확인<span class="star">*</span></th>
                                <td class="kjh_input">
                                  <input type="password" size="20" name="m_pw2" id="m_pw2" >
                                </td>
                              </tr>
                              <tr>
                                <th>휴대폰<span class="star">*</span></th>
                                <td class="kjh_input" colspan="3">
                                  <input type="text" size="1" name="m_phone" id="m_phone"> -
                                  <input type="text" size="1" name="m_phone" id="m_phone"> -
                                  <input type="text" size="1" name="m_phone" id="m_phone">
                                </td>
                          
                              </tr>
                              <tr>
                                <th>이메일<span class="star">*</span></th>
                                <td class="kjh_input" colspan="3">
                                  <input type="text" size="20" name="m_email" id="m_email">@
                                  <input type="text" size="13"name="" id="">
                                  <select class="kjh-address" name="" id="">
                                    <option value="naver.com">naver.com</option>
                                    <option value="gmail.com">gmail.com</option>
                                    <option value="nate.com">nate.com</option>
                                    <option value="hotmail.com">hotmail.com</option>
                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                    <option value="freechal.com">freechal.com</option>
                                    <option value="1">직접 입력</option>
                                  </select>
                                </td>
                              </tr>
                              <tr>
                                <th>성별<span class="star">*</span></th>
                                <td class="kjh_input"colspan="3">
                                  <select class="kjh_select"name="m_gender" id="m_gender">
                                    <option value="">성별</option>
                                    <option value="F">여</option>
                                    <option value="M">남</option>
                                  </select>
                                </td>
                               
                              </tr>
                              <tr>
                                <th>생년월일<span class="star">*</span></th>
                                <td colspan="3">
                                  <select class="kjh_select" name="m_birth1"id="m_birth1"class="date">
                                    <option value=""></option>
                                    <option value="1934">1934</option>
                                  </select>년
                                  <select class="kjh_select"name="m_birth2" id="m_birth2"class="date">
                                    <option value=""></option>
                                    <option value="1934">1934</option>
                                  </select>월
                                  <select class="kjh_select" name="m_birth3" id="m_birth3"class="date">
                                    <option value=""></option>
                                    <option value="1934">1934</option>
                                  </select>일
                                </td>
                               
                              </tr>
                              <tr>
                                <th>이메일<br> 수신 동의<span class="star">*</span></th>
                                <td>
                                  <input type="radio" name="m_email_yn" id="m_email_yn1"
                                  value="Y">
                                  <label for="m_email_yn1">수신</label>

                                  <input type="radio" name="m_email_yn" id="m_email_yn2"
                                  value="N">
                                  <label for="m_email_yn2">수신거부</label>

                                </td>
                                <th>SMS<br> 수신 동의<span class="star">*</span></th>
                                <td>
                                  <input type="radio" name="m_sms_yn" id="m_sms_yn1"
                                  value="Y">
                                  <label for="m_sms_yn1">수신</label>

                                  <input type="radio" name="m_sms_yn" id="m_sms_yn2"
                                  value="N">
                                  <label for="m_sms_yn2">수신거부</label>
                                </td>
                              </tr>
                            </table>
                          </div> 

                         
                          <h4>추가정보
                            <span>(선택항목)</span>
                          </h4>
                          <div class="form2">
                            <table class="kjh-form2-table">
                              <tr>
                                <th>결혼유무</th>
                                <td colspan="3">
                                  <input type="radio" name="marriage_yn" id="marriage_yn1"
                                  value="N">
                                  <label for="marriage_yn1">미혼</label>

                                  <input type="radio" name="marriage_yn" id="marriage_yn2"
                                  value="Y">
                                  <label for="marriage_yn1">기혼</label>
                                  <span class="kjh-married">
                                    (결혼기념일 : 
                                    <input type="text" size="4" maxlength="4" >년
                                  
                                    <input type="text" size="4" maxlength="4" >월
                                  
                                    <input type="text" size="4" maxlength="4" >일
                                  </span>
                              </tr>                              
                              <tr>
                                <th>유선전화</th>
                                <td class="kjh_input" colspan="3">
                                  <input type="text" size="1" name="m_col" id="m_col"> -
                                  <input type="text" size="1" name="m_col" id="m_col"> -
                                  <input type="text" size="1" name="m_col" id="m_col"> 
                                
                                </td>
                              </tr>                              
                              <tr>
                                <th>주소</th>
                                <td class="kjh_input" colspan="3">
                                  <input type="text" class="kjh_address"size="5px" readonly>
                                  <input type="button" class="btn2"  value="우편번호검색"><br>
                                  <input type="text" class="kjh_address" size="50px"readonly> <br>
                                  <input type="text"  class="kjh_address"size="50px">

                                </td>

                              </tr>                              
                            </table>
                          </div>

                        
                      </div> <!-- main-container -->
            
                  </div>
            </div>
          </div>
            </div>  
            <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    </body>

</html>