<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>

<main class="main">
	<section class="edit-box">
		<h1 class="hidden">새벽 : 카테고리 편집</h1>
		<ul>
			<li>
				<div class=""><input type="checkbox"/>
					<input class="" type="text" value="Title1"/>
					<div>
						<img class="" src="${root }/resources/images/night/ic_create_black_24dp_1x.png" style="padding-right: 15px;">
						<img class="" src="${root }/resources/images/night/ic_clear_black_24dp_1x.png">
					</div>
				</div>
			</li>
			
			<li>
				<div class="category-list"><input type="checkbox"/>
				<input class="input-text-edit" type="text" value="Title2"/>
				<div>
						<img class="edit-icon" src="${root }/resources/images/night/ic_create_black_24dp_1x.png" style="padding-right: 15px;">
						<img class="edit-icon" src="${root }/resources/images/night/ic_clear_black_24dp_1x.png">
						</div>
				</div>
			</li>
			
			<li>
				<div class="category-list"><input type="checkbox"/>
				<input class="input-text-edit" type="text" value="Title3"/>
				<div>
						<img class="edit-icon" src="${root }/resources/images/night/ic_create_black_24dp_1x.png" style="padding-right: 15px;">
						<img class="edit-icon" src="${root }/resources/images/night/ic_clear_black_24dp_1x.png">
						</div>
				</div>
			</li>
			
			<li>
				<div class="category-list"><input type="checkbox"/>
				<input class="input-text-edit" type="text" value="Title4"/>
				<div>
						<img class="edit-icon" src="${root }/resources/images/night/ic_create_black_24dp_1x.png" style="padding-right: 15px;">
						<img class="edit-icon" src="${root }/resources/images/night/ic_clear_black_24dp_1x.png">
						</div>
				</div>
			</li>
			
			<li>
				<div class="category-list"><input type="checkbox"/>
				<input class="input-text-edit" type="text" value="Title5"/>
				<div>
						<img class="edit-icon" src="${root }/resources/images/night/ic_create_black_24dp_1x.png" style="padding-right: 15px;">
						<img class="edit-icon" src="${root }/resources/images/night/ic_clear_black_24dp_1x.png">
						</div>
				</div>
			</li>
			
			<li id="field">
			</li>
				
		</ul>
</section>

<section>
	<div class="edit-btn">
			<input class="btn-submit" id="btn-add" type="button" value="추가"
				onclick="add_item()" /><br> <a
				href="${root }/dawn/home/index"> <input class="btn-submit"
				type="submit" value="완료" />
			</a>
		</div>
</section>

<div id="pre_set" style="display: none" class="category-list">
	<input type="checkbox" /> <input class="input-text-edit" type="text"
		name="" value="">
	<div>
		<img class="edit-icon"
			src="${root }/resources/images/night/ic_create_black_24dp_1x.png"
			style="padding-right: 15px;"> <img class="edit-icon"
			src="${root }/resources/images/night/ic_clear_black_24dp_1x.png">
	</div>
	<input type="button" value="삭제" onclick="remove_item(this)"
		style="display: none;">
</div>
</main>

<script>
	function add_item() {
		// pre_set 에 있는 내용을 읽어와서 처리..
		var div = document.createElement('div');
		div.innerHTML = document.getElementById('pre_set').innerHTML;
		document.getElementById('field').appendChild(div);
	}

	function remove_item(obj) {
		// obj.parentNode 를 이용하여 삭제
		document.getElementById('field').removeChild(obj.parentNode);
	}
</script>
