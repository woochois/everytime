<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에브리타임</title>

<!-- <meta name="referrer" content="origin">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta property="fb:app_id" content="258676027581965">
<meta property="og:type" content="website">
<meta property="og:image"
	content="https://everytime.kr/images/og_image.png">
<meta property="og:url" content="https://everytime.kr/389131">
<meta property="og:site_name" content="에브리타임">
<meta property="og:title" content="에브리타임">
<meta property="og:description"
	content="전국 400개 대학을 지원하는 대학교 커뮤니티 및 시간표 서비스. 시간표 작성 및 학업 관리, 학교 생활 정보, 학교별 익명 커뮤니티 기능을 제공합니다.">
<meta name="description"
	content="전국 400개 대학을 지원하는 대학교 커뮤니티 및 시간표 서비스. 시간표 작성 및 학업 관리, 학교 생활 정보, 학교별 익명 커뮤니티 기능을 제공합니다.">
<meta name="keywords"
	content="에브리타임, 에타, everytime, 시간표, 수강신청, 강의평가, 학점계산기, 학식, 오늘의학식, 책방, 중고책, 대학생, 대학교, 대학, 대학생 시간표, 대학교 시간표, 대학생 커뮤니티, 대학교 커뮤니티, 시간표 앱, 시간표 어플">
<meta name="naver-site-verification"
	content="7366738375e320e44bd1c743b364db13086a7b0e">
<meta name="robots" content="noindex"> -->
<link type="text/css" href="/resources/css/common.css" rel="stylesheet">
<link type="text/css" href="/resources/css/common.partial.css"
	rel="stylesheet">
<link type="text/css" href="/resources/css/container.article.css"
	rel="stylesheet">
<link type="text/css" href="/resources/css/container.community.css"
	rel="stylesheet">
<link type="text/css" href="/resources/css/container.modal.css"
	rel="stylesheet">
<link href="#" rel="shortcut icon">

<link rel="stylesheet"
	href="/resources/bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="/resources/bootstrap/css/bootstrap-reboot.min.css">
<!-- <script type="text/javascript" async="" src="resources/js/analytics.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.underscore-min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.canvas-to-blob.min.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.load-image.all.min.js"></script>
<script type="text/javascript" src="/resources/js/community.side.js"></script>
<script type="text/javascript" src="/resources/js/message.send.js"></script> -->

<script type="text/javascript">
	$(function() {
		$('#freeReplyListDisp').load(
				'/freeReplyList/fbno/${freeboard.fbno}/pageNum/${pageNum}');
		
		$('#deleteBtn').click(function() {
			alert("삭제하시겠습니까?");
		});
		
		$('#frInsert').click(function() {
			var sendData = $('#frm').serialize()+"&pageNum=${pageNum}";
			$.post('/frInsert', sendData, function(data) {
				alert('댓글이 작성 되었습니다');
				$('#freeReplyListDisp').html(data);
				frm.frcontents.value = "";
			});
		});
	});
</script>
<style>
#recbutton {
	background: url( "/resources/images/recommend.png" ) no-repeat;
	border: none;
	width: 35px;
	height: 35px;
	cursor: pointer;
	


#recform{
	display:inline-block;
	white-space:nowrap;
}

} 
</style>
	<script>
		function recFunc() {
			alert("추천");
			window.location.href = "/frRec";
		};
	</script>

</head>
<body>
	<nav>
		<div class="wrap">
			<div id="logo">
				<a href="/main"><img src="/resources/images/nav.logo.png"></a>
				<p>
					<span class="name multiple">에브리타임</span><span class="subname">일산학원</span>
				</p>
			</div>
			<div id="account">
				<c:if test="${not empty member.id }">
					<a href="#" title="쪽지함" class="icon message">쪽지함</a>
					<a href="/mypage" title="내 정보" class="icon my">내 정보</a>
				</c:if>
				<c:if test="${empty member.id }">
					<a href="/loginForm" class="button">로그인</a>
					<a href="/registerForm" class="button red">회원가입</a>'
			</c:if>
			</div>
			<ul id="menu">
				<li class="active"><a href="#">게시판</a></li>
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
			<div class="divider"></div>
			<div class="group">
				<ul>
					<li><a href="/freeBoardList" data-id="389131"
						class="new active">자유게시판</a></li>
					<li><a href="#" data-id="258914" class="new">비밀게시판</a></li>
					<li><a href="#" data-id="389411">졸업생게시판</a></li>
					<li><a href="#" data-id="389220" class="new">새내기게시판</a></li>
					<li><a href="#" data-id="389359" class="new">장터게시판</a></li>
					<li><a href="#" data-id="367503">홍보게시판</a></li>
					<li><a href="#" data-id="418833">동아리·학회</a></li>
				</ul>
			</div>
			<div class="divider"></div>
			<div class="group">
				<ul>
					<li><a href="#" data-id="258916">정보게시판</a></li>
					<li><a href="#" data-id="389307">취업·진로</a></li>
				</ul>
			</div>
		</div>
		<input type="hidden" id="communityCampusId" value="113">
	</div>
	
	<div class="container" align="center">
		<h2 class="text-primary">게시글 상세 내역</h2>
		<table class="table table-striped table-bordered">
			<tr>
				<td>제목</td>
				<td>${freeboard.ftitle }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${freeboard.fnickname }</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${freeboard.freadcount }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><pre>${freeboard.fcontents }</pre></td>
			</tr>
			<tr>
				<td>댓글수</td>
				 <td>${freeboard.commentCount }</td>
			</tr>
			<tr>
				<td>추천수</td>
				<td>${freeboard.frecommendation}</td>
			</tr>
			<tr>
				<td colspan="2"><a href="/freeBoardList" class="btn btn-info">게시글
						목록</a> <c:if test="${ member.nickname == freeboard.fnickname }">
						<a
							href="/freeBoardUpdateForm/fbno/${freeboard.fbno }/pageNum/${pageNum}"
							class="btn btn-warning">수정</a>
						<a
							href="/freeBoardDelete/fbno/${freeboard.fbno }/pageNum/${pageNum}"
							class="btn btn-danger" id="deleteBtn">삭제</a>
					</c:if>
					
					
					<form action="/frRec/fbno/${freeboard.fbno}/pageNum/${pageNum}" id="recform" >
						<input type="hidden" name="frbno" value="${freeboard.fbno}" />
						<button type="submit" id="recbutton"></button>
					</form>
					</td>
					
			</tr>
		</table>

		<!-- 댓글 작성 폼 -->
		<form action="" name="frm" id="frm">
			<input type="hidden" name="frbno" value="${freeboard.fbno }" />
			<h3>댓글 작성</h3>
			<!-- member.id -->
					<input type="hidden" name="frnickname" value="${member.nickname}" />
			<table class="table table-hover">						
				<tr>
					<td>댓글</td>
					<td><textarea name="frcontents" id="" cols="30" rows="3"></textarea>
					</td>
					<td colspan="2">
						<!-- <input type="button" value="댓글 입력" id="frInsert" size="4" /></td> -->
						<input type="button" value="댓글 입력" id="frInsert" size="4" />
					</td>
				</tr>
			</table>
		</form>
		<div id="freeReplyListDisp"></div>
	</div>

	
</body>
</html>