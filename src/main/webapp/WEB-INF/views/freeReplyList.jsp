<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function frDelete(frbno, frrno){
		var sendData = 'fbno=' + frbno + '&frrno=' + frrno + '&pageNum=${pageNum}';
		$.post('/frDelete', sendData, function(data){
			alert("삭제되었습니다");
			/* $('#freeReplyListDisp').html(data); */
			$('#freeReplyListDisp').load(window.location.herf+"#freeReplyListDisp");
		});				
		
	}
	setInterval(function(){
		  $(".blinkEle").toggle();
		}, 600);
	
</script>

<style>
#frecbutton {
	background: url( "/resources/images/recommend.png" ) no-repeat;
	border: none;
	width: 35px;
	height: 35px;
	cursor: pointer;
	


#frecform{
	display:inline-block;
	white-space:nowrap;
}

} 
</style>
	<script>
		function frecFunc() {
			alert("추천");
			window.location.href = "/frrRec";
		};
	</script>


</head>
<body>
	<div class="container">
		<%-- <c:if test="${not empty frList }"> --%>
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
			<c:forEach var="freereply" items="${frList}">
				<c:if test="${freereply.frdel==true }">
					<tr>
						<td colspan="5" align="center"><strong class="blinkEle">삭제된
								댓글입니다</strong></td>
					</tr>
				</c:if>
				<c:if test="${freereply.frdel != true }">
					<tr>
						<td>${freereply.frnickname}</td>
						<td>${freereply.frcontents }</td>
						<td>${freereply.frregdate }</td>
						<td>
							<form action="/frrRec/fbno/${fbno}/pageNum/${pageNum}" id="frecform">
								<input type="hidden" name="frrpno" value="${freereply.frrno}" />
								<input type="hidden" name="fbno" value="${freereply.frbno}" />
								<button type="submit" id="frecbutton"></button>
							</form>
						</td>
						<td>${freereply.frrecommendation}</td>
						<td>
							<!-- 댓글 작성자와 로그인 회원의 닉네임이 같으면 --> <c:if
								test="${freereply.frnickname==member.nickname}">
								<%-- <a href="/freeReplyDelete/frbno/${freereply.frbno }/frrno/${freereply.frrno }/pageNum/${pageNum}"
										class="btn btn-danger" id="">삭제</a> --%>
								<input type="button" class="btn btn-danger btn-sm"
									onclick="frDelete(${freereply.frbno},${freereply.frrno})"
									value="삭제">
							</c:if>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<%-- </c:if> --%>

	</div>
</body>
</html>