<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- popup -->
<script type="text/javascript">
	/* 창 크기 설정 */
	function setting(w, h) {
		var popupWidth = w;
		var popupHeight = h;

		var popupX = Math.ceil(window.screen.width - popupWidth) / 2;
		// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		var popupY = Math.ceil(window.screen.height - popupHeight) / 2;
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음

		var option = "width=" + w + ",height=" + h + ",left=" + popupX
				+ ",top=" + popupY + ",screenX=" + popupX + ",screenY="
				+ popupY + "resizable=no;";

		return option;

	}

	/* 쪽지쓰기 버튼 이벤트 */
	function sendmessagePopup() {
		var url = "myPageTab/sendmessagePopup.html";

		var newOption = setting(504, 413);

		window.open(url, "", newOption);

	}

</script>


<div style="height: 187px;">

	<table width="180px">
		<tr>
			<td style="padding-top: 5px"><a href=""
				style="font-size: 13px; color: #7d7d7d"> <img
					src="${path }/resources/images/msg.png" alt="" />쪽지함 <img
					src="${path }/resources/images/i3.jpg" alt="" />
			</a></td>
			<td align="right"><a href="javascript:sendmessagePopup();"
				style="font-size: 13px; color: #7d7d7d">쪽지쓰기</a></td>
		</tr>
	</table>

</div>