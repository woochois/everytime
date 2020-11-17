<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

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
	href="/resources/css/assets/style.css">
<script type="text/javascript"
	src="/resources/js/assets/jquery-3.1.0.min.js"></script>
<script type="text/javascript"
	src="/resources/js/assets/underscore-min.js"></script>
<script type="text/javascript" src="/resources/js/assets/common.js"></script>
<script type="text/javascript" src="/resources/js/assets/index.js"></script>
<!-- <script>
	function searchISBN(isbn) {
		event.preventDefault();
		if (isbn !== undefined && isbn !== "") {
			$.ajax({
				url : "https://dapi.kakao.com/v3/search/book",
				headers : {
					'Authorization' : 'KakaoAK 293654733c566c2df57a50fda13d9eaa'
				},
				type : "get",
				data : {
					query : isbn,
					target : 'isbn'
				},
				
				success : function(result) {
					let data = result.documents[0];
					$("#title").val(data.title);
					$('#author').val(data.authors);
					$('#pub').val(data.publisher);
					$('#price').val(data.price);
					$('#info').val(data.contents + "...");
					let date = data.datetime.split('T')[0];
					$('#date').val(date);
					$('#translator').val(data.translators);
				}
				
			});
			
		}
	}
</script> -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>

    <script>
        $(function () {

            $("#search").click(function () {

                $.ajax({
                    method: "GET",
                    url: "https://dapi.kakao.com/v3/search/book?target=title&size=20", // 전송 주소
                    data: { query: $("#bookName").val() }, // 보낼 데이터
                    headers: { Authorization: "KakaoAK 293654733c566c2df57a50fda13d9eaa" }
                })
                    .done(function (msg) { // 응답이 오면 처리를 하는 코드
                    	for(var i = 0; i < 20; i++){
                    		$("p").append("<strong>" + msg.documents[i].isbn + "</strong>");
                    		$("p").append("<strong>" + msg.documents[i].title + "</strong>");
                    		$("p").append("<strong>" + msg.documents[i].authors + "</strong>");
                    		$("p").append("<strong>" + msg.documents[i].publisher + "</strong>");
                    		$("p").append("<strong>" + msg.documents[i].price + "</strong>");
                    		let date = data.datetime.split('T')[i];
                    		$("p").append("<strong>" + msg.documents[i].date + "</strong>");
                    		$("p").append("<strong>" + msg.documents[i].translators + "</strong>");
                    		
    	                    $("p").append("<img src='" + msg.documents[i].thumbnail + "'>");
                    	}
                    });
            })
        });

    </script>
</head>
<body>
	<header>
		<div id="title">
			<a href="/" class="logo"><img
				src="/resources/images/assets/logo.png" alt="에브리타임 책방"></a>
		</div>


		<div id="search">
			<form>
				<input id="bookName" type="text" name="keyword" placeholder="구매할 책을 검색하세요!"
					autocomplete="off"/>
					<!-- <button onclick="searchISBN($('#isbn').val());"></button> -->
				<div class="searchbutton">
					<span class="icons search-darkgray-16"></span>
				</div>
			</form>
		</div>
	</header>
	<div id="items">

		<div class="header">
		<button id="search">검색</button>
		<p></p>
		</div>
	</div>
	<div id="loading">
		<img src="/resources/images/assets/loading.svg">
	</div>
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
	<div id="bottom">
		<ul class="links">
			<li class="copyright"><a href="https://everytime.kr">에브리타임</a></li>
			<li><a href="https://everytime.kr/page/faq">문의하기</a></li>
			<li><a href="https://everytime.kr/page/rules">커뮤니티이용규칙</a></li>
			<li><a href="https://everytime.kr/page/privacy">개인정보처리방침</a></li>
		</ul>

	</div>
	<script type="text/javascript">
		bookstore.data.user = {
			id : 3561352,
			nickname : '핫죠지',
			school_id : 345,
			campus_id : 379,
			campus_full_name : '한국방송통신대',
			campus_latitude : 37.57869,
			campus_longitude : 127.003279
		};
		bookstore.data.campuses = [ {
			id : 379,
			full_name : '한국방송통신대'
		} ];
	</script>
	<script type="text/javascript">
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'https://www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-82918907-1', 'auto');
		ga('send', 'pageview');
	</script>
</body>
</html>


