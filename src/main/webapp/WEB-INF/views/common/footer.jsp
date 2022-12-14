<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://kit.fontawesome.com/23979eaf06.js" crossorigin="anonymous"></script>
<footer>
	<div id="footer-first">


		<div id="inner-footer-contact">

			<table>
				<tr>
					<td colspan="4">
						<p>
							<strong>Contact US </strong>
						</p>
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

			<a href="/reservation/reservation1" class="book-btn2"  target="_blank">예약하기</a>
		</div>
	</div>

	<div id="footer-middle-back">
		<div id="footer-middle">
			<ul>
				<p class="footer-menu-title">HIDDEN CLIFF</p>
				<li><a href="/nav/about">호텔소개</a></li>
				<li><a href="/nav/about/contact">오시는길</a></li>
				<li><a href="/nav/about/cmm">공지사항</a></li>
			</ul>
			<ul>
				<p class="footer-menu-title">SPECIAL OFFER</p>
				<li><a href="/nav/specialOffer/roompromotion">객실 프로모션</a></li>
				<li><a href="/nav/specialOffer/dining">다이닝</a></li>
				<li><a href="/nav/specialOffer/event">이벤트</a></li>
			</ul>
			<ul>
				<p>ROOMS</p>
				<li><a href="/nav/rooms">객실 리스트</a></li>
			</ul>
			<ul>
				<p>DINING</p>
				<li><a href="/nav/dining/panorama">파노라마</a></li>
				<li><a href="/nav/dining/beyond">비욘드</a></li>
				<li><a href="/nav/dining/chichi">치치</a></li>
			</ul>
			<ul>
				<p id="small-text">THE INFINITY POOL</p>
				<li><a href="/nav/infinitiPool">인피니티 풀</a></li>
			</ul>
			<ul>
				<p>MEETING</p>
				<li><a href="/nav/dining/panorama">심포니</a></li>
				<li><a href="/nav/dining/beyond">하모니</a></li>
				<li><a href="/nav/dining/chichi">오퍼스</a></li>
			</ul>
			<ul>
				<p>FACILITIES</p>
				<li><a href="/nav/facilities/kids">키즈 플레이 룸</a></li>
				<li><a href="/nav/facilities/fitness">피트니트 센터</a></li>
				<li><a href="/nav/facilities/trail">히든 트레일</a></li>
			</ul>
			<ul>
				<p>SPA</p>
				<li><a href="/nav/spa">보떼에르 스파 바이 록시땅</a></li>
			</ul>


		</div>





	</div>

	<div id="footer-last">
		<img src="/resources/image/logo.png">

		<p>제주특별자치도 서귀포시 예래해안로 542 (중문) 예래클리프개발(주)</p>
		<p>(구: 제주특별자치도 서귀포시 상예동 625) 대표이사 : 이병혁</p>

		<!-- 사이트상에서는 이부분이 좀 더 강조되어 보임 -->
		<p>
			<strong>사업자등록번호</strong>616-81-98536<strong>통신판매신고번호</strong> (제2016-제주예래-15호)
		</p>

		<p>Copyright © yerae Cliff Development CO., LTD. All Rights Reserved.</p>


		<span> <a href="#">개인정보 처리 방침</a> | <a href="https://www.facebook.com/hiddencliff/?fref=ts"><i class="fa-brands fa-facebook-f"></i></a> | <a
			href="https://search.naver.com/search.naver?where=post&sm=tab_jum&ie=utf8&query=히든+클리프"><i class="fa-sharp fa-solid fa-n"></i></a> | <a
			href="https://www.tripadvisor.com/Hotel_Review-g297892-d10205958-Reviews-Hidden_Cliff_Hotel_Nature-Seogwipo_Jeju_Island.html"><i class="fa-solid fa-hotel"></i></a>
		</span>
	</div>
	<%-- <script src="/resources/js/header.js"></script> --%>

</footer>

<c:if test= "${!empty message}">
	<script>
		alert("${message}");
	</script>
	<c:remove var="message" />
</c:if> 
