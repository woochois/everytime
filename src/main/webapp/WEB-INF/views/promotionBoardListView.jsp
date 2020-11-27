<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에브리타임</title>

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
		$('#promotionReplyListDisp').load(
				'/promotionReplyList/pbno/${promotionboard.pbno}/pageNum/${pageNum}');
		
		$('#deleteBtn').click(function() {
			alert("삭제하시겠습니까?");			
		});
		
		$('#prInsert').click(function() {
			var sendData = $('#prm').serialize()+"&pageNum=${pageNum}";
			$.post('/prInsert', sendData, function(data) {
				alert('댓글이 작성 되었습니다');
				$('#promotionReplyListDisp').html(data);
				
				prm.prcontents.value = "";
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
			window.location.href = "/prRec";
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
					<li><a href="/promotionBoardList" data-id="367503">홍보게시판</a></li>
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
				<td>${promotionboard.ptitle }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${promotionboard.pnickname }</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${promotionboard.preadcount }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><pre>${promotionboard.pcontents }</pre></td>
			</tr>
			<tr>
				<td>댓글수</td>
				 <td>${promotionboard.pcommentCount }</td>
			</tr>
			<tr>
				<td>추천수</td>
				<td>${promotionboard.precommendation}</td>
			</tr>
			<tr>
				<td colspan="2"><a href="/promotionBoardList" class="btn btn-info">게시글
						목록</a> <c:if test="${ member.nickname == promotionboard.pnickname }">
						<a
							href="/promotionBoardUpdateForm/pbno/${promotionboard.pbno }/pageNum/${pageNum}"
							class="btn btn-warning">수정</a>
						<a
							href="/promotionBoardDelete/pbno/${promotionboard.pbno }/pageNum/${pageNum}"
							class="btn btn-danger" id="deleteBtn">삭제</a>
					</c:if>
					
					
					<form action="/prRec/pbno/${promotionboard.pbno}/pageNum/${pageNum}" id="recform" >
						<input type="hidden" name="prbno" value="${promotionboard.pbno}" />
						<button type="submit" id="recbutton"></button>
					</form>
					</td>
					
			</tr>
		</table>

		<!-- 댓글 작성 폼 -->
		<form action="" name="prm" id="prm">
			<input type="hidden" name="prbno" value="${promotionboard.pbno }" />
			<h3>댓글 작성</h3>
			<!-- member.id -->
					<input type="hidden" name="prnickname" value="${member.nickname}" />
			<table class="table table-hover">						
				<tr>
					<td>댓글</td>
					<td><textarea name="prcontents" id="" cols="30" rows="3"></textarea>
					</td>
					<td colspan="2">
						<!-- <input type="button" value="댓글 입력" id="frInsert" size="4" /></td> -->
						<input type="button" value="댓글 입력" id="prInsert" size="4" />
					</td>
				</tr>
			</table>
		</form>
		<div id="promotionReplyListDisp"></div>
	</div>

	
</body>
</html>