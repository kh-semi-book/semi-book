<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>보떼에르 스파 바이 록시땅 - Hidden Cliff Hotel and Nature</title>

  <link rel="stylesheet" href="/resources/css/nav/spa/spa.css">
  <link rel="stylesheet" href="/resources/css/common/main.css">
  
  <script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>

  <style> body {margin: auto;}</style>
</head>

<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

  <!-- 상단영역 -->
  <div class="reservation-lookUp-page">
    <!-- 상단 이미지 영역 -->
    <div class="rsc-top-image"></div>
    <div class="rsc-head-area">
      <section></section>

      <!-- 상단 메인 영역 -->
      <section class="rsc-body-TopArea">
       
        
          <div class="bsh-path">
                <ol>
                    <li class="bsh-path1">
                        <a href="/">HOME</a>
                    </li>
                    <li class="bsh-path2">
                        <a href="/nav/spa">> &nbsp;ROOMS</a>
                    </li>
                    <li class="bsh-path3">
                        <a href="/nav/spa">> &nbsp;보떼에르 스파 바이 록시땅</a>
                    </li>
                </ol>
            </div>

            <div class="bsh-main-title">
                <h1>보떼에르 스파 바이 록시땅</h1>
            </div>
      </section>

      <section></section>
    </div>

    <!-- 중간영역 -->
    <div class="rsc-body-area">
      <div class="reservation-content-main">
        <!-- 중간 메인 영역 -->
        <!-- 이미지 영역 -->

        <div id="rsc-image-pool">
          <span class="move prev">&#x3C;</span>
					<span class="move next">&#x3E;</span>
          <img src="/resources/image/nav/spa/spa1.jpg" id="mainImage"  onload="resize(this)"/>
        </div>

        <br/><br/>
        <!-- SPA 설명 -->
        <div id="rsc-SPA-info">
          <p>
            프랑스 프리미엄 레벨의 보떼에르 스파와 록시땅 스파가 만났습니다.
            <br />
            프랑스 드롬 지방에서 온 작약부터 코르시카에서 온 이모르텔,
            부르키나파소에서 온 시어버터의 천혜 원료와 <br />
            보떼에르 스파 전문가들의 손끝으로 전해지는 두피를 중심으로
            이루어지는 모든 케어 프로그램들은<br />
            50년 전통의 케어비법으로 건강과 아름다움의 비밀을 당신에게
            선사합니다. <br />
          </p>
        </div>

        <br /><br /><br />

        <!-- 메뉴 전체 보기 -->
        <button id="rsc-menu-btn">
          <a href="/resources/image/nav/spa/spa_info.pdf"  target="_blank">전체 메뉴 보기</a>
        </button>

        <br /><br /><br />

        <!-- 안내 테이블 -->
        <div id="rsc-table">
          <table width="1000px" id="rsc-table-guideInfo">
            <tr>
              <th width="150px" height="70px">위치</th>
              <td width="220px">1F</td>
              <th width="150px">이용대상</th>
              <td width="480px">제한없음</td>
            </tr>
            <tr>
              <th height="70px">이용문의</th>
              <td>064-795-4158</td>
              <th>운영시간</th>
              <td>13:00 ~ 22:00</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>


  <!-- -------------------[footer]-------------------- -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

  <script src="/resources/js/nav/spa/spa.js"></script>
</body>

</html>