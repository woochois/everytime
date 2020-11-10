<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function frDelete(frbno, frrno) {
		var sendData = 'frbno/' + frbno + '/frrno/' + frrno;
		$.post('$/frDelete', sendData, function(data){
			alert("삭제되었습니다.");
		});
	}
	function frUpdate(frbno, frrno) {
		/* 데이터를 읽을 때, input/textarea라는 form 형식 val() 
		td/span 같이 form 형식이 아닐 때는 text() */
		
		var txt = $('#td_' + frrno).text();
		// 읽은 글을 편집할 수 있도록 textarea 에 넣어야 한다.
		$('#td_' + frrno).html('<textarea rows="30" cols="3" id="rt">' 
				+ txt + '</textarea>');
		$('#btn_' + frrno).html('<input type="button" onclick="up(' 
				+ frbno + ',' + frrno + ')" class=btn btn-sm btn-danger" value="확인">'
				+ '<input type="button"
				+ 'class="btn btn-sm btn-info" value="취소"/>');
	}
	function up(frbno, frrno){
		var sendData = 'frcontents/' + $('#rt').val() + '/frbno/' + frbno + '/frrno/' + frrno;
		$.post('/frUpdate', sendData, function(data) {
			alert('수정되었습니다.');
		});
	}
</script>
</head>
<body>
   <c:if test="${not empty replyList }">
      <table class="table table-striped">
         <caption>댓글 목록</caption>
         <tr>
            <td>작성자</td>
            <td>내용</td>
            <td>수정일</td>
         </tr>
         <c:forEach var="fr" items="${frsList }">
            <c:if test="${fr.del == true}">
               <tr>
                  <td colspan="4">삭제된 댓글입니다.</td>
               </tr>
            </c:if>
            <c:if test="${fr.del != true}">
               <tr>
                  <td>${fr.frnickname }</td>
                  <td id="td_${fr.frrno}">${fr.frrcontents }</td>
                  <td>${fr.frregdate }</td>
                  <td id="btn_${fr.frrno }">
                     <!-- 원래는 댓글 작성자와 로그인 회원의 아이디가 같으면 --> 
                     <c:if test="${freeboard.frnickname == freeboard.fnickname}">
                        <input type="button" class="btn btn-warning btn-sm"
                           onclick="frUpdate(${fr.frbno}, ${fr.frrno})" value="수정" />
                        <input type="button" class="btn btn-danger btn-sm"
                           onclick="frDelete(${fr.frbno}, ${fr.frrno})" value="삭제" />
                     </c:if>
                  </td>
               </tr>
            </c:if>
         </c:forEach>
      </table>
   </c:if>
</body>
</html>