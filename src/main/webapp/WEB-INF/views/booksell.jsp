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
<script type="text/javascript" src="/resources/js/assets/sell.js"></script>

<script>
        $(function () {

            $(".search").click(function () {

                $.ajax({
                    method: "GET",
                    url: "https://dapi.kakao.com/v3/search/book?target=title&size=20", // 전송 주소
                    data: {query: $("#bookName").val()},
                    headers: { Authorization: "KakaoAK 293654733c566c2df57a50fda13d9eaa" },
                })
                .done(function (msg) { // 응답이 오면 처리를 하는 코드
                    console.log(msg);
                    for(var i = 0; i < 20; i++){                          
                        $("p").append("<ul class='list-group'>"
                        + "<li class='list-group-item'>ISBN : " + msg.documents[i].isbn + "</li>"
                        + "<li class='list-group-item'>책 이름 : " + msg.documents[i].title + "</li>"
                        + "<li class='list-group-item'>저자 : " + msg.documents[i].authors + "</li>"
                        + "<li class='list-group-item'>출판사 : " + msg.documents[i].publisher + "</li>"
                        + "<li class='list-group-item'>가격 : " + msg.documents[i].price + "</li>"
                        + "<li class='list-group-item'>옮긴이 : " + msg.documents[i].translators + "</li>"
                        + "<li class='list-group-item'> 출판일 : " + msg.documents[i].datetime + "</li>"
                        + "<li class='list-group-item'><a href='/bookSellForm' ><img src='" + msg.documents[i].thumbnail + "' width='100%' height='300'></a></li>"
                      + "</ul>");
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
	</header>
	<form id="sell">
		<h1>판매하기</h1>
	</form>


	<div id="bar">
		<nav>
			<a href="/" class="home"><span class="icons home-darkgray-16"></span><span
				class="text">홈</span></a> <a href="/booksell" class="sell"><span
				class="icons sell-darkgray-16"></span><span class="text">판매하기</span></a>
			<a href="/mypage" class="my"><span class="icons my-darkgray-16"></span><span
				class="text">마이페이지</span></a> <a href="/logout" class="my"><span
				class="icons logout-darkgray-16"></span><span class="text">로그아웃</span></a>

		</nav>
	</div>
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
	
	<center>
        <form action="bookList.do">
            <input type="text" name="keyword" >
            <input type="submit" value="검색">
        </form>
        
    </center>
    <table>
        <tr>
            <td colspan="7" width="100%" bgcolor="pink"></td>
        </tr>
        <c:forEach items="${bookList}" var ="b">
            <tr>
                <td rowspan="2"><img src="${b.image}"></td>
                <td rowspan="4" width="800">"${b.title}"</td>
                <td width="200">${b.author}</td>
            </tr>
            <tr>
                <td width="200">${b.price }</td>
                <td width="200">${b.discount }</td>
                <td width="200">${b.publisher }</td>
                <td width="200">${b.pubdate }</td>
                <td width="200">${b.isbn }</td>
            </tr>
            <tr>
                <td colspan="7">${b.description}</td>
            </tr>
            <tr>
                <td colspan="7" width="100%" bgcolor="pink"></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>

