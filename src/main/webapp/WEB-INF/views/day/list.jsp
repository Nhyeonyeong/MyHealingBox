<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>


<main class="main">
	<div class="day-list">
	
		<h1>|  ${dayView.DCTitle} </h1>
		<!-- 기본적으로 최신순으로 정렬되는데 정렬박스를 추가할 필요가 없지..? 일단 뺌 -->
		<hr/>
		
		<c:forEach var="list" items="${lists}">
		<div>
			<div id="detail-click">
				<a href="${list.WTDDayCategoryId}/${list.WTDId}">
					<h3>${list.WTDTitle}</h3>
					<p class="text-concat"> ${list.WTDcontent } </p>
				</a>
			</div>
			<div class="list-bottom">
				<p> <fmt:formatDate pattern="yyyy-MM-dd a HH:mm" value="${list.WTDRegDate}" /> </p>
				<div>
					<img alt="새벽으로 보내기" src="${root}/resources/images/day/send_icon.png">
					<a href="${root }/day/${list.WTDId }/delete">
						<img id="wtdDrop" alt="하고싶은일 삭제" src="${root}/resources/images/day/listDel_icon.png">
					</a>
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
<script>
	/* window.addEventListener("load",function(event){
		var dropButton = document.querySelector("#wtdDrop");
		
		dropButton.onclick() = function(){
			if(confirm("삭제하시겠습니까?"))
			
		};
		
		
	}); */
</script>


