<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>에브리타임</title>
<meta charset="utf-8">
<meta name="referrer" content="origin">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description"
	content="전국 400개 대학을 지원하는 대학교 커뮤니티 및 시간표 서비스. 시간표 작성 및 학업 관리, 학교 생활 정보, 학교별 익명 커뮤니티 기능을 제공합니다.">
<meta name="keywords"
	content="에브리타임, 에타, everytime, 시간표, 수강신청, 강의평가, 학점계산기, 학식, 오늘의학식, 책방, 중고책, 대학생, 대학교, 대학, 대학생 시간표, 대학교 시간표, 대학생 커뮤니티, 대학교 커뮤니티, 시간표 앱, 시간표 어플">
<meta name="naver-site-verification"
	content="7366738375e320e44bd1c743b364db13086a7b0e">
<link type="text/css" href="/resources/css/common.css" rel="stylesheet">
<link type="text/css" href="/resources/css/common.partial.css"
	rel="stylesheet">
<link type="text/css" href="/resources/css/container.community.css"
	rel="stylesheet">
<link href="https://everytime.kr/favicon.ico" rel="shortcut icon">
<script type="text/javascript"
	src="/resources/js/extensions.jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.underscore-min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript" src="/resources/js/community.side.js"></script>
<script type="text/javascript" src="/resources/js/community.index.js"></script>
</head>
<body>
	<nav>
		<div class="wrap">
			<div id="logo">
				<a href="/"><img src="/resources/images/nav.logo.png"></a>
				<p>
					<span class="name multiple">에브리타임</span><span class="subname">일산학원</span>
				</p>
			</div>
			<div id="account">
				<a href="#" title="쪽지함" class="icon message">쪽지함</a> 
				<a href="mypage" title="내 정보" class="icon my">내 정보</a> <input type="hidden"
					id="userUserid" value="${member.id }"> <input type="hidden"
					id="userSchool" value="${member.nickname }"> <input type="hidden"
					id="userCampus" value="379">
			</div>
			<ul id="menu">
				<li class="active"><a href="/">게시판</a></li>
				<li><a href="#">시간표</a></li>
				<li><a href="#">강의평가</a></li>
				<li><a href="#">학점계산기</a></li>
				<li><a href="#">친구</a></li>
				<li><a href="#">책방</a></li>
				<li><a href="#">캠퍼스픽</a></li>
			</ul>
		</div>
	</nav>
	<div id="submenu">
		<div class="wrap">
			<ul>
				<li><a href="#" data-id="393887" class="new">자유게시판</a></li>
				<li><a href="#" data-id="260228" class="new">비밀게시판</a></li>
				<li><a href="#" data-id="412760">새내기게시판</a></li>
				<li><a href="#" data-id="260230">정보게시판</a></li>
				<li><a href="promotionboard" data-id="367769">홍보게시판</a></li>
				<li><a href="#" data-id="419094">동아리·학회</a></li>
				<li><a href="#" class="search">게시판 찾기</a></li>
			</ul>
			<hr>
		</div>
		<input type="hidden" id="communityCampusId" value="379">
	</div>
	<div id="container" class="community">
		<aside class="none">
			<form class="search">
				<input type="search" name="keyword" class="text"
					placeholder="전체 게시판의 글을 검색하세요!">
			</form>
			<div class="title">
				<a class="hamburger"></a>
				<h1>한국방송통신대 에브리타임</h1>
				<ol class="buttons">
					<li><a id="searchArticle">글 검색</a></li>
				</ol>
			</div>
		</aside>
		<div class="banners">
			<a href="#"><img
				src="https://cf-eba.everytime.kr/20201102_klctm_home.png"></a>
		</div>
		<div class="leftside">
			<div class="card pconly">
				<form class="logged">
					<img src="https://cf-fpi.everytime.kr/0.png" class="picture">
					<p class="nickname">${member.nickname }</p>
					<p class="school">${member.id }</p>
					<ul class="buttons">
						<li><a href="mypage">내 정보</a></li>
						<li><a href="logout">로그아웃</a></li>
					</ul>
					<hr>
				</form>
			</div>
			<div class="card">
				<div class="menus">
					<a href="#" class="myarticle">내가 쓴 글</a> <a href="#"
						class="mycommentarticle">댓글 단 글</a> <a href="#" class="myscrap">내
						스크랩</a>
					<hr>
				</div>
			</div>
			<div class="card">
				<div class="banner">
					<a href="#"><img
						src="https://cf-eba.everytime.kr/20201101_startup_recruit_card.png"></a>
				</div>
			</div>
			<div class="card">
				<div class="banner">
					<a href="#"><img
						src="https://cf-eba.everytime.kr/20201019_SSAFY_card.png"></a>
				</div>
			</div>
			<div class="card">
				<div class="banner">
					<a href="#"><img
						src="https://cf-eba.everytime.kr/20201102_aiworks_card.jpg"></a>
				</div>
			</div>
		</div>
		<div class="rightside"></div>
		<div class="main"></div>
	</div>
	<div id="bottom">
		<ul class="links">
			<li><a href="#">이용약관</a></li>
			<li><a href="#">개인정보처리방침</a></li>
			<li><a href="#">커뮤니티이용규칙</a></li>
			<li><a href="#">공지사항</a></li>
			<li><a href="#">문의하기</a></li>
			<li class="copyright"><a href="/">&copy; 에브리타임</a></li>
		</ul>
	</div>
	<script type="text/javascript">
		var _serverTime = 1604644821367;
		var _clientTime = new Date().getTime();
		var _diffTime = _clientTime - _serverTime;
		var _apiServerUrl = 'https://api.everytime.kr';
	</script>
	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=UA-22022140-4"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());
		gtag('config', 'UA-22022140-4');
	</script>
</body>
</html>