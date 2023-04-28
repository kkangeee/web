<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>


<!-- 20220914 송성빈-->
<!-- ### HTML ###-->
<!DOCTYPE html>

<!-- #location -->
<div id="location" class="">
	<ul>
		<li><a href="/">홈</a></li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">보건관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">보건관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">교육관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">교육관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">교육종합관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">교육종합관리</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">외부교육승인</a></li>
				<li><a href="/page/KW30000/KW30000U5310.do">교육계획/실시등록</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">교육자료 다운</a></li>
			</ul>
		</li>
	</ul>
</div>
<!-- #location -->


<!-- #container -->
<div id="container">
	<div class="headline sub_headline sub_headline07">
		<div class="inner">
			<h1>정보마당</h1>
		</div>
	</div>
	<!-- .inner -->
	<div class="inner">
		<!-- #content section////////////////////////////// -->
		
			<section id="content">
				<!-- .board-view -->
				<form id="viewForm" action="${pageContext.request.contextPath}/page/KW30000/KW30000U5400update" method="POST" encType="multipart/form-data">
					<table class="board-write">
						<colgroup>
							<col style="width: 240px">
							<col>
						</colgroup>
						<tbody id="tableB">
							<tr>
								<th>게시판</th>
								<td>관련서식</td>
							</tr>
							<tr>
	
								<th>제목</th>
								<td><input type="text" value="${resultView1.title}"
									style="width: 100%" name="title" id="title"> <input
									type="hidden" value="${resultView1.contentId}" name="contentId">
								</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><input type="text" name="regId" value="관리자"></td>
							</tr>	
							<tr>
								<th>내용</th>
								<td>
								<textarea style="height: 500px; white-space:pre;" name="content">${resultView1.content}</textarea>
								</td>
							</tr>
							<tr>
								<tr>
									<td>첨부파일</td>
									<td>
										<span>									
											<input style="width:250px;" id="input-file" type="file" name="uploadFile">											
											<button id="fileDelete" type="button" class="btn_previous">파일지우기</button>
										</span>																		
									</td>	
								</tr>
							</tr>			
						</tbody>
					</table>
				</form>
				<div class="button-group bottom">
					<!-- <button type="submit">작성</button> -->
					<button type="button" class="primary" id="btn_modify">수정</button>
					<button type="button" class="secondary"
						onclick="location.href='/page/KW30000/KW30000U5400view?contentId=${resultView1.contentId}'">취소</button>
				</div>
			</section>
			<!-- //.board-view -->
		<!-- //////////////////////////////#content section -->

	</div>
	<!-- //.inner -->
</div>
<!-- 컨텐츠 -->

<!-- //#container -->

<div class="util-bottom">
	<div class="inner">
		<a class="btn-top" href="#wrap"
			onclick="$(window).scrollTop(0); return false;">위로</a>
	</div>
</div>
<!-- ### HTML ###-->

<script>
	$(document).ready(function() {
		document.getElementById("input-file").innerHTML="#FileReName";    
	});

	//게시글 수정 확인
	$(document).on('click', '#btn_modify', function(e) {
		if (confirm("정말 수정하시겠습니까 ?") == true) {
			$("#viewForm").submit();
		} else {
			return;
		}
	
	});
	//게시글 삭제 확인
	$(document).on('click', '#btn_delete', function(e) {
		if (confirm("정말 삭제하시겠습니까 ?") == true) {
			$("#viewForm").attr("action", "/page/KW30000/KW30000U5400delete");
			$("#viewForm").submit();
		} else {
			return;
		}

	});
	
	$("#fileDelete").click(function javascript_onclikc() {
		$('#input-file').val(null);

	});
 	
</script>
