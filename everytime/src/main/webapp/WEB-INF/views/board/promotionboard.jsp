<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0027)https://everytime.kr/367769 -->
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에브리타임</title>

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
<link type="text/css" href="/resources/css/common.partial.css"
	rel="stylesheet">
<link type="text/css" href="/resources/css/container.article.css"
	rel="stylesheet">
<link type="text/css" href="/resources/css/container.community.css"
	rel="stylesheet">
<link type="text/css" href="/resources/css/container.modal.css"
	rel="stylesheet">
<link href="https://everytime.kr/favicon.ico" rel="shortcut icon">
<script type="text/javascript" async="" src="/resources/js/analytics.js"></script>
<script type="text/javascript"
	src="./promotionboard_files/extensions.jquery-1.10.2.min.js"></script>
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
<body style="">
	<nav>
		<div class="wrap">
			<div id="logo">
				<a href="#"><img src="/resources/images/nav.logo.png"></a>
				<p>
					<span class="name multiple">에브리타임</span><span class="subname">일산학원</span>
				</p>
			</div>
			<div id="account">
				<a href="#" title="쪽지함" class="icon message">쪽지함</a> <a href="#"
					title="내 정보" class="icon my">내 정보</a> <input type="hidden"
					id="userUserid" value="${member.id }"> <input type="hidden"
					id="userSchool" value="345"> <input type="hidden"
					id="userCampus" value="379">
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
			<ul>
				<li><a href="#" data-id="393887" class="new">자유게시판</a></li>
				<li><a href="#" data-id="260228" class="new">비밀게시판</a></li>
				<li><a href="#" data-id="412760">새내기게시판</a></li>
				<li><a href="#" data-id="260230">정보게시판</a></li>
				<li><a href="promotionboard" data-id="367769" class="active">홍보게시판</a></li>
				<li><a href="#" data-id="419094">동아리·학회</a></li>
				<li><a href="#" class="search">게시판 찾기</a></li>
			</ul>
			<hr>
		</div>
		<input type="hidden" id="communityCampusId" value="379">
	</div>
	<div id="container" class="article">
		<input type="hidden" id="isUser" value="1"> <input
			type="hidden" id="boardId" value="367769">
		<aside class="none">
			<div class="title">
				<a class="hamburger"></a>
				<h1>
					<a href="promotionboard">홍보게시판</a>
				</h1>
			</div>
		</aside>
		<div class="wrap title">
			<h1>
				<a href="promotionboard">홍보게시판</a>
			</h1>
			<hr>
		</div>
		<div class="wrap categories">
			<div class="category selected">
				<span>전체</span>
			</div>
			<div class="category">
				<span>강연·행사</span>
			</div>
			<div class="category">
				<span>알바·과외</span>
			</div>
			<div class="category">
				<span>주변상권</span>
			</div>
			<div class="category">
				<span>설문조사</span>
			</div>
			<div class="category">
				<span>기타</span>
			</div>
		</div>
		<div class="wrap articles">
			<a id="writeArticleButton">새 글을 작성해주세요!</a>
			<article>
				<a class="article" href="https://everytime.kr/367769/v/148162337">
				<div class="attachthumbnail"></div>
					<h2 class="medium">서울시에서 진행하는 MBTI모임</h2>
					<p class="small">안녕하세요 청교과 1학년 정성원입니다. 저는 MBTI에 관심이 많아 친구들과
						이야기하던중 mbti에 관해 한 가지 재미있는 아이디어가 떠올랐습니</p> <span class="category small">강연·행사</span>
					<time class="small">10/17 21:49</time>
					<h3 class="small">711편돌이</h3>
					<ul class="status">
						<li class="attach">2</li>
						<li title="공감" class="vote">0</li>
						<li title="댓글" class="comment">1</li>
					</ul>
					<hr> <input type="hidden" name="148162337_comment_anonym"
					value="0"></a>
				<div class="comments"></div>
			</article>
			<article>
				<a class="article" href="https://everytime.kr/367769/v/136358389">
				<div class="attachthumbnail"></div>
					<h2 class="medium">제주청년농부와 함께 영농창업 준비해요:)</h2>
					<p class="small">안녕하세요! 건강한 농촌을 만드는 제주청년농부 양정민이라고 합니다. 저희
						제주청년농부는 제주 농어촌에서 지역 자원으로 청년들의 다양한 재능을 활</p> 
						<span class="category small">기타</span> <time class="small">08/12 14:48</time>
					<h3 class="small">제주청년농부정민</h3>
					<ul class="status">
						<li class="attach">9</li>
						<li title="공감" class="vote">0</li>
						<li title="댓글" class="comment">0</li>
					</ul>
					<hr> 
					<input type="hidden" name="136358389_comment_anonym" value="0"></a>
				<div class="comments"></div>
			</article>
			<article>
				<a class="article" href="https://everytime.kr/367769/v/119573834"><div
						class="attachthumbnail"
						style="background-image: url(&quot;https://cf-ea.everytime.kr/attach_thumbnail/193/25731465/everytime-web-1588600149748.jpg?Expires=1604650115&amp;Key-Pair-Id=APKAICU6XZKH23IGASFA&amp;Signature=HW~vC6m6Qo8~1Wa3lMeTDRZh90XyEQ6wRFtOkJb7Wd-UfsaLsoBNQfD4hCNpNpqLQTB6jJ6VY1q2SV5yC6Ou-h99przQnmsKNp2F3sezlCUy2J9djhOCT0Y2oV88qTZqTkat65KgzMj6Yd5ibnfpRIf~deFtARWn-dyK~wFjAkTMKhY2HpmmVetU-jbbj0CIQhqA9~AfoQrUSSy6G8R3AnhTBUoPGe0Ad24Uloy-fK9W1PH4kVRHYWkoJ4c-TsTjvVsXh~cD4pPr55~kGnxq-KzuQVKi1Vm44FMHREHSdjVQ2Q5SIV5oNz02TXvCbjL~xlOp9tvmlXkw-yj~N2N58w__&quot;);"></div>
					<h2 class="medium">연구참여자 모집 (만원 상당 상품권 증정)</h2>
					<p class="small">연구 참여자 모집 공고문 본 연구의 실험은 1회의 오프라인 실험과 1회의 온라인
						설문으로 구성되어 있고 제공되는 자료를 본인 스마트폰으로 접속하</p> <time class="small">05/04
						22:50</time>
					<h3 class="small">익명</h3>
					<ul class="status">
						<li class="attach">1</li>
						<li title="공감" class="vote">0</li>
						<li title="댓글" class="comment">4</li>
					</ul>
					<hr> <input type="hidden" name="119573834_comment_anonym"
					value="0"></a>
				<div class="comments"></div>
			</article>
			<article>
				<a class="article" href="https://everytime.kr/367769/v/107087186"><div
						class="attachthumbnail"
						style="background-image: url(&quot;https://cf-ea.everytime.kr/attach_thumbnail/112/23004925/everytime-web-1583221179627.jpg?Expires=1604650115&amp;Key-Pair-Id=APKAICU6XZKH23IGASFA&amp;Signature=nZsfhCbhwLJuLgIN4aNW8yH8XcvT~36gH6-LGsTNKDporWQSCCd6WhJ0vYIAT8gdrqULDr9xVAnrNxFPrLi-AWxCHX0QVs1fyqx-SdCIOMQF4OhqSUoyrQ4YkcUm9al5~1OROw5sBzH9oKHHI5MAyMxXJuBgTF~W3JF4TA~sfJE1qD3fMi-FmzrYVq7ZFS~YX9eROnO-c~CF0H-w4w21qhaZuz1zcAzXzhVi~UCEx3xzw0BK-fTdYgApl1rsmaTjEk7Hs7JNwo1B1GZS~Vr0LRJh9b8rjK9e1h40mdJDDhfp~8Vxr0FVnWRuAG1UmfZWHSnQN0dy2pbEtabdPpT4Og__&quot;);"></div>
					<h2 class="medium">번역기 모음 사이트를 만들었어요.</h2>
					<p class="small">안녕하세요. 저는 컴공과라 변수명을 정할 때 번역기를 자주 사용했었어요. 그런데
						구글, 네이버 같은 번역 사이트를 모두 키고 번역하고 비교하는게</p> <span class="category small">기타</span>
					<time class="small">03/03 16:40</time>
					<h3 class="small">개발이취미</h3>
					<ul class="status">
						<li class="attach">1</li>
						<li title="공감" class="vote">0</li>
						<li title="댓글" class="comment">9</li>
					</ul>
					<hr> <input type="hidden" name="107087186_comment_anonym"
					value="0"></a>
				<div class="comments"></div>
			</article>
			<article>
				<a class="article" href="https://everytime.kr/367769/v/75477209"><h2
						class="medium">서울지역 불어불문학과 수강생 스터디</h2>
					<p class="small">https://open.kakao.com/o/gfZ4vCob 19학번 새내기 혹은
						1학년 1학기 수업을 듣는 학우분들 위에 링크에 들어오셔서 함</p> <span class="category small">설문조사</span>
					<time class="small">19/05/09 10:30</time>
					<h3 class="small">hojing98</h3>
					<ul class="status">
						<li title="공감" class="vote">0</li>
						<li title="댓글" class="comment">1</li>
					</ul>
					<hr> <input type="hidden" name="75477209_comment_anonym"
					value="0"></a>
				<div class="comments"></div>
			</article>
			<article>
				<a class="article" href="https://everytime.kr/367769/v/56576623"><div
						class="attachthumbnail"
						style="background-image: url(&quot;https://cf-ea.everytime.kr/attach_thumbnail/234/10947763/mobile_upload_1541753589.jpg?Expires=1604650115&amp;Key-Pair-Id=APKAICU6XZKH23IGASFA&amp;Signature=C4zNuhe7YsrdkM2iBoE00iOXSAE6NtB43BxBI3U-vbI4sipo0DSCg43Hl15NFRw71IbXc-pEtL40m-nUpDpbemVmxnN0arolfsE-2V6NcTee0pizGfMBqwmrvA~EFz9FZTbGjuG4MBukiPAs71Ag0avcjJLgo7o3pReHzrG-yGJ2nwYggoqv3JULKOOoLhSGWj9koKOteCNzsnpaREPaX4YiKRrcgBMQ5u~ZA7z6PdD6NvG58UJ6KP9g87FVcYbvvBrqPXr3VliKC0VgVjXXkIPT6euJMO2UpOY0dB8e~p~dI0GlWrG6I9z3ANwJ0bOpbP4Bp74NYs~P2GSnq73xOw__&quot;);"></div>
					<h2 class="medium">대학생 공연예술팀 1기 공연팀원 모집</h2>
					<p class="small">🦄 공연예술팀 4nia (포니아) 1기 모집 🦄 자세한 내용은 포스터를
						참고해주세요! 감사합니다 :) | 모집기간 | 2018.11.05 ~</p> <time class="small">18/11/09
						17:53</time>
					<h3 class="disabled small">(알수없음)</h3>
					<ul class="status">
						<li class="attach">4</li>
						<li title="공감" class="vote">0</li>
						<li title="댓글" class="comment">0</li>
					</ul>
					<hr> <input type="hidden" name="56576623_comment_anonym"
					value="0"></a>
				<div class="comments"></div>
			</article>
			<article>
				<a class="article" href="https://everytime.kr/367769/v/49006192"><div
						class="attachthumbnail"
						style="background-image: url(&quot;https://cf-ea.everytime.kr/attach_thumbnail/744/8880608/mobile_upload_1532403179.jpg?Expires=1604650115&amp;Key-Pair-Id=APKAICU6XZKH23IGASFA&amp;Signature=s~RhWgQpzK886ZC-9FNJFssYnfJ8C3ZYvFTNEFqQCq0pFRiJH5GItkEwqhUh4SpQbHxNF45VoWoPcxNTEOnbhpVoZapCzeTRQE-Xnikun47DONmeeRBoSuCPjeSXlC-Ub6SQxN3tKlp6ux6xO-4KQ0urj5g-JJ8MnfjgWYDs63MPwApx3EOKAZe4XDDo9ny6NkKmvPrwQAm9ULMnzsX2F2CkxpK4G3LN8-r3RCjddEudjGgTWluX7H9jzrcbFJYwbzmktBtqpK~Wg~6qt-jU8JhbJMPO-5MyAmb4SDD0uBK~AAgYsJwD2zOOsPos2IiNKuyp04jjBOSd~OfnO~EHOg__&quot;);"></div>
					<h2 class="medium">봉사활동 동아리 초아 참여인원 모집</h2>
					<p class="small">안녕하세요! 연합봉사동아리 초아(CHOA)에서 9기를 모집합니다. 모집인원 -
						20대(18학번부터 시조새까지)활동가능 정기봉사 - 매월 첫째주</p> <time class="small">18/07/24
						12:34</time>
					<h3 class="disabled small">(알수없음)</h3>
					<ul class="status">
						<li class="attach">6</li>
						<li title="공감" class="vote">0</li>
						<li title="댓글" class="comment">1</li>
					</ul>
					<hr> <input type="hidden" name="49006192_comment_anonym"
					value="0"></a>
				<div class="comments"></div>
			</article>
			<article>
				<a class="article" href="https://everytime.kr/367769/v/41489772"><h2
						class="medium">(서울)학습자원봉사자 구합니다.</h2>
					<p class="small">안녕하세요. 청소년교육학과를 졸업한 14학번 조애란입니다. 서울 혜화동에 있는
						청소년 무료공부방 "혜성러빙스쿨"의 학습자원봉사자를 구하고 있습</p> <time class="small">18/04/03
						20:54</time>
					<h3 class="disabled small">(알수없음)</h3>
					<ul class="status">
						<li title="공감" class="vote">0</li>
						<li title="댓글" class="comment">0</li>
					</ul>
					<hr> <input type="hidden" name="41489772_comment_anonym"
					value="0"></a>
				<div class="comments"></div>
			</article>
			<div class="clearBothOnly"></div>
			<div class="pagination">
				<form id="searchArticleForm" class="search">
					<select name="search_type"><option value="4">전체</option>
						<option value="3">해시태그</option>
						<option value="2">글 제목</option>
						<option value="1">글 내용</option></select><input name="keyword"
						placeholder="검색어를 입력하세요." class="text">
				</form>
				<a href="https://everytime.kr/367769/p/2" class="next">다음</a>
			</div>
		</div>
		<hr>
		<div class="rightside">
			<div class="card">
				<div class="board">
					<h3>
						<a href="#">HOT 게시물<span>더 보기</span></a>
					</h3>
					<a class="list" href="https://everytime.kr/260228/v/123216546"><time>05/25
							04:59</time>
						<p>교수님 전공책 안 쓸거면 왜 사라고 한거에요...</p>
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
	<script type="text/javascript">
		var _serverTime = 1604649215105;
		var _clientTime = new Date().getTime();
		var _diffTime = _clientTime - _serverTime;
		var _apiServerUrl = 'https://api.everytime.kr';
	</script>
	<script async="" src="/resources/js/js"></script>
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