<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" href="/resources/css/common.css" rel="stylesheet">
<link type="text/css" href="/resources/css/common.partial.css"
   rel="stylesheet">
<link type="text/css" href="/resources/css/container.community.css"
   rel="stylesheet">
<link href="#" rel="shortcut icon">
<link rel="stylesheet" type="text/css"
   href="/resources/css/assets/style.css">
<script type="text/javascript" async="" src="/js/analytics.js"></script>
<script type="text/javascript"
   src="/resources/js/extensions.jquery-1.10.2.min.js"></script>
<script type="text/javascript"
   src="/resources/js/extensions.underscore-min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript" src="/resources/js/community.side.js"></script>
<script type="text/javascript" src="/resources/js/community.index.js"></script>
<script type="text/javascript" src="/resources/js/assets/sell.js"></script>

<body class="app">


   
   <form id="sell">   
   <c:forEach var="booklist" items="${booklist}">
      <div class="group group-book">
      <h2>책 정보</h2>
         <p>책 제목 : <input type="text" value="${booklist.title }" readonly/></p>
         <p>저자 : <input type="text" value="${booklist.authors}" readonly/></p>
         <p>출판사 : <input type="text" value="${booklist.publisher }" readonly/></p>
         <p> 가격 : <input type="text" value="${booklist.price }" readonly/></p>      
      <c:if test="${empty booklist.translators }">
         <p>옮긴이 : 정보없음</p>
      </c:if>
      <c:if test="${not empty booklist.translators }">
         <p>옮긴이 : <input type="text" value="${booklist.translators }" readonly/></p>
      </c:if>            
      </div>
   </c:forEach>
   </form>
   
   <form id="sell" action="/upload" enctype="multipart/form-data" method="post">   
   <div class="items">
      
      <p>${member.nickname }</p>
      <p>추가설명을 적어주세요<br />
      <textarea name="contents" rows="" cols="" placeholder="(500자 이내)" required="required"></textarea></p>
      <div class="group group-book">
      <h2>책 상태</h2>      
         <p><label for="underline">밑줄 흔적: 
         <input type="radio" name="underline" value="없음" id="underline" checked="checked"/>없음
         <input type="radio" name="underline" value="연필/샤프" id="underline"/>연필/샤프
         <input type="radio" name="underline" value="볼펜/형광펜" id="underline"/>볼펜/형광펜</label></p>
         <p><label for="writing">필기 흔적: 
         <input type="radio" name="writing" value="없음" id="writing" checked="checked"/>없음
         <input type="radio" name="writing" value="연필/샤프" id="writing"/>연필/샤프
         <input type="radio" name="writing" value="볼펜/형광펜" id="writing"/>볼펜/형광펜</label></p>
         <p><label for="cover">겉표지: 
         <input type="radio" name="cover" value="깨끗함" id="cover" checked="checked"/>깨끗함
         <input type="radio" name="cover" value="깨끗하지않음" id="cover"/>깨끗하지않음</label></p>
         <p><label for="nameentry">이름 기입: 
         <input type="radio" name="nameentry" value="없음" id="nameentry" checked="checked"/>없음
         <input type="radio" name="nameentry" value="있음" id="nameentry"/>있음</label></p>
         <p><label for="pagecolor">페이지 변색: 
         <input type="radio" name="pagecolor" value="없음" id="pagecolor" checked="checked"/>없음
         <input type="radio" name="pagecolor" value="있음" id="pagecolor"/>있음</label></p>
         <p><label for="pagestate">페이지 훼손: 
         <input type="radio" name="pagestate" value="없음" id="pagestate" checked="checked"/>없음
         <input type="radio" name="pagestate" value="있음" id="pagestate"/>있음</label></p>
         <p><input type="text" name="sellprice" placeholder="판매 가격 입력"/></p>
         <p><input type="file" name="file" multiple="multiple"/></p>
      <h2>거래 수단</h2>
         <p><label for="pagestate">택배: 
         <input type="radio" name="delivery" value="가능" id="delivery" checked="checked"/>가능
         <input type="radio" name="delivery" value="불가능" id="delivery"/>불가능</label></p>
         <p><label for="pagestate">직거래: 
         <input type="radio" name="directdeal" value="가능" id="directdeal" checked="checked"/>가능
         <input type="radio" name="directdeal" value="불가능" id="directdeal"/>불가능</label></p>
         <p><input type="text" name="location" placeholder="장소입력 입력"/></p>         
         <p><input type="submit" value="submit" /></p>
      </div>
   </div>
   </form>
   
<!--    <div id="map" style="width: 50%; height: 350px;"></div>
   <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=293654733c566c2df57a50fda13d9eaa&libraries=services"></script>
   <script>
      // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
      var infowindow = new kakao.maps.InfoWindow({
         zIndex : 1
      });

      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = {
         center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
         level : 3
      // 지도의 확대 레벨
      };

      // 지도를 생성합니다    
      var map = new kakao.maps.Map(mapContainer, mapOption);

      // 장소 검색 객체를 생성합니다
      var ps = new kakao.maps.services.Places();

      // 키워드로 장소를 검색합니다
      ps.keywordSearch('서울대학교', placesSearchCB);

      // 키워드 검색 완료 시 호출되는 콜백함수 입니다
      function placesSearchCB(data, status, pagination) {
         if (status === kakao.maps.services.Status.OK) {

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            var bounds = new kakao.maps.LatLngBounds();

            for (var i = 0; i < data.length; i++) {
               displayMarker(data[i]);
               bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
            }

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
            map.setBounds(bounds);
         }
      }

      // 지도에 마커를 표시하는 함수입니다
      function displayMarker(place) {

         // 마커를 생성하고 지도에 표시합니다
         var marker = new kakao.maps.Marker({
            map : map,
            position : new kakao.maps.LatLng(place.y, place.x)
         });

         // 마커에 클릭이벤트를 등록합니다
         kakao.maps.event.addListener(marker, 'click', function() {
            // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
            infowindow
                  .setContent('<div style="padding:5px;font-size:12px;">'
                        + place.place_name + '</div>');
            infowindow.open(map, marker);
         });
      }
   </script> -->
   
</body>
</html>