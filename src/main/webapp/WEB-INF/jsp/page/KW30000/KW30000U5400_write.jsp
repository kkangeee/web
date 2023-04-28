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
				<h1>관련서식</h1>
			</div>
		</div>
		<!-- .inner -->
		<div class="inner">
			<form action="/page/KW30000/KW30000U5400write" id="boardForm" method="POST" encType="multipart/form-data">
			<!-- #content section////////////////////////////// -->
			<section id="content">
				<!-- .board-view -->
			
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
							<td><input type="text" placeholder="제목을 입력해주세요."
								style="width: 100%" name="title" id="title"></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>관리자</td>
						</tr>
						<tr>
							<th>제 개정일</th>
							<td><input type="date" maxlength="15" style="width: 320px" name="amndDd" id="amndDd"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea placeholder="내용을 입력해주세요." style="white-space:pre; height:450px; width: 100%" id="editorTxt" name="content"></textarea></td>
						</tr>

						<tr>
							<th>첨부파일</th>
							<td>									
							<span><input style="width:250px;" id="input-file" type="file" name="uploadFile"></span>
								<button id="fileDelete" type="button" class="btn_previous">삭제</button>
							</td>
						</tr>	
					</tbody>
				</table>
			
			<!-- //.board-view -->
					<div class="button-group bottom">
						<button id="btn_write" class="primary" type="button" class="secondary">등록</button>
						<button type="button" class="secondary"
							onclick="location.href='/page/KW30000/KW30000U5400.do'">취소</button>
					</div>
			</section>
			<!-- //////////////////////////////#content section -->
		</form>	
		</div>
		<!-- //.inner -->
	</div>
	<!-- 컨텐츠 -->

	<!-- //#container -->

	<div class="util-bottom">
		<div class="inner">
			<a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">위로</a>
		</div>
	</div>
<!-- ### HTML ###-->]

<!-- ### script ###-->
<script type="text/javascript">

var oEditors = []

nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "editorTxt",
    sSkinURI: "/smarteditor/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
  });


$(document).on('click', '#btn_write', function(e) {
	
	oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", [])	
	let content = $("#editorTxt").val();
	let title = $("#title").val();
	let amndDd = $("#amndDd").val();
	 
	if (title == '') {
		 alert("제목을 입력해주세요.")
		 oEditors.getById["title"].exec("FOCUS")
		 return;
	} 
	if(amndDd == '') {
		alert("게시일을 입력해주세요.")
		 oEditors.getById["amndDd"].exec("FOCUS")
		 return;
	}  
	if(content == ''){
		alert("내용을 입력해주세요.")
		 return;
	} 
	if (content && title && amndDd != ''){
		if(confirm("등록 하시겠습니까 ?") == true) 
			$("#boardForm").submit();	
	} else {
		 return;
	}
		

});


	$("#fileDelete").click(function javascript_onclikc() {
		$('#input-file').val(null);

	});
</script>
<!-- ### script ###-->