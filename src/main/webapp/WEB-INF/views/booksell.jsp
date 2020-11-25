<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>판매하기 - 에브리타임 책방</title>
<meta charset="utf-8">
<meta name="referrer" content="origin">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="naver-site-verification"
	content="b9d866b15d44c9243c600cc22295794f83391370">
<link rel="stylesheet" type="text/css"
	href="/resources/css/assets/style.css">
<script type="text/javascript"
	src="/resources/js/assets/jquery-3.1.0.min.js"></script>
<script type="text/javascript"
	src="/resources/js/assets/underscore-min.js"></script>
<script type="text/javascript" src="/resources/js/assets/common.js"></script>
<script type="text/javascript"
	src="/resources/js/assets/canvas-to-blob.min.js"></script>
<script type="text/javascript"
	src="/resources/js/assets/load-image.all.min.js"></script>
<script>

	$(function() {
		$("#search")
				.click(
						function() {
							$
									.ajax(
											{
												method : "GET",
												url : "https://dapi.kakao.com/v3/search/book?target=title&size=50", // 전송 주소
												data : {
													query : $("#bookName")
															.val()
												}, // 보낼 데이터
												headers : {
													Authorization : "KakaoAK 293654733c566c2df57a50fda13d9eaa"
												},
											})
									.done(
											function(data) { // 응답이 오면 처리를 하는 코드
												for (let i = 0; i < data.documents.length; i++) {
													$("#book").append(
																"<form action='bookSellForm'>"
																			+ "<input readonly name='isbn' value='"+data.documents[i].isbn+"'/>"
																			+ "<br/>"
																			+ "<input readonly name='title' value='"+data.documents[i].title+"'/>"
																			+ "<br/>"
																			+ "<input readonly name='authors' value='"+data.documents[i].authors+"'/>"
																			+ "<br/>"
																			+ "<input readonly name='publisher' value='"+data.documents[i].publisher+"'/>"
																			+ "<br/>"
																			+ "<input readonly name='price' value='"+data.documents[i].price+"'/>"
																			+ "<br/>"
																			+ "<input readonly name='translators' value='"+data.documents[i].translators+"'/>"
																			+ "<br/>"
																			+ "<input readonly name='datetime' value='"+data.documents[i].datetime+"'/>"
																			+ "<br/>"
																			+ "<input type='hidden' name='thumbnail' value='"+data.documents[i].thumbnail+"'/>"
																			+ "<br/>"
																			+ "<img src='"+data.documents[i].thumbnail+"'/>"
																			+ "<br/>"
																			+ "<input type='submit' value='데이터전송'/>"
																			+ "</form>");
													
												}
											
											});
						});
	});
</script>

</head>
<body>


	<div id="title">
		<a href="/" class="logo"><img
			src="/resources/images/assets/logo.png" alt="에브리타임 책방"></a>
	</div>

	<div class="container" align="center">
		<input type="text" id="bookName" />
		<button id="search">검색</button>
	</div>

	<div width="100%" id="book"></div>

	<div id="bar">
		<nav>
			<a href="/" class="home"><span class="icons home-darkgray-16"></span><span
				class="text">홈</span></a> <a href="/booksell" class="sell"><span
				class="icons sell-darkgray-16"></span><span class="text">판매하기</span></a>
			<a href="/my" class="my"><span class="icons my-darkgray-16"></span><span
				class="text">마이페이지</span></a> <a href="/logout" class="my"><span
				class="icons logout-darkgray-16"></span><span class="text">로그아웃</span></a>

		</nav>
	</div>
</body>
</html>
