<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location -->
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">유해인자관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW20000/KW20000U1100.do">유해인자관리</a></li>
			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">유해인자정보관리</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW20000/KW20000U1100.do">화학제품관리</a></li>
				<li><a href="/page/KW20000/KW20000U2100.do">유해인자정보관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">MSDS조회 및 등록</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW20000/KW20000U1100.do">MSDS 조회 및 등록</a></li>
				<li><a href="/page/KW20000/KW20000U1200.do">화학제품 현황</a></li>
				<li><a href="/page/KW20000/KW20000U1300.do">화학물질 입출고 현황</a></li>
				<li><a
					href="https://msds.kosha.or.kr/MSDSInfo/kcic/msds/msds.do?page=ghs02">경고표지작성</a></li>
				<li><a href="/page/KW20000/KW20000U1500.do">경고표지 관리</a></li>
			</ul>
		</li>
	</ul>
</div>
<!-- #location -->

	<!-- #container -->
	<div id="container">
 		<!-- head title -->
		<div class="headline sub_headline sub_headline07">
			<div class="inner">
				<h1>유해인자관리</h1>
			</div>
		</div>
		<!-- head title -->
		<!-- .inner -->
		<div class="inner">
			<form action="/page/KW20000/KW20000U1500_write" id="boardForm" method="POST" encType="multipart/form-data">
			<!-- #content section////////////////////////////// -->
			<section id="content">
				<!-- .board-view -->
				
				<!-- ▼ 타이틀 영역 -->
				<div class="con_section ">
					<h2 class="con_sectionTit">
						유해인자관리 / <span class="subtit">경고표지관리</span>
					</h2>
				</div>
				<!-- ▼ 타이틀 영역 -->
			
				<table class="board-write">
					<colgroup>
						<col style="width: 240px">
						<col>
					</colgroup>
					<tbody id="tableB">
						<tr>
							<th>게시판</th>
							<td>경고표지관리</td>
						</tr>
						<tr>
							<th>제목</th>
							<td class="padding5"><input type="text" placeholder="제목을 입력해주세요." style="width: 100%" name="title" id="title"></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>관리자</td>
						</tr>
						<tr>
							<th>게시일</th>
							<td class="padding5"><input id="regDt" type="date" maxlength="15" style="width: 320px" name="userName"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td class="padding5">
						    	<textarea placeholder="내용을 입력해주세요." style="white-space:pre; height:450px; width: 100%" id="editorTxt" name="content"></textarea>
							</td>
						</tr>
						<tr>
							<th>이미지파일</th>
							<td>									
							<span>본문에 이미지 등록시 다운로드링크는 자동 추가됩니다.</span>
							</td>
						</tr>
						<!--  
						<tr>
							<th>첨부파일</th>
							<td>
								<div style="color:blue" id="fileListName"></div>																	
								<input style="width:250px;" id="input-file" type="file" name="uploadFile" multiple="multiple">
							</td>
						</tr>
						-->
					</tbody>
				</table>
			<!-- //.board-view -->
					<div class="button-group bottom">
						<button id="btn_write" class="primary" type="button" class="secondary" onSubmit="return false;">등록</button>
						<button type="button" class="secondary" onclick="location.href='/page/KW20000/KW20000U1500.do'">취소</button>
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
		fCreator: "createSEditor2"
	});

	//글쓰기버튼
	$(document).on('click', '#btn_write', function(e) {
		oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", [])
		let content = $("#editorTxt").val();
		let title = $("#title").val();
		let regDt = $("#regDt").val();

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
				$("#boardForm").submit();
		} else {
			return;
		}

	});
	
	$("#fileDelete").click(function javascript_onclikc() {
		$('#input-file').val(null);
	});
	
	/*
	//첨부파일 리스트 보여주기
	$(document).ready(function() {
		$("input[type=file]").change(function() {
			var fileInput = document.getElementById("input-file");
			var files = fileInput.files;
			console.log(files);
			var file ="";
			for (var i = 0; i < files.length; i++) {
				file +=  files[i].name ;
				file += "&emsp;";
			}
			$("#fileListName").html(file);
		});
	});
	*/
</script>
<!-- ### script ###-->