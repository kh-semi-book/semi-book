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

<link rel="stylesheet" href="/resources/css/reservation/reservation2.css">
<link rel="stylesheet" href="/resources/css/common/main.css">

</head>

<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />


	<div class="bsh-main">
		<div id="head-img"></div>
		<div class="bsh-path">
			<ol>
				<li class="bsh-path1"><a href="https://www.hiddencliff.kr/main/main.html" style="color: #767676;">home</a></li>
				<li class="bsh-path2"><a href="http://127.0.0.1:5500/KH_%EC%98%88%EC%95%BD/%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8html/%EC%98%88%EC%95%BD%ED%95%98%EA%B8%B02%EB%B2%88.html#"
					style="color: #767676;">> &nbsp;&nbsp;예약하기</a></li>
			</ol>
		</div>

		<div class="bsh-main-title">
			<h1>예약하기</h1>
		</div>

		<div class="bsh-stepbox">
			<ul>
				<li><span>STEP 01</span> 일정선택</li>
				<li class="bsh-on" title="현재 위치"><span>STEP 02</span> 객실&패키지 선택</li>
				<li><span>STEP 03</span> 옵션 선택</li>
				<li><span>STEP 04</span> 고객 정보 입력</li>
				<li><span>STEP 05</span> 예약 완료</li>
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
											<img src="/images/예약하기2-1.jpg" title="대표이미지" style="width: 210px; height: 100%; object-fit: cover;" class="bsh-cp">
										</div>
										<div class="bsh-cont">
											<strong>Fall in Infiniti</strong> <span class="bsh-txt">기간 : 2022-08-24 ~ 2022-11-30</span>
											<table class="opt_table">
												<colgroup>
													<col style="width: 34px">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th style="font-size: 13px; font-weight: 400; color: #666; vertical-align: top;">구성 :</th>
														<td><span class="bsh-txt"> 디럭스 1박+풀문나이트 2인+말피 칵테일 2잔<br>
														</span></td>
													</tr>
												</tbody>
											</table>
											<a href="#" onclick="window.open()" style="width: 170px; vertical-align: middle; display: inline-block; margin-top: 44px;"> 패키지 상세보기 &nbsp;> </a>
										</div>
									</div>


									<div class="bsh-roomselect">
										<ul class="bsh-hidelist" id="list332">
											<li><strong class="bsh-tit">가든 디럭스 </strong>
												<div class="bsh-priceitem">
													<ul>
														<li><span class="bsh-view" style="margin-bottom: 10px;">더블 (1박)</span> <span class="bsh-price" style="margin-bottom: 10px;">230,000원</span> <a href="#" class="bsh-btn bsh-blue"
															style="margin-bottom: 10px;">예약</a></li>
														<li><span class="bsh-view">트윈 (1박)</span> <span class="bsh-price">230,000원</span> <a href="#" class="bsh-btn bsh-blue">예약</a></li>
													</ul>
												</div></li>
											<li><strong class="bsh-tit">클리프 디럭스 </strong>
												<div class="bsh-priceitem">
													<ul>
														<li><span class="bsh-view" style="margin-bottom: 10px;">더블 (1박)</span> <span class="bsh-price" style="margin-bottom: 10px;">260,000원</span> <a href="#" class="bsh-btn bsh-blue"
															style="margin-bottom: 10px;">예약</a></li>
														<li><span class="bsh-view">트윈 (1박)</span> <span class="bsh-price">260,000원</span> <a href="#" class="bsh-btn bsh-blue">예약</a></li>
													</ul>
												</div></li>
										</ul>
									</div>
								</li>
							</ul>



							<!-- 2번 -->



							<ul>
								<li>
									<div class="bsh-item">
										<div class="bsh-img">
											<img src="/images/예약하기2-2.jpg" title="대표이미지" style="width: 210px; height: 100%; object-fit: cover;" class="bsh-cp">
										</div>
										<div class="bsh-cont">
											<strong>LA DOLCE VITA</strong> <span class="bsh-txt">기간 : 2022-08-08 ~ 2022-12-31</span>
											<table class="opt_table">
												<colgroup>
													<col style="width: 34px">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th style="font-size: 13px; font-weight: 400; color: #666; vertical-align: top;">구성 :</th>
														<td><span class="bsh-txt"> 스위트 1박+조식 2인+풀문나이트+말피 칵테일 2잔&비치타올<br>
														</span></td>
													</tr>
												</tbody>
											</table>
											<a href="#" onclick="window.open()" style="width: 170px; vertical-align: middle; display: inline-block; margin-top: 44px;"> 패키지 상세보기 &nbsp;> </a>
										</div>
									</div>


									<div class="bsh-roomselect">
										<ul class="bsh-hidelist" id="list332">
											<li><strong class="bsh-tit">파노라마 스위트 </strong>
												<div class="bsh-priceitem">
													<ul>
														<li><span class="bsh-view" style="margin-bottom: 10px;">더블 (1박)</span> <span class="bsh-price" style="margin-bottom: 10px;">310,000원</span> <a href="#" class="bsh-btn bsh-blue"
															style="margin-bottom: 10px;">예약</a></li>
														<li><span class="bsh-view">더블 (1박)</span> <span class="bsh-price">310,000원</span> <a href="#" class="bsh-btn bsh-blue">예약</a></li>
													</ul>
												</div></li>
										</ul>
									</div>
								</li>
							</ul>



							<!-- 3번 -->



							<ul>
								<li>
									<div class="bsh-item">
										<div class="bsh-img">
											<img src="/images/예약하기2-3.jpg" title="대표이미지" style="width: 210px; height: 100%; object-fit: cover;" class="bsh-cp">
										</div>
										<div class="bsh-cont">
											<strong>[스파 패키지] Time to Relax</strong> <span class="bsh-txt">기간 : 2022-08-06 ~ 2023-03-31</span>
											<table class="opt_table">
												<colgroup>
													<col style="width: 34px">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th style="font-size: 13px; font-weight: 400; color: #666; vertical-align: top;">구성 :</th>
														<td><span class="bsh-txt"> 클리프 뷰 무료 업그레이드+16만 8천원 상당 스파 1인+풀문나이트인뮤직<br>
														</span></td>
													</tr>
												</tbody>
											</table>
											<a href="#" onclick="window.open()" style="width: 170px; vertical-align: middle; display: inline-block; margin-top: 44px;"> 패키지 상세보기 &nbsp;> </a>
										</div>
									</div>


									<div class="bsh-roomselect">
										<ul class="bsh-hidelist" id="list332">
											<li><strong class="bsh-tit">클리프 디럭스 </strong>
												<div class="bsh-priceitem">
													<ul>
														<li><span class="bsh-view" style="margin-bottom: 10px;">더블 (1박)</span> <span class="bsh-price" style="margin-bottom: 10px;">340,000원</span> <a href="#" class="bsh-btn bsh-blue"
															style="margin-bottom: 10px;">예약</a></li>
														<li><span class="bsh-view">트윈 (1박)</span> <span class="bsh-price">340,000원</span> <a href="#" class="bsh-btn bsh-blue">예약</a></li>
													</ul>
												</div></li>
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
								<li><span class="a_age">48개월 이상~만12세 이하</span> <span class="a_date">(인원 추가 요금 별도 발생)</span></li>
							</ul>
							<span class="arrow"></span>
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
											<td colspan="2"><input style="text-align: right;" type="text" name="sdate" id="sdate" value="2022-11-04 (금)" readonly=""> <input type="hidden" name="room_date"
												value="2022-11-04"></td>
										</tr>
										<tr>
											<th scope="row"><label for="edate">체크아웃</label></th>
											<td colspan="2"><input style="text-align: right;" type="text" name="edate" id="edate" value="2022-11-05 (토)" readonly=""> <input type="hidden" name="room_date_out"
												value="2022-11-05"></td>
										</tr>
										<tr>
											<th scope="row"><label for="room_day">박수</label></th>
											<td colspan="2"><input type="text" name="room_day" id="room_day" value="1" class="w06" style="width: 19px !important" readonly=""> 박</td>
										</tr>
										<tr>
											<th scope="row"><label for="room_cnt">객실수</label></th>
											<td colspan="2"><input type="text" name="room_cnt" id="room_cnt" style="text-align: right; padding-right: 7px" value="1" readonly=""> 실</td>
										</tr>
										<tr>
											<th scope="row"><label for="room_adult_num">인원수</label></th>
											<td style="padding-right: 0"><span>어른</span> <!--<select name="room_adult_num" id="room_adult_num" class="w06"></select>--> <input type="text" name="room_adult_num" id="room_adult_num"
												class="w30" value="1" readonly=""></td>
											<td style="padding-right: 0" class="bsh-zzz"><span>어린이</span> <!--<select name="room_child_num" id="room_child_num" class="w06"></select>--> <input type="text" name="room_child_num"
												id="room_child_num" class="w30" value="0" readonly="">
												<p class="age_info ageguide_tip">
													<a href="#"><img src="/images/i이미지.gif" alt="상세정보보기" style="filter: grayscale(1);"></a>
												</p></td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
					</ul>
					<div class="btn_rewind mt15">
						<a href="/reservation/reservation3" class="btn powderblue wid">일정 재선택하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>

</html>
