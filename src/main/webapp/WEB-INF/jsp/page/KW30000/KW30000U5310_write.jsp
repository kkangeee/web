<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location
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
-->

<!-- #container -->
<div id="container">
	<div class="headline sub_headline sub_headline07">
		<div class="inner">
			<h1>보건관리</h1>
		</div>
	</div>	
	<!-- .inner -->
	<div class="inner">
		
		<!-- #content section////////////////////////////// -->
		<section id="content">
			<!-- .board-view -->
				<form action="/page/KW30000/KW30000U5310write" id="boardForm" method="POST" encType="multipart/form-data">
				<table class="board-write">
				<colgroup>
					<col style="width: 240px">
					<col>
					<col style="width: 240px"	>
					<col>
				</colgroup>
				<tbody id="tableB">
					<tr>
						<th>교육관리</th>
						<td colspan="3">교육등록</td>
					</tr>
					<tr>
						<th>강사명</th>
						<td><input type="text" style="width:100%;" name= "tchrNm"></td>
						<th>강사소속</th>
						<td><input type="text" style="width:100%;" name= "tchrAflt"></td>
					</tr>
					<tr>
						<th>대상공정명</th>                                      
						<td><input type="text" style="width:100%;" name= "tgtPrcsNm"></td>
						<th>이수인원</th>
						<td><input type="text" style="width:47.9%;" name= "tgtPplCnt">/&nbsp;<input type="text" style="width:47.9%;" name= "cmpltnPplCnt"></td>
					</tr>
					<tr>
						<th>교육기간(H)</th>
						<td><input id="regDt" type="date" maxlength="5" style="width: 155px;height: 40px;" name="eduImplStrDd">
							~  
							<input id="regDt" type="date" maxlength="5" style="width: 155px;height: 40px;" name="eduImplEndDd">
							<input type="text" style="width:54px;" name= "eduTm">
						</td>
						<th>교육 종류/방법</th>
						<td><input type="text" style="width: 47.9%;" name= "eduKnd">/&nbsp;<input type="text" style="width: 47.9%;" name= "eduMth"></td>
					</tr>
					<tr>
						<th>교육과목명</th>
						<td colspan="3"><input type="text" placeholder="제목을 입력해주세요."
							style="width: 100%" name="eduSbjtNm" id="eduSbjtNm"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" style="width:100%;" name= "createObjectId" value="관리자"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
					    	<textarea placeholder="내용을 입력해주세요." style="white-space:pre; height:450px; width: 100%" id="editorTxt" name="content"></textarea>
						</td>
					</tr>
					<tr>
						<th>이미지파일</th>
						<td colspan="3">									
						<span></span>
						</td>
					</tr>
					<tr>
						<th>교육자료 다운</th>
						<td colspan="3">
							<div style="color:blue" id="fileListName"></div>																	
							<input style="width:250px;" id="input-file" type="file" name="uploadFile" multiple="multiple">
						</td>
					</tr>
				</tbody>
			</table>
		</form>				
		<!-- //.board-view -->
				<div class="button-group bottom">
					<button id="btn_write" class="primary" type="button" class="secondary">등록</button>
						<button type="button" class="secondary" onclick="location.href='/page/KW30000/KW30000U5310.do'">취소</button>
				</div>
		</section>
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
<!-- ### script ###-->

<script type="text/javascript">

	var oEditors = []
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "editorTxt",
		sSkinURI : "/smarteditor/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});
	
	$(document).on('click', '#btn_write', function(e) {
		
		oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", [])
		let content = $("#editorTxt").val();
		let title = $("#title").val();
		let regDt = $("#regDt").val();
		
		$("#boardForm").submit();
		
		//$("#boardForm").submit();
	/*
		if (title == '') {
			alert("제목을 입력해주세요.")
			oEditors.getById["title"].exec("FOCUS")
			return;
		}
		if (regDt == '') {
			alert("게시일을 입력해주세요.")
			oEditors.getById["regDt"].exec("FOCUS")
			return;
		}
		if (content == '') {
			alert("내용을 입력해주세요.")
			return;
		}
		if (content && title && regDt != '') {
			if (confirm("등록 하시겠습니까 ?") == true)
				
		} else {
			return;
		}
		*/
	});

	$("#fileDelete").click(function javascript_onclikc() {
		$('#input-file').val(null);

	});
	
	//첨부파일 리스트 보여주기
	$(document).ready(function() {
		$("input[type=file]").change(function() {
			var fileInput = document.getElementById("input-file");
			var files = fileInput.files;
			console.log(files);
			var file ="";
			for (var i = 0; i < files.length; i++) {
				file += files[i].name;
				file += "&emsp;";
			}
			$("#fileListName").html(file);
		});
	});
</script>
<!-- ### script ###-->