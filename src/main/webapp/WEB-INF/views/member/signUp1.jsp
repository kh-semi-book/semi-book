<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 문자열 관련 메서드를 제공하는 JSTL(EL형식) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

  <title>회원가입 약관 Page</title>

   	<link rel="stylesheet" href="/resources/css/member/signUp1.css">
   	<link rel="stylesheet" href="/resources/css/common/main.css">

        <style>
            body{margin: auto;}
        </style>
    </head>

    <body>
     <!-- header -->
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
     <div class="rsc-body-area">

              <div class="reservation-content-main">


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

                      <!-- 약관동의 -->
                   
                    <section> 
                        <h2 class="kjh-h2">약관동의</h2>
                        <p class="kjh-p">회원이 되시면 다양한 서비스를 더욱 편하게 이용 가능하십니다.</p>
                        
                        <div class="kjh-all-check">
                          <input type="checkbox" name="allcheck" value="allcheck">
                          <label for="allcheck">홈페이지 가입 약관 전체 동의</label>
                        </div>
                      </section>

                      <!-- 이용약관 -->
                      <section>
                        
                      <div class="kjh-box">
                        <h4>이용약관</h4>
                        <div class="kjh-content-border">
                          <div class="kjh-content">

                              <dl>
                                <dt>제 1장. 총칙</dt>
                                <dt>제 1 조 (목적)</dt>
                                  <dd>
                                    이 약관은 히든 클리프 호텔 & 네이쳐(이하 "호텔"이라 합니다)가 제공하는 히든 클리프 호텔 & 네이쳐 온라인 서비스(이하 "서비스"라 한다)의 이용 조건 및 절차에 관한 기본적인 사항을 규정함을 목적으로 합니다.
                                  </dd>
                              </dl>
                              <dl>
                                <dt>제 2 조 (약관의 효력 및 변경)</dt>
                                <dd>① 이 약관은 서비스 메뉴 및 호텔에 게시하여 공시함으로써 효력을 발생합니다.</dd>
                                <dd>② 호텔은 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.</dd>
                                <dd>③ 회원제서비스 이용고객은 변경된 약관 사항에 동의하지 않으면 서비스 이용을 중단하고 이용계약을 해지할 수 있습니다. 약관의 효력발생일 이후의 계속적인 서비스 이용은 약관의 변경사항에 동의한 것으로 간주됩니다.
                                </dd>
                              </dl>
                              <dl>
                                <dt>제 3 조 (약관 이외의 준칙)</dt>
                                <dd>이 약관에 언급되지 않은 사항이 전기통신기본법, 전기통신사업법, 기타 관련법령에 규정되어 있는 경우 그 규정에 따라 적용할 수 있습니다.</dd>
                              </dl>
                              <dl>
                                <dt>제 4 조 (용어의 정의)</dt>
                                <dd>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</dd>
                                <dd>① 회원: 서비스를 제공받기 위하여 호텔과 이용계약을 체결하거나 이용자 아이디(ID)를 부여 받은 자를 말합니다.</dd>
                                <dd> ② 아이디(ID): 회원의 식별과 서비스를 이용을 위하여 회원이 정하고 호텔이 승인하는 문자와 숫자의 조합을 말합니다.</dd>
                                <dd> ③ 비밀번호: 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.</dd>
                                <dd> ④ 해지: 호텔 또는 회원이 서비스를 개통 후 이용계약을 종료 시키는 의사표시를 말합니다.</dd>
                              </dl>
                              
                              <dl>
                                <dt>제 2 장 서비스 이용계약</dt>
                                <dd>제 5 조 (이용계약의 성립)</dd>
                                <dd>이용계약은 서비스 이용희망자의 이용약관 신청에 대하여 호텔이 승낙함으로써 성립합니다.</dd>
                              </dl>

                              <dl>
                                <dt>제 6 조 (이용신청)</dt>
                                <dd>① 본 서비스를 이용하기 위해서는 호텔 소정의 가입신청 양식에서 요구하는 모든 이용자 정보를 기록 하여 신청합니다.</dd>
                                <dd>② 본 서비스는 만 19세 이상의 성인만이 가입이 가능합니다.</dd>
                                <dd>③ 가입신청 양식에 기재하는 모든 이용자 정보는 모두 실제 데이터인 것으로 간주됩니다. 
                                  실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며 서비스의 제한을 받을 수 있습니다.</dd>
                              </dl>

                              <dl>
                                <dt>제 7 조 (이용신청의 승낙)</dt>
                                <dd>① 호텔은 제6조에 따른 이용 신청 고객에 대하여 제2호, 제3호의 경우를 예외로 하여 서비스 이용신청을 승낙합니다.</dd>
                                <dd>② 호텔은 다음에 해당하는 경우에 그 신청에 대한 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.</dd>
                                <dd>가. 서비스 관련 설비의 용량이 부족한 경우</dd>
                                <dd>나. 기술상 장애사유가 있는 경우</dd>
                                <dd>다. 기타 호텔이 필요하다고 인정되는 경우</dd>
                                <dd>③ 호텔은 다음에 해당하는 경우에는 동 이용신청을 승낙하지 아니 할 수 있습니다.</dd>
                                <dd>가. 다른 사람의 명의를 사용하여 신청한 경우</dd>
                                <dd>나. 이용신청 시 이용자정보를 허위로 기재하여 신청한 경우</dd>
                                <dd>다. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우</dd>
                                <dd>라. 기타 호텔 소정의 이용신청요건을 충족하지 못하는 경우</dd>
                              </dl>
            
                              <dl>
                                <dt> 제 8 조 (이용자정보의 변경)</dt>
                                <dd>회원은 이용신청 시 기재한 이용자정보가 변경되었을 경우에는, 온라인으로 수정을 하여야 하며 미 변경으로 인하여 발생되는 문제의 책임은 이용자에게 있습니다.</dd>
                              </dl>
                              
                              <dl>
                                <dt>제 3 장 계약 당사자의 의무</dt>
                                <dt>제 9 조 (호텔의 의무)</dt>
                              
                                <dd>① 호텔은 서비스 제공과 관련하여 취득한 회원의 개인정보를 본인의 사전 승낙 없이 타인에게 공개 또는 배포할 수 없습니다. 단, 다음 각 호의 1에 해당하는 경우는 예외입니다. </dd>
                                <dd>가. 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우 </dd>
                                <dd>나. 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우 </dd>
                                <dd>다. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우 </dd>
                                <dd>② 1항의 범위 내에서, 호텔은 업무와 관련하여 회원 전체 또는 일부의 개인 정보에 관한 통계 자료를 작성하여 이를 사용할 수 있고, 서비스를 통하여 회원의 컴퓨터 쿠키를 전송할 수 있습니다. 이 경우 회원은 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터의 브라우저의 설정을 변경할 수 있습니다. </dd>
            
                              </dl>
                              <dl>
                                <dt>제 10 조 (회원의 의무)</dt>
                                <dd>① 회원은 서비스 이용 시 다음 각 호의 행위를 하지 않아야 합니다.</dd>
                                <dd>가. 다른 회원의 ID를 부정하게 사용하는 행위</dd>
                                <dd>나. 서비스에서 얻은 정보를 호텔의 사전승낙 없이 회원의 이용이 외의 목적으로 복사, 복제, 변경, 번역하거나 출판 및 방송 등에 사용하거나 타인에게 제공하는 행위</dd>
                                <dd>다. 호텔의 저작권, 타인의 저작권 등 기타 귄리를 침해하는 행위</dd>
                                <dd>라. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위</dd>
                                <dd>마. 범죄행위를 목적으로 하거나 범죄와 결부된다고 객관적으로 판단하는 행위</dd>
                                <dd>바. 기타 관계법령에 위배되는 행위</dd>
                                <dd>② 회원은 관계법령, 이 약관에서 규정하는 사항, 서비스 이용 안내 및 주의 사항을 준수 하여야 합니다.</dd>
                                <dd>③ 회원은 내용별로 호텔이 서비스 공지사항에 게시하거나 별도로 공지한 이용 제한 사항을 준수하여야 합니다.</dd>
                                <dd>④ 회원은 호텔의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.</dd>
                              </dl>
                              
                              <dl>
                                <dt>제 11 조 (회원 아이디(ID)와 비밀번호 관리에 대한 회원의 의무)</dt>
                                <dd>아이디(ID)와 비밀번호에 대한 모든 관리는 회원에게 책임이 있습니다. 회원에게 부여된 아이디(ID)와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 전적인 책임은z 회원에게 있습니다.
                                  자신의 아이디(ID)가 부정하게 사용된 경우 또는 기타 보안 위반에 대하여, 회원은 반드시 호텔에 그 사실을 통보해야 합니다.</dd>
                                <dd>온라인 회원가입 약관</dd>
                              </dl>

                              <dl>
                                <dt>제 12 조 (제공 서비스)</dt>
                                <dl>① 호텔은 회원의 서비스 이용 중 필요가 있다고 인정되는 다양한 점에 대해서 전자메일이나 서신우편등의 방법으로 회원에게 제공할 수 있으며, 회원은 원하지 않을 경우 가입신청 메뉴와 회원정보수정 메뉴에서 정보수신거부를 할 수 있습니다.</dl>
                                <dl>② 호텔은 온라인 커뮤니티 서비스를 제공하며, 이는 회원이 원할 경우에만 직접 가입하여 활동할 수 있습니다.</dl>
                              </dl>

                              <dl>
                                <dt>제 13 조 (광고주와의 거래)</dt>
                                <dd>호텔은 본 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다.</dd>
                              </dl>

                              <dl>
                                <dt>제 14 조 (회원의 게시물)</dt>
                                <dd>호텔은 회원이 본 서비스를 통하여 게시, 게재, 전자메일 또는 달리 전송한 내용물에 대하여 책임을 지지 않으며, 다음 각 호의 1에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있습니다.</dd>
                                <dd>① 다른 회원이나 타인을 비방하거나, 프라이버시를 침해하거나, 중상모략으로 명예를 손상시키는 내용인 경우.</dd>
                                <dd>② 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있는 경우</dd>
                                <dd>③ 범죄적 행위에 관련된다고 인정되는 내용일 경우</dd>
                                <dd>④ 호텔의 지적재산권, 타인의 지적재산권 등 기타 권리를 침해하는 내용인 경우</dd>
                                <dd>⑤ 호텔에서 규정한 게시기간을 초과한 경우</dd>
                                <dd>⑥ 기타 관계법령에 위반된다고 판단되는 경우</dd>
                                  
                              </dl>
                              <dl>
                                <dt>제 15 조 (게시물에 대한 권리 및 책임)</dt>
                                <dd>게시물에 대한 저작권을 포함한 모든 권리 및 책임은 이를 게시한 회원에게 있습니다.</dd>
                              </dl>
                              <dl>
                                <dt>제 15 조 (게시물에 대한 권리 및 책임)</dt>
                                <dd>게시물에 대한 저작권을 포함한 모든 권리 및 책임은 이를 게시한 회원에게 있습니다.</dd>
                              </dl>
                              <dl>
                                <dt>제 16 조 (서비스 이용 책임)</dt>
                                <dd>회원은 서비스를 이용하여 불법 상품을 판매하는 영업 활동을 할 수 없으며 특히 해킹, 돈 벌기 광고, 음란사이트를 통한 상업행위, 상용 S/W 불법배포 등을 할 수 없습니다.<br>
                                이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에 관해서는 호텔이 책임을 지지 않습니다.</dd>
                              </dl>
                              <dl>
                                <dt>제 17 조 (서비스 제한 및 정지)</dt>
                                <dd>호텔은 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신 사업자가 전기통신서비스를 중지하는 등 기타 불가항력적 사유가 있는 경우에는 서비스의 전부 또는 일부를 제한 하거나 정지할 수 있습니다. 호텔은 제1항의 규정에 의하여 서비스의 이용을 제한하거나 정지한 때에는 그 사유 및 제한기간 등을 지체 없이 회원에게 알려야 합니다.</dd>
                              </dl>
            
            
                              <h3>제 5 장 기타</h3>
                              <dl>
                                <dt>제 18 조 (계약해지 및 이용제한)</dt>
                                <dd>① 회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 호텔에 해지신청을 하여야 합니다.</dd>
                                <dd>② 호텔은 회원이 다음 각 호의 1에 해당하는 행위를 하였을 경우 사전통지 없이 이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 제한하거나 중지할 수 있습니다.</dd>
                                <dd>가. 타인의 서비스 ID 및 비밀번호를 도용한 경우</dd>
                                <dd>나. 서비스의 안정적인 운영을 방해한 경우</dd>
                                <dd>다. 공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨 경우</dd>
                                <dd>라. 회원이 국익 또는 사회적 공익을 저해할 목적으로 서비스이용을 계획 또는 실행하는 경우</dd>
                                <dd>마. 타인의 지적재산권을 침해하는 내용을 게시, 게재, 전자메일 또는 기타의 방법으로 전송 하여 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우</dd>
                                <dd>바. 수신자의 의사에 반하는 음란, 저속, 위협적인 내용이나 광고성 정보, 전자우편 등을 지속적으로 전송하는 경우</dd>
                                <dd>사. 정보통신설비의 오 작동이나 정보 등의 파괴를 유발시키는 컴퓨터 바이러스프로그램 등을 유포하는 경우</dd>
                                <dd>아. 호텔, 다른 회원 또는 타인의 지적재산권을 침해하는 경우</dd>
                                <dd>자. 정보통신윤리위원회 등 외부기관의 시정요구가 있거나 불법선거 운동과 관련하여 선거관리위원회의 유권해석을 받은 경우</dd>
                                <dd>차. 타인의 개인정보, 이용자ID 및 비밀번호를 부정하게 사용하는 경우</dd>
                                <dd>카. 호텔의 서비스 정보를 이용하여 얻은 정보를 호텔의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 경우</dd>
                                <dd>타. 전기통신 관련법령 등에 위배되는 경우</dd>
                                <dd>파. 본 약관을 포함하여 기타 호텔이 정한 이용조건 및 관계법령에 위반한 경우</dd>
                              </dl>
                              <dl>
                                <dt>제 19 조 (손해배상)</dt>
                                <dd>호텔은 서비스 요금이 무료인 동안의 서비스 이용과 관련하여 회원에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다.</dd>
                              </dl>
                              <dl>
                                <dt>제 20 조 (면책조항)</dt>
                                  <dd>① 호텔은 천재지변 도는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</dd>
                                  <dd>② 호텔은 회원의 귀책사유로 인하여 서비스 이용의 장애가 발생한 경우에는 책임이 면제됩니다.</dd>
                                  <dd>③ 호텔은 회원이 호텔의 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사 선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.</dd>
                                  <dd>④ 호텔은 회원이 서비스에 게재한 정보, 자료, 사실의 정확성, 신뢰성 등 그 내용에 관하여는 책임이 면제되고, 회원은 자기의 책임아래 서비스를 이용하며, 서비스를 이용하여 게시 또는 전송한 자료 등에 관하여 손해가 발생하거나 자료의 취사선택, 기타 서비스 이용과 관련하여 어떠한 불이익이 발생 하더라도 이에 대한 모든 책임은 회원에게 있습니다.</dd>
                                  <dd>⑤ 호텔은 회원간 또는 회원과 제3자간에 서비스를 매개로 하여 물품거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임이 면책됩니다.</dd>
                                  <dd>⑥ 회원 아이디(ID)와 비밀번호의 관리 및 이용상의 부주의로 인하여 발생되는 손해 또는 제3자에 의한 부정사용 등에 대한 책임은 모두 회원에게 있습니다.</dd>
                              </dl>
                              <dl>
                                <dt>제 21 조 (관할법원)</dt>
                                <dd>본 약관 상의 분쟁에 대해 소송이 제기될 경우 호텔의 본사 소재지를 관할하는 법원을 전속 관할법원으로 합니다.</dd><br>
                                <dd>      본 약관은 2016년 7월 부터 시행합니다.
                                </dd>
                              </dl>
                      
                            </div> <!-- kjh-cent-in-a -->
                          </div> <!-- kjh-content-in -->
                          <div class="kjh-check-border">
                            <input type="checkbox" id="check1">
                            <label for="check1" ></label>동의합니다.
                          </div>  
                        </div><!-- kjh-cotent -->
                    </section>

                      <!-- 개인정보수집 -->
                      <section>

                        <h4>개인정보수집</h4>
                        <div class="kjh-content-border">
                          <div class="kjh-content">
                        <dl>
                            <dt>개인정보의 수집항목</dt>
                          <dd>히든 클리프 호텔 & 네이쳐는 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 히든 클리프 호텔 & 네이쳐의 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며, 선택항목을 입력하시지 않았다 하여 서비스 이용에 제한은 없습니다.</dd>
                          <dd>1) 고객 문의 시 수집하는 개인정보의 항목</dd>
                          <dd>- 필수항목: 성명, 이메일, 전화번호, 주소, 휴대폰, 문의사항</dd>
                          <dd>2) 객실 예약시 수집하는 개인정보의 항목</dd>
                          <dd>- 필수항목 : 예약자, 투숙자, 투숙인원, 예약타입, 호텔도착일자, 호텔출발일자, 생년월일, 이메일,휴대폰, 카드번호, 요구사항</dd>
                          <dd>- 선택항목 : 팩스번호, 객실 수, 추가 침대 수,기타 대여문의</dd>
                          
                          </dl>
                          <dl>
                            <dt>개인정보의 보유 및 이용기간</dt>
                            <dd>① 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다.</dd>
                            <dd>단, 상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
                            </dd>
                            <dd>- 회원가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 경우 등 일정한 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여 동의를 구합니다.
                            </dd>
                            <dd>- 회원 가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된때
                            </dd>
                            <dd>보존기간 : 소송이나 분쟁의 근거 자료로 보존하는 목적으로서 10년</dd>
                            <dd>기타 개별적으로 이용자의 동의를 받은 경우: 3년</dd>
                            <dd>- 배송정보의 경우 물품 또는 서비스가 인도되거나 제공된 때</dd>
                            <dd> - 이벤트 등 일시적 목적을 위하여 수집한 경우 이벤트 등이 종료한 때</dd>
                            <dd>- 계약 또는 청약철회 등에 관한 기록 : 5년</dd>
                            <dd>- 대금결제 및 재화등의 공급에 관한 기록 : 5년</dd>
                            <dd>- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</dd>
                            <dd> ② 귀하의 동의를 받아 보유하고 있는 거래정보 등을 귀하께서 열람을 요구하는 경우 히든 클리프 호텔 & 네이쳐는 지체없이 그 열람,확인 할 수 있도록 조치합니다.</dd>
                          </dl>

                          <dl>
                            <dt>개인정보의 수집목적 및 이용목적</dt>
<dd>히든 클리프 호텔 & 네이쳐는 개인정보보호 관련 주요 법률인 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’을 준수하기 위하여 개인정보취급방침을 제정하고 이를 준수하고 있습니다.</dd>
<dd>① 수집 항목: 개인 식별 정보 (성명, 성별, 생년월일), 서비스 제공 연락 정보 (휴대폰, 이메일)</dd>
<dd>* 인터넷 서비스 이용과정에서IP주소, 쿠키, 방문기록, 등 개인정보가 자동으로 생성되어 수집될 수 있습니다.</dd>
<dd>② 이용 목적: 본인 확인 절차에 활용, 고객 불만 처리</dd>
<dd>③ 히든 클리프 호텔 & 네이쳐는 개인정보의 이용목적의 달성 및 해지 시까지 개인정보를 보유, 이용하되 개인정보의 수집 및 이용 목적이 달성된 때에는 고객의 개인정보를 지체없이 파기합니다.</dd>
                          </dl>











</div> <!-- kjh-cent-in-a -->
</div> <!-- kjh-content-in -->
                        <div class="kjh-check-border">
                          <input type="checkbox" id="check1">
                          <label for="check1" ></label>동의합니다.
                        </div>
                      </section>
                      
                      <!-- 개인정보제공 -->
                      <section>
                        <h4>개인 정보 제공</h4>
                        <div class="kjh-content-border">
                          <div class="kjh-content">      
                            <dl>
                            <dt>개인정보 제공</dt>
                            <dd>회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</dd>
                            <dd>- 이용자들이 사전에 동의한 경우</dd>
                            <dd>- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</dd>
                            <dt>수집한 개인정보의 위탁</dt>
                            <dd>회사는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 
                              위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.</dd>
                          
                          </dl>
      회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.
      - 이용자들이 사전에 동의한 경우
      
      
      회사는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 
      위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.
                        </textarea>
                      
                      </section>
                      <div class="kjh-check-border">
                        <input type="checkbox" id="check1">
                        <label for="check1" ></label>동의합니다.
                      </div>

                      
                      <!-- 기본 정보 안내 -->
                      <section>
                        <h4>기본정보 안내</h4>
  <div class="kjh-content-border">
                          <div class="kjh-content">      
                            
                            <dl>
                            <dt>기본정보 안내</dt>
                          </dl>
        <dd>체크인:오후14:00 / 체크아웃 11:00</dd>
        <dd>전 객실 금연객실로 운영 (흡연 시 3박에 해당하는 요금 부과)</dd>
        <dd>전 객실 와이파이 무료 이용 </dd>
        <dd>국내 최대 47m 인피니티 풀 (사계절 온수풀 / 투숙객 전용)</dd>

        <dd>유아 대여품목 (한정수량 / 사전요청 필수)</dd>
        <dd>- 침대가드</dd>
        <dd>- 아기침대</dd>
        <dd>- 젖병소독기</dd>
        <dd>- 유아욕조</dd>
        <dd>- 아기변기</dd>
        <dd>- 유아용 스텝퍼</dd>
        <dd>- 유모차 (현장에서 접수가능)</dd>
        <dd>- 범퍼침대 (유료)</dd> 
        <br>

        <dd>취소 및 변경은 업무시간(09:00~18:00) 내에만 가능하며, 예약변경은 취소와 동일하게 간주됩니다.</dd>
        <dd>기타 궁금하신 사항은  이메일 (info@hiddencliff.kr ), 전화 (02 2277 9999)로 문의 바랍니다.</dd>
                        </textarea> 
                      </section>
                      <div class="kjh-check-border">
                        <input type="checkbox" id="check1">
                        <label for="check1" ></label>동의합니다.
                      </div>
                
                      
                    </div>
                    <div class="kjh-confirm">
                      <a href="/signUp2" >확인</a>
                    </div>
          </div>
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
              </body>

</html>