<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center">
		<h2 class="text-primary">게시글 수정</h2>
		<form action="/freeBoardUpdate">
			<input type="text" name="fbno" value="${fbno }" />
			<input type="text" name="pageNum" value="${pageNum }" />
			<table class="table table-hover table-bordered">
				<tr>
					<td>제목</td>
					<td>
						<input type="text" value="${freeboard.ftitle }" name="ftitle" required="required" autofocus="autofocus" />
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<pre>
							<textarea rows="5" cols="49" required="required" name="fcontents">${freeboard.fcontents }</textarea>
						</pre>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>