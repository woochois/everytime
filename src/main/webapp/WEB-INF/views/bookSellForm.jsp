<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 판매 상세 페이지</title>
  
</head>
<body>
<c:forEach var="booklist" items="${booklist}">
    <div class="container">
    	<table>
    		<tr>
    			<td>${member.nickname}</td>
    		</tr>
    		<tr>
    			<td>${booklist.title}</td>
    		</tr>
    		<tr>
    			<td>${booklist.authors}</td>
    		</tr>
    		<tr>
    			<td>${booklist.publisher}</td>
    		</tr>
    		<tr>
    			<td>${booklist.price}</td>
    		</tr>
    		<tr>
    			<td>${booklist.translators}</td>
    		</tr>
    	</table> 
    </div>
</c:forEach>
</body>
</html>