<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>에브리타임</title>
  <meta charset="utf-8">
  <meta name="referrer" content="origin">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta property="fb:app_id" content="258676027581965">
  <meta property="og:type" content="website">
  <meta property="og:image" content="https://everytime.kr/images/og_image.png">
  <meta property="og:site_name" content="에브리타임">
  <meta property="og:title" content="에브리타임">
  <meta property="og:description" content="전국 400개 대학을 지원하는 대학교 커뮤니티 및 시간표 서비스. 시간표 작성 및 학업 관리, 학교 생활 정보, 학교별 익명 커뮤니티 기능을 제공합니다.">
  <meta name="description" content="전국 400개 대학을 지원하는 대학교 커뮤니티 및 시간표 서비스. 시간표 작성 및 학업 관리, 학교 생활 정보, 학교별 익명 커뮤니티 기능을 제공합니다.">
  <meta name="keywords" content="에브리타임, 에타, everytime, 시간표, 수강신청, 강의평가, 학점계산기, 학식, 오늘의학식, 책방, 중고책, 대학생, 대학교, 대학, 대학생 시간표, 대학교 시간표, 대학생 커뮤니티, 대학교 커뮤니티, 시간표 앱, 시간표 어플">
  <meta name="naver-site-verification" content="7366738375e320e44bd1c743b364db13086a7b0e">
  <meta name="robots" content="noindex">
  <link type="text/css" href="/resources/css/register.css" rel="stylesheet">
  <link href="/favicon.ico" rel="shortcut icon">
  <script type="text/javascript" src="/resources/js/extensions.jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="/resources/js/extensions.underscore-min.js"></script>
  <script type="text/javascript" src="/resources/js/common.js"></script>
  <script type="text/javascript" src="/resources/js/register.info.js"></script>
</head>
<script type="text/javascript">
	function idChk() {
		if (!frm.id.value) { alert("아이디 입력하고 중복체크하시오");
			frm.id.focus(); return false;			
		}
		$.post('idChk','id='+frm.id.value, function(data) {
			 //alert(data);
			$('#disp').html(data);
		});
	}
	function chk() {
		if (frm.password.value != frm.password2.value) {
			alert("암호와 암호 확인이 다릅니다");
			frm.password.focus(); frm.password.value="";
			return false;
		}
	}
</script>
<body>

<form id="container" data-adagreement="1" data-redirecturl="/"
	onsubmit="return chk()" method="post" name="frm" action="/register">
    <h2>회원 정보</h2>
    <div class="input">
      <div class="label"><label>아이디</label><p>영문, 숫자, 4~20자</p></div>
      <input type="text" name="id" maxlength="20" placeholder="아이디" autocomplete="off">
      <div class="caution"></div>
    </div>
    <div class="input">
      <div class="label"><label>비밀번호</label><p>4~20자</p></div>
      <input type="password" name="password" maxlength="20" placeholder="비밀번호">
      <div class="caution"></div>
      <input type="password" name="password2" maxlength="20" placeholder="비밀번호 확인">
      <div class="caution"></div>
    </div>
        <div class="input">
      <div class="label"><label>닉네임</label><p>커뮤니티 활동에 필요</p></div>
      <input type="text" name="nickname" maxlength="10" placeholder="닉네임" autocomplete="off">
      <div class="caution"></div>
    <div class="input">
      <div class="label"><label>이메일</label><p>아이디/비밀번호 찾기에 필요</p></div>
      <input type="email" name="email" placeholder="이메일" autocomplete="off">
      <div class="caution"></div>
    </div>
    </div>
    <div class="input">
    	<div class="label"><label >학원명</label></div>
    	<input type="text" name="academyname" maxlength="20" placeholder="학원명" autocomplete="off"/>
    </div>
    <input type="submit" value="회원가입">
  </form>

<!--   <script type="text/javascript">
    var _serverTime = 1604572463616;
    var _clientTime = new Date().getTime();
    var _diffTime = _clientTime - _serverTime;
    var _apiServerUrl = 'https://api.everytime.kr';
  </script>
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-22022140-4"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-22022140-4');
  </script> -->
</body>
</html>