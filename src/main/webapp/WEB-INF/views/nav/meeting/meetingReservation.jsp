<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약문의 - Hidden Cliff Hotel and Nature</title>

    <link rel="stylesheet" href="/resources/css/nav/meeting/meetingReservation.css">
	<link rel="stylesheet" href="/resources/css/common/main.css">

    <script src="https://kit.fontawesome.com/f7459b8054.js" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- **************** 위는 헤더 *************** -->

    <%-- 상단 배경 이미지 --%>
    <div id="head-img"></div>
    
    <div class="bsh-main">
       <div id="top-menu">
	    	<a href="#">HOME</a>><a href="#">Q&A</a>
		</div>

        <div class="bsh-main-title">
            <h1>예약문의</h1>
        </div>

        <div class="bsh-section">
            <div class="bsh-warning">※ 모든 항목은 필수 입력 사항입니다.</div>
            
            <form name="bsh-frm" id="bsh-frm" method="#" action="#">
                <table class="bsh-tb1">
                    <tr>
                        <th class="inf-name"><label for="info-name">성명</label></th>
                        <td class="inf-name2">
                            <input type="text" title="성함 입력" id="info-name"
                            name="info-name" maxlength="10" required style="width:360px;">
                        </td>
                    </tr>
                    <tr>
                        <th><label for="info-tel">휴대폰</label></th>
                        <td>
                            <input type="text" title="연락처 입력" id="info-tel"
                            style="width:80px;" name="info-tel" maxlength="4"
                            required> -
                            
                            <input type="text" title="연락처 입력" id="info-tel2"
                            style="width:80px;" name="info-tel2" maxlength="4"
                            required> -

                            <input type="text" title="연락처 입력" id="info-tel3"
                            style="width:80px;" name="info-tel3" maxlength="4"
                            required>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="info-email">이메일</label></th>
                        <td>
                            <input type="text" title="이메일 입력" id="info-email"
                            style="width:160px;" name="info-email" maxlength="25"
                            required> @

                            <input type="text" title="이메일 입력" id="info-email2"
                            style="width:160px;" name="info-email2" maxlength="25"
                            required>&nbsp;

                            <select name="email" id="">
                                <option value="">직접입력</option>
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="dreamwiz.com">dreamwiz.com</option>
                                <option value="freechal.com">freechal.com</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="info-company">업체명</label></th>
                        <td>
                            <input type="text" title="업체명 입력" id="info-company"
                            style="width:680px;" name="info-company" maxlength="50"
                            required>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="info-cnt">인원수</label></th>
                        <td>
                            <input type="text" title="인원수 입력" id="info-cnt"
                            style="width:680px;" name="info-cnt" maxlength="50"
                            required>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="info-date">행사일시</label></th>
                        <td>
                            <input type="text" title="행사일자 입력" id="info-date"
                            style="width:680px;" name="info-date" maxlength="50"
                            required>
                        </td>
                    </tr>
                    <tr>
                        <th id="lastbox"><label for="info-cntnt">내용</label></th>
                        <td>
                            <textarea title="내용 입력" id="info-cntnt"
                            style="width:680px;" name="info-cntnt" maxlength="300"
                            required cols="45" rows="30"></textarea>
                        </td>
                    </tr>
                </table>
                
                <div class="bsh-last-info">
                    <h2>개인정보 수집 및 이용에 대한 동의</h2>
                    <pre class="bsh-terms">
<strong>개인정보의 수집항목</strong>
<p>
히든 클리프 호텔 & 네이쳐는 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다.
히든 클리프 호텔 & 네이쳐의 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며, 선택항목을 입력하시지 않았다 하여 서비스 이용에 
제한은 없습니다.
</p>

<strong>1) 고객 문의(연회 및 웨딩) 시 수집하는 개인정보의 항목</strong>
<p> - 필수항목 : 성명, 이메일, 전화번호, 주소, 휴대폰, 행사종류, 인원수, 행사날짜, 행사시간, 문의사항</p>

<strong>2) 객실 예약 시 수집하는 개인정보의 항목</strong>
- 필수항목 : 예약자, 투숙자, 투숙인원, 예약타입, 호텔도착일자, 호텔출발일자, 생년월일, 이메일, 주소, 휴대폰, 카드번호, 요구사항
- 선택항목 : 팩스번호, 객실수, 추가침대 수,흡연여부

<b>①</b> 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다.
    단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 
    일정기간 보유합니다.

- 회원가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 경우 등 일정한 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여 
  동의를 구합니다. 
- 회원 가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 때<pre style="color: #666;"> 
  &nbsp;&nbsp;보존 기간 : 소송이나 분쟁의 근거 자료로 보존하는 목적으로서 10년
    기타 개별적으로 이용자의 동의를 받은 경우 : 3년</pre>- 배송정보의 경우 물품 또는 서비스가 인도되거나 제공된 때
 이벤트 등 일시적 목적을 위하여 수집한 경우 이벤트 등이 종료한 때
- 계약 또는 청약철회 등에 관한 기록 : 5년
- 대금결제 및 재화 등의 공급에 관한 기록 : 5년
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
 
<b>②</b> 귀하의 동의를 받아 보유하고 있는 거래정보 등을 귀하께서 열람을 요구하는 경우 히든 클리프 호텔 & 네이쳐는 지체 없이 그 열람,확인 할 수 있도록 조치
 &nbsp;&nbsp;&nbsp;합니다.

<strong>개인정보의 수집목적 및 이용목적</strong><br>
히든 클리프 호텔 & 네이쳐는 개인정보보호 관련 주요 법률인 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’을 준수하기 위하여 개인정보취급방침을 제정
하고 이를 준수하고 있습니다. <br>
<strong>①</strong> 수집 항목: 개인 식별 정보 (성명, 성별, 생년월일), 서비스 제공 연락 정보 (휴대폰, 이메일)
&nbsp;&nbsp;* 인터넷 서비스 이용과정에서 IP주소, 쿠키, 방문기록, 등 개인정보가 자동으로 생성되어 수집될 수 있습니다.
<strong>②</strong> 이용 목적: 본인 확인 절차에 활용, 고객 불만 처리
<strong>③</strong> 히든 클리프 호텔 & 네이쳐는 개인정보의 이용목적의 달성 및 해지 시까지 개인정보를 보유, 이용하되 개인정보의 수집 및 이용 목적이 달성된 때에는 고객
&nbsp;&nbsp;&nbsp; 의 개인정보를 지체없이 파기합니다.
                   </pre>
                    <div class="bsh-agree">
                        <label><input type="checkbox"> 개인정보 수집 및 이용에 대한 동의하기</label>
                    </div>
                </div>
                <div class="bsh-btn">
                    <input type="submit" name="sub" class="bsh-btn-gray" value="등록하기">
                    <a href="#" class="bsh-btn-white">취소</a>
                </div>
            </form>
        </div>
        

    </div>

    <!------------------------- 아래는 풋터 ------------------------->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>