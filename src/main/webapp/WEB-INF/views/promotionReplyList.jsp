<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function prDelete(prbno, prrno){
		var sendData = 'pbno=' + prbno + '&prrno=' + prrno + '&pageNum=${pageNum}';
		$.post('/prDelete', sendData, function(data){
			alert("삭제되었습니다");			
			$('#promotionReplyListDisp').load(window.location.herf+"#promotionReplyListDisp");
		});			
	}
	
	function precFunc() {
		alert("추천");
		window.location.href = "/prrRec";
	};
	
</script>

<style>
#precbutton {
	background: url( "/resources/images/recommend.png" ) no-repeat;
	border: none;
	width: 35px;
	height: 35px;
	cursor: pointer;
	

}
#precform{
	display:inline-block;
	white-space:nowrap;
}

 
</style>
</head>
<body>
	<div class="container">
		<c:if test="${not empty prList }">
		<h3>댓글 목록</h3>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>작성자</th>
					<th>내용</th>
					<th>작성일</th>
					<th></th>
					<th>추천수</th>
					<th></th>
				</tr>
			</thead>
			<c:forEach var="promotionreply" items="${prList}">
				
				
					<tr>
						<td>${promotionreply.prnickname}</td>
						<td>${promotionreply.prcontents }</td>
						<td>${promotionreply.prregdate }</td>
						<td>
							<form action="/prrRec/pbno/${pbno}/pageNum/${pageNum}" id="precform">
								<input type="hidden" name="prrpno" value="${promotionreply.prrno}" />
								<input type="hidden" name="pbno" value="${promotionreply.prbno}" />
								<button type="submit" id="precbutton"></button>
							</form>
						</td>
						<td>${promotionreply.prrecommendation}</td>
						<td>
							<!-- 댓글 작성자와 로그인 회원의 닉네임이 같으면 --> <c:if
								test="${promotionreply.prnickname==member.nickname}">
								<a href="/promotionReplyDelete/prbno/${promotionreply.prbno }/prrno/${promotionreply.prrno }/pageNum/${pageNum}"
										class="btn btn-danger" id="">삭제</a>								
							</c:if>
						</td>
					</tr>
				
			</c:forEach>
		</table>
		</c:if>

	</div>
</body>
</html>