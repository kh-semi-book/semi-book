<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL(EL형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>[회원 수정] Page</title>

       
   	<link rel="stylesheet" href="/resources/css/common/main.css">
   	<link rel="stylesheet" href="/resources/css/member/memberEdit.css">
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
              <div class="kjh-step"> 
                <ol>
                    <li class="kjh-path1"><a href="">HOME</a></li>
                    <li class="kjh-path2"><a href="">> 마이페이지</a></li>
                    <li class="kjh-path3"><a href="">> 회원정보 수정</a></li>

                </ol>
            </div>
              <div class="kjh-title"> 
                <span><h1 class="kjh-h1">회원정보 수정</h1>
              </div>
                  <div class="kjh-main-border">
                      <div class="kjh-main-container">
                       
                          
                    
                        
                        
                        <h4 class="kjh-h4">기본항목
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

                                </td>
                              </tr>
                              
                              <tr>
                                <th>기존 비밀번호<span class="star">*</span></th>
                                <td class="kjh_input" colspan="3">
                                  <input type="password" size="20" name="m_pw1" id="m_pw1" >
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
                                <th>이메일<br> 수신 동의<span class="star">*</span></th>
                                <td>
                                  <input type="radio" name="m_email_yn" id="m_email_yn1"
                                  value="Y">
                                  <label for="m_email_yn1">수신</label>

                                  <input type="radio" name="m_email_yn" id="m_email_yn2"
                                  value="N">
                                  <label for="m_email_yn2">수신거부</label>

                                </td>
                              </tr>
                              <tr></tr>
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
                                <th>생년월일</th>
                                <td class="kjh_input"><input  type="text"></td>
                              </tr>
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
                                  <input type="button" class="kjh-btn"  value="우편번호검색"><br>
                                  <input type="text" class="kjh_address" size="50px"readonly> 
                                  <input type="text"  class="kjh_address"size="35px">

                                </td>

                              </tr>      
                              <tr>
                                <th>회원탈퇴</th>
                                <td  colspan="3">
                                  <a class="kjh-member-delete" href="" >회원탈퇴</a>
                                </td>
                              </tr>                        
                            </table>
                          </div>
                          <div class="kjh-btn-yn">
                            <a href="" class="yes">확인</a>
                            <a href="" class="no">취소</a>

                          </div>
                        
                      </div> <!-- main-container -->
            
                  </div>
            </div>
          </div>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    </body>

</html>