<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>


<!-- 20220914 송성빈-->
<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button
				onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">정보마당</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW50010/KW10000U1100.do">사업장관리</a></li>
				<li><a href="/page/KW50020/KW50020U010.do">유해인자관리</a></li>
				<li><a href="/page/KW50030/KW50030U010.do">보건관리</a></li>
				<li><a href="/page/KW50040//KW50040U010.do">내사업한눈에</a></li>
				<li><a href="/page/KW50050//KW50050U010.do">스케쥴관리</a></li>
				<li><a href="/page/KW50060//KW50060U010.do">정보마당</a></li>
				<li><a href="/customer/notice.do">고객지원</a></li>
				<li><a href="#">마이페이지</a></li>
			</ul>
		</li>
		<li>

			<button
				onclick="$(this).toggleClass('active').next().slideToggle();">관련서식</button>

			<ul class="dropdown-list clear-able">
			<li><a href="/page/KW60000/KW60000U1100.do">관련법령</a></li>
			<li><a href="/page/KW60000/KW60000U2100.do">공단지침</a></li>
			<li><a href="/page/KW60000/KW60000U3100.do">산안법 핸드북</a></li>
			<li><a href="/page/KW60000/KW60000U4100.do">관련서식</a></li>
			<li><a href="/page/KW60000/KW60000U5100.do">관련정보</a></li>
		</ul>
		</li>
	</ul>
</div>
-->


	<!-- #container -->
	<div id="container">
		<div class="headline sub_headline sub_headline07">
			<div class="inner">
				<h1>관련서식</h1>
			</div>
		</div>
		<!-- .inner -->
		<div class="inner">
			<form action="/page/KW60000/KW60000U4100write" id="boardForm" method="POST" encType="multipart/form-data">
			<!-- #content section////////////////////////////// -->
			<section id="content">
				<!-- .board-view -->
				
				<!-- ▼ 타이틀 영역 -->
		        <div class="con_section ">
		            <h2 class="con_sectionTit" style="margin-bottom:10px;"><span class="subtit">관련서식</span></h2> 
		        </div>
			
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
							<th>게시일</th>
							<td><input type="date" maxlength="15" style="width: 320px" name="userName"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<textarea placeholder="내용을 입력해주세요." style="white-space:pre; height:450px; width: 100%" id="editorTxt" name="content"></textarea>
							</td>
						</tr>
						<tr>
							<th>이미지파일</th>
							<td>									
							<span></span>
							</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td>
								<div style="color:blue" id="fileListName"></div>																	
								<input style="width:250px;" id="input-file" type="file" name="uploadFile" multiple="multiple">
							</td>
						</tr>
					</tbody>
				</table>
			<!-- //.board-view -->
					<div class="button-group bottom">
						<button id="btn_write" class="primary" type="button" class="secondary">등록</button>
						<button type="button" class="secondary"
							onclick="location.href='/page/KW60000/KW60000U4100.do'">취소</button>
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
<!-- ### HTML ###-->]

<!-- ### script ###-->
<script type="text/javascript">

	//스마트에디터
	var oEditors = []
	
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "editorTxt",
	    sSkinURI: "/smarteditor/SmartEditor2Skin.html",
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
		if(regDt == '') {
			alert("게시일을 입력해주세요.")
			 oEditors.getById["regDt"].exec("FOCUS")
			 return;
		}  
		if(content == ''){
			alert("내용을 입력해주세요.")
			 return;
		} 
		if (content && title && regDt != ''){
			if(confirm("등록 하시겠습니까 ?") == true) 
				$("#boardForm").submit();	
		} else {
			 return;
		}
	
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