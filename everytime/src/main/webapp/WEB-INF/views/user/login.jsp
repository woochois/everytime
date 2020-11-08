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
<meta name="robots" content="noindex">
<link type="text/css" href="/resources/css/common.css" rel="stylesheet">
<link type="text/css" href="/resources/css/main.common.css"
	rel="stylesheet">
<link type="text/css" href="/resources/css/main.login.css"
	rel="stylesheet">
<link href="/favicon.ico" rel="shortcut icon">

<script type="text/javascript"
	src="/resources/js/extensions.jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.underscore-min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.jquery.placeholder.min.js"></script>
<script type="text/javascript" src="/resources/js/main.login.js"></script>
</head>
<body>
	<div id="container" class="login">
		<h1 class="logo">
			<a href="/">에브리타임</a>
		</h1>
		<form action="user" method="post">
			<p class="input">
				<input type="text" name="id" maxlength="20" class="text"
					placeholder="아이디">
			</p>
			<p class="input">
				<input type="password" name="password" maxlength="20" class="text"
					placeholder="비밀번호">
			</p>
			<input type="hidden" name="redirect" value="/">
			<p class="submit">
				<input type="submit" value="로그인" onclick="hidden" class="text">
			</p>
			<label class="autologin"><input type="checkbox"
				name="autologin" value="1">로그인 유지</label>
			<p class="find">
				<a href="/forgot">아이디/비밀번호 찾기</a>
			</p>
			<p class="register">
				<span>에브리타임에 처음이신가요?</span> <a href="register">회원가입</a>
			</p>
		</form>
	</div>
	<address>
		<ul class="links">
			<li><a href="#">이용약관</a></li>
			<li><a href="#">개인정보처리방침</a></li>
			<li><a href="#">문의하기</a></li>
			<li class="copyright"><a href="/">&copy; 에브리타임</a></li>
		</ul>
	</address>
</body>
</html>