<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <title>에브리타임</title>
  <meta charset="utf-8">
  <meta name="referrer" content="origin">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta property="fb:app_id" content="258676027581965">
  <meta property="og:type" content="website">
  <meta property="og:image" content="https://everytime.kr/images/og_image.png">
  <meta property="og:url" content="https://everytime.kr/393887/v/151818549">
  <meta property="og:site_name" content="에브리타임">
  <meta property="og:title" content="에브리타임">
  <meta property="og:description" content="전국 400개 대학을 지원하는 대학교 커뮤니티 및 시간표 서비스. 시간표 작성 및 학업 관리, 학교 생활 정보, 학교별 익명 커뮤니티 기능을 제공합니다.">
  <meta name="description" content="전국 400개 대학을 지원하는 대학교 커뮤니티 및 시간표 서비스. 시간표 작성 및 학업 관리, 학교 생활 정보, 학교별 익명 커뮤니티 기능을 제공합니다.">
  <meta name="keywords" content="에브리타임, 에타, everytime, 시간표, 수강신청, 강의평가, 학점계산기, 학식, 오늘의학식, 책방, 중고책, 대학생, 대학교, 대학, 대학생 시간표, 대학교 시간표, 대학생 커뮤니티, 대학교 커뮤니티, 시간표 앱, 시간표 어플">
  <meta name="naver-site-verification" content="7366738375e320e44bd1c743b364db13086a7b0e">
  <meta name="robots" content="noindex">
  <link type="text/css" href="/resources/css/common.css" rel="stylesheet">
  <link type="text/css" href="/resources/css/common.partial.css" rel="stylesheet">
  <link type="text/css" href="/resources/css/container.article.css" rel="stylesheet">
  <link type="text/css" href="/resources/css/container.community.css" rel="stylesheet">
  <link type="text/css" href="/resources/css/container.modal.css" rel="stylesheet">
  <link href="/favicon.ico" rel="shortcut icon">

  <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="/resources/js/extensions.jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="/resources/js/extensions.underscore-min.js"></script>
  <script type="text/javascript" src="/resources/js/common.js"></script>
  <script type="text/javascript" src="/resources/js/extensions.canvas-to-blob.min.js"></script>
  <script type="text/javascript" src="/resources/js/extensions.load-image.all.min.js"></script>
  <!-- <script type="text/javascript" src="/resources/js/board.index.js"></script> -->
  <script type="text/javascript" src="/resources/js/community.side.js"></script>
  <script type="text/javascript" src="/resources/js/message.send.js"></script>

<script type="text/javascript">
	$(function() {
		$('#boardListDisp').load('${path}/list/pageNum/${pageNum}');
		$('#rbdListDisp').load('${path}/replyList/bno/${board.num}');
		$('#rInsert').click(function() {
			/* var sendData = 'bno=' + frm.b.vale + '&replyer=' + frm.replyer.value + '&replytext=' + frm.replytext.value; */
			var sendData = $('#frm').serialize();
			$.post('${path}/rInsert', sendData, function(data) {
				alert("댓글이 작성되었습니다.");
				$('#rbdListDisp').html(data);
				frm.replyText.value = "";
			});
		});
	});
</script>
</head>
<body>
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
				<td colspan="2"><a href="/list/pageNum/${pageNum}"
					class="btn btn-info">게시글 목록</a> <a
					href="/updateForm/num/${freeboard.fbno }/pageNum/${pageNum}"
					class="btn btn-warning">수정</a> <a
					href="/deleteForm/num/${freeboard.fbno }/pageNum/${pageNum}"
					class="btn btn-danger">삭제</a> <a
					href="/insertForm/nm/${freeboard.fbno }/pageNum/${pageNum}"
					class="btn btn-success">답글</a></td>
			</tr>
		</table>
		<form action="" name="frm" id="frm">
			<input type="hidden" name="bno" value="${freeboard.fbno }" />
			<table class="table table-hover">
				<caption>댓글 작성</caption>
				<!-- 회원 게시판은 로그인한 사람의 아이디 또는 이름 -->
				<tr>
					<td>작성자</td>
					<td><input type="text" name="reply"
						value="${freeboard.fnickname }" size="4" /></td>
				</tr>
				<tr>
					<td>댓글</td>
					<td><textarea name="replytext" id="" cols="30" rows="3"></textarea>
					</td>
					<td colspan="2"><input type="button" name="reply"
						value="댓글 입력" id="rInsert" size="4" /></td>
				</tr>
			</table>
		</form>
		<div id="rbdListDisp"></div>
		<div id="boardListDisp"></div>
	</div>
	<article>
		<a class="article"><img src="https://cf-fpi.everytime.kr/0.png"
			class="picture large">
		<div class="profile">
				<h3 class="large">익명</h3>
				<time class="large">11/10 11:11</time>
			</div>
			<ul class="status">
				<li class="messagesend" data-modal="messageSend"
					data-article-id="151818549" data-is-anonym="1">쪽지</li>
				<li class="abuse">신고</li>
			</ul>
			<hr>
			<h2 class="large"></h2>
			<p class="large">
				경민아 힘내자<br>경민아 힘내자
			</p>
			<ul class="status">
				<li title="공감" class="vote">1</li>
				<li title="댓글" class="comment">2</li>
				<li title="스크랩" class="scrap">0</li>
			</ul>
			<hr>
			<input type="hidden" name="151818549_comment_anonym" value="0"></a>
		<div class="comments" style="display: block;">
			<article class="parent">
				<img src="https://cf-fpi.everytime.kr/0.png" class="picture medium">
				<h3 class="medium">익명1</h3>
				<ul class="status">
					<li class="childcomment">대댓글</li>
					<li class="commentvote">공감</li>
					<li class="messagesend" data-modal="messageSend"
						data-comment-id="715965670" data-is-anonym="1">쪽지</li>
					<li class="abuse">신고</li>
				</ul>
				<hr>
				<p class="large">경민아 힘내자</p>
				<time class="medium">11/10 11:11</time>
				<ul class="status commentvotestatus">
					<li class="vote commentvote" style="display: list-item;">1</li>
				</ul>
			</article>
			<article class="parent">
				<img src="https://cf-fpi.everytime.kr/0.png" class="picture medium">
				<h3 class="medium">익명1</h3>
				<ul class="status">
					<li class="childcomment">대댓글</li>
					<li class="commentvote">공감</li>
					<li class="messagesend" data-modal="messageSend"
						data-comment-id="716298159" data-is-anonym="1">쪽지</li>
					<li class="abuse">신고</li>
				</ul>
				<hr>
				<p class="large">경민아 힘내자</p>
				<time class="medium">11/10 11:11</time>
				<ul class="status commentvotestatus">
					<li class="vote commentvote" style="display: none;">0</li>
				</ul>
			</article>
			<form class="writecomment">
				<input type="text" name="text" maxlength="300"
					placeholder="댓글을 입력하세요." class="text">
				<ul class="option">
					<li title="익명" class="anonym"></li>
					<li title="완료" class="submit"></li>
				</ul>
				<div class="clearBothOnly"></div>
			</form>
		</div>
	</article>
</body>
</html>



