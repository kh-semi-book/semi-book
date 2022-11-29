<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL(EL형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>[회원 가입] Page</title>

      
   	<link rel="stylesheet" href="/resources/css/common/main.css">
   	<link rel="stylesheet" href="/resources/css/member/signUp2.css">

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
                        
                        <!-- 회원가입 프로세스 -->
                      <section id="kjh-signUp-process">
                        <div> STEP 01 <br>
                              약관동의   
                        </div>
                        <div> STEP 02 <br>
                              정보입력
                        </div>
                        <div> STEP 03 <br>
                              가입 완료
                        </div>
                      </section>
                          <br>
                          <%-- <div class="kjh-step-blank">

                          </div> --%>

                        <h2 class="kjh-h2">정보입력</h2>
                        <h4 class="kjh-h4">원활한 홈페이지 이용을 위하여 회원 정보를 정확하게 입력해주시기 바랍니다.</h4>
                        
                        <h4>기본항목
                          <span class="kjh-txt"><strong class="star">*</strong>표시는 필수항목입니다.</span>
                        </h4>
                        <form name="joinform" id ="joinform" method="post" action="/member/signUp">
                          <div class="form1">
                            <table class="kjh-form1-table">
                              <tr>
                                <label for="m-name">
                                  <th>성명<span class="star">*</span>
                                </label>
                                </th>
                                
                                <td class="kjh-input"colspan="3">
                                  <input type="text" size="20" name="memberName" id="memberName" >
                                </td>
                              </tr>

                              <tr>
                                <label for="m-id">
                                   <th>아이디<span class="star">*</span>
                                </label>
                                </th>
                                
                                <td class="kjh-input"colspan="3">
                                  <input type="text" size="20" name="memberId" id="memberId" >
                                  <input type="button" class="btn" value="중복확인">
                                  <span class="kjh-subtxt">(영소문자, 숫자로 6~20자까지 가능합니다.)</span>

                                </td>
                              </tr>
                              
                              <tr>
                                <th>비밀번호<span class="star">*</span></th>
                                <td class="kjh-input">
                                  <input type="password" size="20" name="memberPw" id="memberPw" >
                                  <span class="kjh-subtxt">(특수문자를 포함해 8~20자로 입력해 주세요.)</span>
                                  
                                </td>
                                 <th>비밀번호 확인<span class="star">*</span></th>
                                <td class="kjh-input">
                                  <input type="password" size="20" name="memberPwConfirm" id="memberPwConfirm" >
                                  <span class="kjh-subtxt">(다시 한 번 비밀번호를 입력해 주세요.)</span>
                                  
                                </td>
                              </tr>
                              <tr>
                                <th>휴대폰<span class="star">*</span></th>
                                <td class="kjh-input" colspan="3">
                                  <input type="text" size="1" name="memberPhone"> -
                                  <input type="text" size="1" name="memberPhone"> -
                                  <input type="text" size="1" name="memberPhone">
                                </td>
                          
                              </tr>
                              <tr>
                                 <th>이메일<span class="star">*</span></th>
                                <td class="kjh-input" colspan="3">
                                  <input type="text" size="20" name="memberEmail" id="memberEmail">@
                                  <input type="text" size="13"name="memberEmail" id="">
                                  <select class="kjh-address email" name="memberEmail" id="">
                                    <option value="naver.com">naver.com</option>
                                    <option value="gmail.com">gmail.com</option>
                                    <option value="nate.com">nate.com</option>
                                    <option value="hotmail.com">hotmail.com</option>
                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                    <option value="freechal.com">freechal.com</option>
                                    <option value="1">직접 입력</option>
                                  </select>
  							          	<span class="kjh-subtxt">(다음/한메일은 수신이 안될 수 있습니다.)</span>
                                  

                                </td>
                              </tr>
                              <tr>
                                <th>성별<span class="star">*</span></th>
                                <td class="kjh-input"colspan="3">
                                  <select class="kjh-select"name="memberGender" id="memberGender">
                                    <option value="">성별</option>
                                    <option value="F">여</option>
                                    <option value="M">남</option>
                                  </select>
                                </td>
                               
                              </tr>
                              <tr>
                               <th>생년월일<span class="star">*</span></th>
                                <td colspan="3">
                                  <select class="kjh-select" name="memberBirth"id="m-birth1"class="date">
                                    <option value=""></option>
                                    <option value="1934">1934</option>
                                    <option value="1935">1935</option>
                                    <option value="1936">1936</option>
                                    <option value="1937">1937</option>
                                    <option value="1938">1938</option>
                                    <option value="1939">1939</option>
                                    <option value="1940">1940</option>
                                    <option value="1941">1941</option>
                                    <option value="1942">1942</option>
                                    <option value="1943">1943</option>
                                    <option value="1944">1944</option>
                                    <option value="1945">1945</option>
                                    <option value="1946">1946</option>
                                    <option value="1947">1947</option>
                                    <option value="1948">1948</option>
                                    <option value="1949">1949</option>
                                    <option value="1950">1950</option>
                                    <option value="1951">1951</option>
                                    <option value="1952">1952</option>
                                    <option value="1953">1953</option>
                                    <option value="1954">1954</option>
                                    <option value="1955">1955</option>
                                    <option value="1956">1956</option>
                                    <option value="1957">1957</option>
                                    <option value="1958">1958</option>
                                    <option value="1959">1959</option>
                                    <option value="1960">1960</option>
                                    <option value="1961">1961</option>
                                    <option value="1962">1962</option>
                                    <option value="1963">1963</option>
                                    <option value="1964">1964</option>
                                    <option value="1965">1965</option>
                                    <option value="1966">1966</option>
                                    <option value="1967">1967</option>
                                    <option value="1968">1968</option>
                                    <option value="1969">1969</option>
                                    <option value="1970">1970</option>
                                    <option value="1971">1971</option>
                                    <option value="1972">1972</option>
                                    <option value="1973">1973</option>
                                    <option value="1974">1974</option>
                                    <option value="1975">1975</option>
                                    <option value="1976">1976</option>
                                    <option value="1977">1977</option>
                                    <option value="1978">1978</option>
                                    <option value="1979">1979</option>
                                    <option value="1980">1980</option>
                                    <option value="1981">1981</option>
                                    <option value="1982">1982</option>
                                    <option value="1983">1983</option>
                                    <option value="1984">1984</option>
                                    <option value="1985">1985</option>
                                    <option value="1986">1986</option>
                                    <option value="1987">1987</option>
                                    <option value="1988">1988</option>
                                    <option value="1989">1989</option>
                                    <option value="1990">1990</option>
                                    <option value="1991">1991</option>
                                    <option value="1992">1992</option>
                                    <option value="1993">1993</option>
                                    <option value="1994">1994</option>
                                    <option value="1995">1995</option>
                                    <option value="1996">1996</option>
                                    <option value="1997">1997</option>
                                    <option value="1998">1998</option>
                                    <option value="1999">1999</option>
                                    <option value="2000">2000</option>
                                    <option value="2001">2001</option>
                                    <option value="2002">2002</option>
                                    <option value="2003">2003</option>
                                    <option value="2004">2004</option>
                                    </select>년
                                  <select class="kjh-select"name="memberBirth" id="m-birth2"class="date">
                                    <option value=""></option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                  </select>월
                                 
                                  <select class="kjh-select" name="memberBirth" id="m-birth4" class="date">
                                    <option value=""></option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                  </select>일 
                                </td>
                               
                              </tr>
                               <tr>
                                <th>이메일<br> 수신 동의<span class="star">*</span></th>
                                <td>
                                  <input type="radio" name="emailFlag" id="m_email_yn1"
                                  value="Y">
                                  <label for="m_email_yn1">수신</label>

                                  <input type="radio" name="emailFlag" id="m_email_yn2"
                                  value="N">
                                  <label for="m_email_yn2">수신거부</label>

                                </td>
                                <th>SMS<br> 수신 동의<span class="star">*</span></th>
                                <td>
                                  <input type="radio" name="smsFlag" id="m_sms_yn1"
                                  value="Y">
                                  <label for="m_sms_yn1">수신</label>

                                  <input type="radio" name="smsFlag" id="m_sms_yn2"
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
                                  <input type="radio" name="marriageFlag" id="marriage_yn1"
                                  value="N">
                                  <label for="marriage_yn1">미혼</label>

                                  <input type="radio" name="marriageFlag" id="marriage_yn2"
                                  value="Y">
                                  <label for="marriage_yn2">기혼</label>
                                  <span class="kjh-married">
                                    (결혼기념일 : 
                                    <input type="text" name="memberWedding" size="4" maxlength="4" >년
                                  
                                    <input type="text" name="memberWedding" size="4" maxlength="4" >월
                                  
                                    <input type="text" name="memberWedding" size="4" maxlength="4" >일
                                  </span>
                              </tr>                              
                              <tr>
                                <th>유선전화</th>
                                <td class="kjh-input" colspan="3">
                                  <input type="text" size="1" name="memberTel" id="m_col"> -
                                  <input type="text" size="1" name="memberTel" id="m_col"> -
                                  <input type="text" size="1" name="memberTel" id="m_col"> 
                                
                                </td>
                              </tr>                              
                              <tr>
                                <th>주소</th>
                                <td class="kjh-input" colspan="3">
                                  <input type="text" name = "memberAddress"class="kjh-address a"size="5px" readonly>
                                  <input type="button"  class="btn2"  value="우편번호검색"><br>
                                  <input type="text" name = "memberAddress" class="kjh-address" size="50px"readonly> <br>
                                  <input type="text" name = "memberAddress"  class="kjh-address"size="50px">

                                </td>
                              </tr>                              
                            </table>
                          </div>

						               <div class="kjh-btn">
                            <button class="btn-a">다음단계</button>
                            <button class="btn-b">취소</button>   <!-- 메인화면으로  -->
                          </div>
                      </form>
                        
                      </div> <!-- main-container -->
            
                  </div>
            </div>
          </div>
            </div>  
            <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
            <script src="/resources/js/member/signUp2.js"></script>
    </body>

</html>