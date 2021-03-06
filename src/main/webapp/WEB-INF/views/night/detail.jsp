<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="root" value="${pageContext.request.contextPath}"/>  
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, user-scalable=1">

<main class="box" style="
    padding-top: 82px;
">

	<div>
	<c:forEach var="category" items="${category}">
		<div>${category.title }</div>
		</c:forEach>
			<div class="detail-title">
				<div style="margin-left:10px;">
	
					제목 : ${video.title }
				</div>
			
				<div style="margin-right:10px;">
					조회수 : ${video.hit }
				</div>
			
		</div>
	</div>
		<div>
			<div class="detail-thm">
				<%-- <img src="${root }/resources/images/night/fff.PNG"> --%>
			<iframe width="400" height="300" src="https://www.youtube.com/embed/${video.urlPath }" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="detail-textarea"><span>${video.content }</span>
			</div>
		</div>

   <nav class="btn-list">
      <h1 class="hidden">버튼목록</h1>
      <ul>
         <li> <span id="sel-button">
         <img src="/myhealingbox/resources/images/night/plus2.png" style="width: 50px; height: 50px;border-radius: 50px;"></span> </li>
         <li id="edit-button"> <a href="${root }/night/video/${video.id}/edit" ><img src="${root }/resources/images/night/ic_create_black_24dp_2x.png"></a> </li>
         <li id="del-button"> <a href="${root }/night/video/${video.id}/delete" ><img src="${root }/resources/images/night/ic_delete_black_24dp_2x.png"></a> </li>
      </ul>
   </nav>
      
</main>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	window.addEventListener("load", function() {
		var selButton = document.querySelector("#sel-button");
		var editButton = document.querySelector("#edit-button");
		var delButton = document.querySelector("#del-button");

		selButton.onclick = function() {
			if (editButton.classList.contains("show")) {
				editButton.classList.remove("show");
				delButton.classList.remove("show");
			}
			else {
				editButton.classList.add("show");
				delButton.classList.add("show");

			}
		};
		
		 delButton.onclick = function() {
			alert("삭제가 완료되었습니다.");
			
		}; 
		
	});
	
	$(function() {
		
		var editButton = $("#edit-button");
		var title = $(".title input[name='title']");
		var url = $(".title input[name='urlPath']");
		var content = $(".editor textarea[name='content']");
		
		editButton.click(function(e){
			e.preventDefault();
		
		$.getJSON("${video.id}/ajax-list/edit", function(video) {
			
		});
			
			
		});
		
	});
	
	
	
	
	
	
	
	
	
	
	
</script>