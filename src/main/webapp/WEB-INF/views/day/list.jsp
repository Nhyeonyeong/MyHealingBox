<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>


<main class="main">
	<div class="day-list">
	
		<h1>| 카테고리1 </h1>
		<!-- 기본적으로 최신순으로 정렬되는데 정렬박스를 추가할 필요가 없지..? 일단 뺌 -->
		<hr/>
		
		<c:forEach var="i" begin="0" end="4">
		<div>
			<div id="detail-click">
				<a href="detail">
					<h3>여기는 제목 부분</h3>
					<p class="text-concat"> 여기는 내용 부분인데 2줄만 나오게 할거에오...
					여기는 내용 부분인데 2줄만 나오게 할거에오
					여기는 내용 부분인데 2줄만 나오게 할거에오 
					여기는 내용 부분인데 2줄만 나오게 할거에오 </p>
				</a>
			</div>
			<div class="list-bottom">
				<p> 2018년 4월 17일 </p>
				<div>
					<img alt="새벽으로 보내기" src="${root}/resources/images/day/send_icon.png">
					<img alt="하고싶은일 삭제" src="${root}/resources/images/day/listDel_icon.png">						
				</div>
			</div>
		</div>
		</c:forEach>
		
		<div style="display: flex; justify-content: center;">
			<img id="healingSaying" alt="휴식" src="${root}/resources/images/day/saying_img.png">
		</div>
	
	</div>

	<nav class="btn-write-go">
		<ul>
		
			<li id="sel-button"><a href="write"><img src="${root}/resources/images/day/writeGo_button_img.png"></a></li>
		</ul>
	</nav>
	
	

</main>