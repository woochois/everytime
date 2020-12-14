<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>에브리타임 책방</title>
<meta charset="utf-8">
<meta name="referrer" content="origin">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="naver-site-verification"
	content="b9d866b15d44c9243c600cc22295794f83391370">
<link rel="stylesheet" type="text/css"
	href="../resources/css/assets/style.css">
<script type="text/javascript"
	src="../resources/js/assets/jquery-3.1.0.min.js"></script>
<script type="text/javascript"
	src="../resources/js/assets/underscore-min.js"></script>
<script type="text/javascript" src="../resources/js/assets/index.js"></script>
<script>
	$(function() {
		$("#search")
				.click(
						function() {
							$
									.ajax(
											{
												method : "GET",
												url : "https://dapi.kakao.com/v3/search/book?target=title&size=20", // 전송 주소
												data : {
													query : $("#bookName")
															.val()
												}, // 보낼 데이터
												headers : {
													Authorization : "KakaoAK 293654733c566c2df57a50fda13d9eaa"
												}
											})
									.done(
											function(msg) { // 응답이 오면 처리를 하는 코드
												console.log(msg);
												for (var i = 0; i < 20; i++) {
													$("p")
															.append(
																	"<strong>"
																			+ msg.documents[i].isbn
																			+ "</strong>");
													$("p")
															.append(
																	"<strong>"
																			+ msg.documents[i].title
																			+ "</strong>");
													$("p")
															.append(
																	"<strong>"
																			+ msg.documents[i].authors
																			+ "</strong>");
													$("p")
															.append(
																	"<strong>"
																			+ msg.documents[i].publisher
																			+ "</strong>");
													$("p")
															.append(
																	"<strong>"
																			+ msg.documents[i].price
																			+ "</strong>");
													let date = data.datetime
															.split('T')[i];
													$("p")
															.append(
																	"<strong>"
																			+ msg.documents[i].date
																			+ "</strong>");
													$("p")
															.append(
																	"<strong>"
																			+ msg.documents[i].translators
																			+ "</strong>");
													$("p")
															.append(
																	"<img src='" + msg.documents[i].thumbnail + "'>");
												}
											});
						})
	});
</script>
</head>
<body>
	<header>
		<div id="title">
			<a href="../main" class="logo"><img
				src="../resources/images/assets/logo.png" alt="에브리타임 책방"></a>
		</div>
		
		
		<div id="search">
			<form action="/books/books" method="get">
				<input type="text" name="keyword" placeholder="구매할 책을 검색하세요!"/>
			</form>
		</div>
		
		
		
	</header>

	<div id="items">
		<div class="header">
			<c:forEach var="bookSellList" items="${bookSellList}">
				<table>
					<tr>
						<td>${bookSellList.title}</td>
						<td>${bookSellList.authors}</td>
						<td>${bookSellList.publishdate}</td>
						<td>${bookSellList.price}</td>
						<td>${bookSellList.contents}</td>
						<td>${bookSellList.underline}</td>
						<td>${bookSellList.writing}</td>
						<td>${bookSellList.cover}</td>
						<td>${bookSellList.nameentry}</td>
						<td>${bookSellList.pagecolor}</td>
						<td>${bookSellList.pagestate}</td>
						<td><img src="${bookSellList.imgfile1}"/></td>
						<td><img src="${bookSellList.imgfile2}"/></td>
						<td><img src="${bookSellList.imgfile3}"/></td>
						<td>${bookSellList.delivery}</td>
						<td>${bookSellList.directdeal}</td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</div>
	<div id="loading">
		<img src="../resources/images/assets/loading.svg">
	</div>
	<div id="bar">
		<nav>
			<a href="/" class="home"><span class="icons home-darkgray-16"></span><span
				class="text">홈</span></a> <a href="/books/bookSell" class="sell"><span
				class="icons sell-darkgray-16"></span><span class="text">판매하기</span></a>
			<a href="../member/mypage" class="my"><span
				class="icons my-darkgray-16"></span><span class="text">마이페이지</span></a>
			<a href="../member/logout" class="my"><span
				class="icons logout-darkgray-16"></span><span class="text">로그아웃</span></a>

		</nav>
	</div>
	<div id="bottom">
		<ul class="links">
			<li class="copyright"><a href="#">에브리타임</a></li>
			<li><a href="#">문의하기</a></li>
			<li><a href="#">커뮤니티이용규칙</a></li>
			<li><a href="#">개인정보처리방침</a></li>
		</ul>

	</div>
</body>
</html>


