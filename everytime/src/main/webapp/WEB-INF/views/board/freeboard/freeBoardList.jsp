<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에브리타임</title>

<meta name="referrer" content="origin">
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
<meta name="robots" content="noindex">
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



<script type="text/javascript" async="" src="/resources/js/analytics.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.underscore-min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.canvas-to-blob.min.js"></script>
<script type="text/javascript"
	src="/resources/js/extensions.load-image.all.min.js"></script>
<script type="text/javascript" src="/resources/js/board.index.js"></script>
<script type="text/javascript" src="/resources/js/community.side.js"></script>
<script type="text/javascript" src="/resources/js/message.send.js"></script>

</head>
<body>
	<nav>
		<div class="wrap">
			<div id="logo">
				<a href="main"><img src="/resources/images/nav.logo.png"></a>
				<p>
					<span class="name multiple">에브리타임</span><span class="subname">일산학원</span>
				</p>
			</div>
			<div id="account">
				<a href="#" title="쪽지함" class="icon message">쪽지함</a> <a
					href="/mypage" title="내 정보" class="icon my">내 정보</a> <input
					type="hidden" id="userUserid" value="iopqwewkd"> <input
					type="hidden" id="userSchool" value="84"> <input
					type="hidden" id="userCampus" value="113">
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
					<li><a href="#" data-id="389131" class="new active">자유게시판</a></li>
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
	<div id="container" class="article">
		<input type="hidden" id="isUser" value="1"> <input
			type="hidden" id="boardId" value="389131">
		<aside class="none">
			<div class="title">
				<a class="hamburger"></a>
				<h1>
					<a href="/board/freeboard/freeBoardList">자유게시판</a>
				</h1>
			</div>
		</aside>
		<div class="wrap title">
			<h1>
				<a href="/board/freeboard/freeBoardList">자유게시판</a>
			</h1>
			<hr>
		</div>
		<div class="wrap articles">

			<!-- <a id="writeArticleButton">새 글을 작성해주세요!</a> -->

			<form action="/board/freeboard/insert">

				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">

					<div class="panel panel-default">
						<div class="panel-heading" role="tab">

							<a role="button" data-toggle="collapse" data-parent="#accordion"
								href="#newArticle" aria-expanded="false">새 글을 작성해주세요!</a>
						</div>
						<div id="newArticle" class="panel-collapse collapse"
							role="tabpanel">
							<div class="panel-body">
								<div>
									<input type="hidden" name="fnickname" value="${nickname}" /> <br />
									<input type="text" name="ftitle" required="required"
										autofocus="autofocus" placeholder="제목 입력" />
								</div>
								<div>
									<textarea name="fcontents" cols="30" rows="10"
										placeholder="내용 입력"></textarea>
								</div>
								<div>
									<!-- <input type="button" value="확인" id="insert"/> -->
									<input type="submit" value="확인" />
								</div>
							</div>
						</div>
					</div>
				</div>

			</form>


			<c:forEach var="freeBoardList" items="${freeBoardList}">
				<article>
					<a class="article" href="#">
						<h2 class="medium">${freeBoardList.ftitle }</h2>
						<p class="small">${freeBoardList.fcontents }</p> <time
							class="small">${freeBoardList.fregdate }</time>
						<h3 class="small">${freeBoardList.fnickname }</h3>
						<ul class="status">
							<li title="공감" class="vote">${freeBoardList.frecommendation }</li>
							<li title="댓글" class="comment">0</li>
						</ul> <input type="hidden" name="151657900_comment_anonym" value="0">
					</a>
					<div class="comments"></div>
				</article>
			</c:forEach>

			<div class="clearBothOnly"></div>
			<!-- search -->
			<form id="/freeBoardList/pageNum/1" method="get">
				<select name="search">
					<c:forTokens var="item" items="all,fnickname,ftitle,fcontents"
						delims="," varStatus="i">
						<c:if test="${freeboard.search==item }">
							<option value="${item }" selected="selected">${tit[i.index]}</option>
						</c:if>
						<c:if test="${freeboard.search!=item }">
							<option value="${item }">${tit[i.index]}</option>
						</c:if>
					</c:forTokens>
				</select>
				<%-- <input type="submit" name="keyword" placeholder="검색어를 입력하세요." class="text" value="${freeboard.keyword }"> --%>
				<input type="text" name="keyword" placeholder="검색어를 입력하세요."
					value="${freeboard.keyword }"> <input type="submit"
					value="확인">
			</form>
			<!-- pagenation -->
			<div align="center">
				<ul class="pagination">
					<c:if test="${pb.startPage > pb.pagePerBlock}">
						<li><a
							href="${path}/freeBoardList/pageNum/1?search=${freeboard.search}&keyword=${freeboard.keyword}">
								<span class="glyphicon glyphicon-backward"></span>
						</a></li>
						<li><a
							href="${path}/freeBoardList/pageNum/${pb.startPage-1}?search=${freeboard.search}&keyword=${freeboard.keyword}">
								<span class="glyphicon glyphicon-triangle-left"></span>
						</a></li>
					</c:if>
					<c:forEach var="i" begin="${pb.startPage}" end="${pb.endPage}">
						<c:if test="${i==pb.currentPage}">
							<li class="active"><a
								href="${path}/freeBoardList/pageNum/${i}?search=${freeboard.search}&keyword=${freeboard.keyword}">${i}</a></li>
						</c:if>
						<c:if test="${i!=pb.currentPage}">
							<li><a
								href="${path}/freeBoardList/pageNum/${i}?search=${freeboard.search}&keyword=${freeboard.keyword}">${i}</a></li>
						</c:if>
					</c:forEach>
					<c:if test="${pb.endPage < pb.totalPage }">
						<li><a
							href="${path}/freeBoardList/pageNum/${pb.endPage+1}?search=${freeboard.search}&keyword=${freeboard.keyword}">
								<span class="glyphicon glyphicon-triangle-right"></span>
						</a></li>
						<li><a
							href="${path}/freeBoardList/pageNum/${pb.totalPage}?search=${freeboard.search}&keyword=${freeboard.keyword}">
								<span class="glyphicon glyphicon-forward"></span>
						</a></li>
					</c:if>
				</ul>				
			</div>
			
		</div>

		<hr>
		<div class="rightside">
			<div class="card">
				<div class="board">
					<h3>
						<a>실시간 인기 글</a>
					</h3>
					<a class="article" href="https://everytime.kr/389131/v/151586216"><p
							class="title">예과 2학년</p>
						<p class="small">화이팅!</p>
						<h4>자유게시판</h4>
						<ul class="status">
							<li class="vote active">7</li>
							<li class="comment active">9</li>
						</ul>
						<hr></a><a class="article"
						href="https://everytime.kr/389131/v/151593097"><p
							class="title">타임 매직!</p>
						<p class="small">
							한달 기념 QnA를 할까 생각중이라고 저번에 글을 썼더니 그 글에 질문을 하시는 분이... 꽤 있더라구요...<br>이번엔
							진짜 한달 기념 QnA
						</p>
						<h4>자유게시판</h4>
						<ul class="status">
							<li class="vote active">4</li>
							<li class="comment active">9</li>
						</ul>
						<hr></a>
				</div>
			</div>
			<div class="card">
				<div class="board">
					<h3>
						<a href="https://everytime.kr/hotarticle">HOT 게시물<span>더
								보기</span></a>
					</h3>
					<a class="list" href="https://everytime.kr/389220/v/151511635"><time>11/07
							02:32</time>
						<p>스펙타클 안가요</p>
						<hr></a><a class="list"
						href="https://everytime.kr/389131/v/151458036"><time>11/06
							18:29</time>
						<p>학교가 발전하려면 근처 원룸들 다 탱크로 밀어버려야함</p>
						<hr></a><a class="list"
						href="https://everytime.kr/389131/v/151335406"><time>11/05
							19:09</time>
						<p>간호대 부심의 실체가 뭔지 알아?</p>
						<hr></a><a class="list"
						href="https://everytime.kr/389131/v/151212555"><time>11/04
							21:24</time>
						<p>ㄹㅇ</p>
						<hr></a>
				</div>
			</div>
			<div class="card">
				<div class="board">
					<h3>
						<a href="https://everytime.kr/bestarticle">BEST 게시판<span>더
								보기</span></a>
					</h3>
				</div>
			</div>
		</div>
		<form id="abuseForm" class="modal">
			<a title="닫기" class="close"></a>
			<h3>신고 사유 선택</h3>
			<ul>
				<li><a data-reason="1">게시판 성격에 부적절함</a></li>
				<li><a data-reason="2">욕설/비하</a></li>
				<li><a data-reason="3">음란물/불건전한 만남 및 대화</a></li>
				<li><a data-reason="4">상업적 광고 및 판매</a></li>
				<li><a data-reason="5">유출/사칭/사기</a></li>
				<li><a data-reason="6">낚시/놀람/도배</a></li>
				<li><a data-reason="7">정당/정치인 비하 및 선거운동</a></li>
			</ul>
		</form>
		<form id="manageMoimForm" class="modal">
			<a title="닫기" class="close"></a>
			<h3>게시판 설정</h3>
			<p>
				<label>소개</label> <input type="text" name="info" class="text">
			</p>
			<p class="hide">
				<label>인기 글 금지</label> <input type="checkbox"
					id="manageMoimForm_is_not_selected_hot_article"
					name="is_not_selected_hot_article"><label
					for="manageMoimForm_is_not_selected_hot_article" class="checkbox">글이
					공감을 받아도 인기 글 및 HOT 게시물에 선정되지 않음</label>
			</p>
			<input type="button" value="게시판 양도" class="button light floatLeft">
			<input type="button" value="게시판 삭제" class="button light floatLeft">
			<input type="submit" value="수정" class="button">
		</form>
		<form id="transferMoimForm" class="modal">
			<a title="닫기" class="close"></a>
			<h3>게시판 양도</h3>
			<p>
				<label>양도인 비밀번호</label> <input type="password"
					name="transferer_password" class="text">
			</p>
			<p>
				<label>피양도인 아이디</label> <input type="text" name="transferee_userid"
					class="text">
			</p>
			<input type="submit" value="양도 요청" class="button">
		</form>
		<form id="attachThumbnailForm" class="modal">
			<a title="닫기" class="close"></a>
			<h3>첨부된 이미지</h3>
			<p>
				<label>설명 추가</label>
				<textarea name="caption" class="text"
					placeholder="이 이미지에 대한 설명을 입력하세요."></textarea>
			</p>
			<input type="button" value="첨부 삭제" class="button light floatLeft">
			<input type="submit" value="설명 저장" class="button">
		</form>
		<form id="messageSend" class="modal">
			<a title="닫기" class="close"></a>
			<h3>쪽지 보내기</h3>
			<p>
				<textarea name="message" class="text" placeholder="내용을 입력해주세요."></textarea>
			</p>
			<input type="submit" value="전송" class="button">
		</form>
	</div>
	<div id="bottom">
		<ul class="links">
			<li><a href="#">이용약관</a></li>
			<li><a href="#">개인정보처리방침</a></li>
			<li><a href="#">커뮤니티이용규칙</a></li>
			<li><a href="#">공지사항</a></li>
			<li><a href="#">문의하기</a></li>
			<li class="copyright"><a href="#">© 에브리타임</a></li>
		</ul>
	</div>


</body>
</html>