<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!-- ### HTML ###-->
<!DOCTYPE html>
	<!-- #container -->
	<div id="container">
 		<!-- head title -->
		<div class="headline sub_headline sub_headline07">
			<div class="inner">
				<h1>협회관리자</h1>
			</div>
		</div>
		<!-- head title -->
		<!-- .inner -->
		<div class="inner">
			<form action="/customer/popup/update" id="boardForm" method="POST" encType="multipart/form-data">
			<!-- #content section////////////////////////////// -->
			<section id="content">
				<!-- .board-view -->
				
				<!-- ▼ 타이틀 영역 -->
		        <div class="con_section ">
		            <h2 class="con_sectionTit" style="margin-bottom:10px;"><span class="subtit">팝업관리</span></h2> 
		        </div>
			
				<table class="board-write">
					<colgroup>
						<col style="width: 240px">
						<col>
					</colgroup>
					<tbody id="tableB">
						<tr>
							<th>제목</th>
							<td><input type="text" placeholder="제목을 입력해주세요." style="width: 100%" name="title" id="title" value="${resultView1.title}"></td>
							<input type="hidden"  name="popupId" id="popupId" value="${resultView1.popupId}">
						</tr>
						<tr>
							<th>시작일자</th>
							<td><input id="startDate" type="date" maxlength="15" style="width: 320px" name="startDate" value="${resultView1.startDate}"></td>
						</tr>						
						<tr>							
							<th>종료일자</th>
							<td><input id="endDate" type="date" maxlength="15" style="width: 320px" name="endDate" value="${resultView1.endDate}"></td>
						</tr>
						<tr>							
							<th>TOP / LEFT</th>
							<td>
								<input type="text" maxlength="4" style="width: 80px" name="opt01" id="opt01" value="${resultView1.opt01}">px　/　<input type="text" maxlength="4" style="width: 80px" name="opt02" id="opt02" value="${resultView1.opt02}"> px
							</td>
						</tr>
						<tr>							
							<th>WIDTH / HEIGHT</th>
							<td>
								<input type="text" maxlength="4" style="width: 80px" name="opt03" id="opt03" value="${resultView1.opt03}">px　/　<input type="text" maxlength="4" style="width: 80px" name="opt04" id="opt04" value="${resultView1.opt04}"> px
							</td>
						</tr>
						<tr>							
							<th>팝업설정</th>
							<td>
							<c:if test="${resultView1.opt05 eq 'Y'}">
								협회관리자 <input type="checkbox" id="opt05" value="${resultView1.opt05}" checked="checked">/
							</c:if> 
							<c:if test="${resultView1.opt05 eq 'N'}">
								협회관리자 <input type="checkbox" id="opt05" value="${resultView1.opt05}">/
							</c:if>
							<c:if test="${resultView1.opt06 eq 'Y'}">
								기업관리자 <input type="checkbox" id="opt06" value="${resultView1.opt06}" checked="checked">/
							</c:if> 
							<c:if test="${resultView1.opt06 eq 'N'}">
								기업관리자 <input type="checkbox" id="opt06" value="${resultView1.opt06}">/
							</c:if>
							<c:if test="${resultView1.opt07 eq 'Y'}">
								기업개인회원 <input type="checkbox" id="opt07" value="${resultView1.opt07}" checked="checked">
							</c:if> 
							<c:if test="${resultView1.opt07 eq 'N'}">
								기업개인회원 <input type="checkbox" id="opt07" value="${resultView1.opt07}">
							</c:if>
								<input type="hidden"  name="opt05" id="selectOpt05" value=""> 
								<input type="hidden"  name="opt06" id="selectOpt06" value=""> 
								<input type="hidden"  name="opt07" id="selectOpt07" value="">  
							</td>
						</tr>
						<tr>							
							<th>링크</th>
							<td>
								<input type="text" style="width: 100%" name="link" id="link" value="${resultView1.link}"> 
							</td>
						</tr>
						<tr>							
							<th>출력방법</th>
							<td>
								<c:if test="${resultView1.target eq 'Y'}">
									<span class="checkbox-group"> 
										<label> <span class="input-checkbox"> <input type="radio" name="target" value="Y" checked="checked"> <i></i></span> 출력</label> 
										<label> <span class="input-checkbox"> <input type="radio" name="target" value="N"> <i></i></span> 출력하지 않음</label>
									</span>
								</c:if>
								<c:if test="${resultView1.target eq 'N'}">
									<span class="checkbox-group"> 
										<label> <span class="input-checkbox"> <input type="radio" name="target" value="Y"> <i></i></span> 출력 </label> 
										<label> <span class="input-checkbox"> <input type="radio" name="target" value="N" checked="checked"> <i></i></span> 출력하지 않음</label>
									</span>
								</c:if>
							</td>
						</tr>
						<tr>							
							<th>공개여부</th>
							<td>
								<c:if test="${resultView1.publicYn eq 'Y'}">
									<span class="checkbox-group"> 
										<label> <span class="input-checkbox"> <input type="radio" name="publicYn" value="Y" checked="checked"> <i></i></span> 사용 </label> 
										<label> <span class="input-checkbox"> <input type="radio" name="publicYn" value="N"> <i></i></span> 사용안함</label>
									</span>
								</c:if>
								<c:if test="${resultView1.publicYn eq 'N'}">
									<span class="checkbox-group"> 
										<label> <span class="input-checkbox"> <input type="radio" name="publicYn" value="Y"> <i></i></span> 사용 </label> 
										<label> <span class="input-checkbox"> <input type="radio" name="publicYn" value="N" checked="checked"> <i></i></span> 사용안함</label>
									</span>
								</c:if>
							</td>
						</tr>				
						<tr>
							<th>내용</th>
							<td>
						    	<textarea placeholder="내용을 입력해주세요." style="white-space:pre; height:450px; width: 100%" id="editorTxt" name="content">${resultView1.content}</textarea>
							</td>
						</tr>
					</tbody>
				</table>
			
				<!-- //.board-view -->
				<div class="button-group bottom">
					<button id="btn_update" class="primary" type="button" class="secondary" onSubmit="return false;">저장</button>
					<button id="btn_delete" class="secondary" type="button" onclick="return false;">삭제</button>
					<button type="button" class="secondary" onclick="location.href='/customer/popup/popup.do'">취소</button>
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
	$(document).on('click', '#btn_update', function(e) {
		oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", [])
		let content = $("#editorTxt").val();
		let title = $("#title").val();
		let startDate = $("#startDate").val();
		let endDate = $("#endDate").val();
		let opt01 = $("#opt01").val();
		let opt02 = $("#opt02").val();
		let opt03 = $("#opt03").val();
		let opt04 = $("#opt04").val();
		let link = $("#link").val();
		let target = $("input[name='target']:checked").val();
		($('#opt05').is(':checked') == true) ? $('#selectOpt05').val('Y') : $('#selectOpt05').val('N');
		($('#opt06').is(':checked') == true) ? $('#selectOpt06').val('Y') : $('#selectOpt06').val('N');
		($('#opt07').is(':checked') == true) ? $('#selectOpt07').val('Y') : $('#selectOpt07').val('N');
		let publicYn = $("input[name='publicYn']:checked").val();
		if (title == '') {
			alert("제목을 입력해주세요.")
			oEditors.getById["title"].exec("FOCUS")
			return;
		}
		if (startDate == '') {
			alert("시작일자를 입력해주세요.")
			oEditors.getById["startDate"].exec("FOCUS")
			return;
		}
		if (endDate == '') {
			alert("종료일자를 입력해주세요.")
			oEditors.getById["endDate"].exec("FOCUS")
			return;
		}	
		if (opt01 == '') {
			alert("TOP값을 입력해주세요.")
			oEditors.getById["opt01"].exec("FOCUS")
			return;
		}	
		if (opt02 == '') {
			alert("LEFT값을 입력해주세요.")
			oEditors.getById["opt02"].exec("FOCUS")
			return;
		}	
		if (opt03 == '') {
			alert("WIDTH값을 입력해주세요.")
			oEditors.getById["opt03"].exec("FOCUS")
			return;
		}	
		if (opt04 == '') {
			alert("HEIGHT값을 입력해주세요.")
			oEditors.getById["opt04"].exec("FOCUS")
			return;
		}			
		if (link == '') {
			alert("링크를 입력해주세요.")
			oEditors.getById["link"].exec("FOCUS")
			return;
		}
		
		if (target == '') {
			alert("출력방법을 입력해주세요.")
			oEditors.getById["target"].exec("FOCUS")
			return;
		}
		
		if (content == '') {
			alert("내용을 입력해주세요.")
			return;
		}
		if (content && title != '') {
			if (confirm("등록 하시겠습니까 ?") == true)
				$("#boardForm").submit();
		} else {
			return;
		}

	});
	
	//게시글 삭제 확인
	$(document).on('click', '#btn_delete', function(e) {
		if (confirm("정말 삭제하시겠습니까 ?") == true) {
			var url = "/customer/popup/delete/"+${resultView1.popupId};
			location.href = url;
		} else {
			return;
		}
	});
	
	//수정된 첨부파일 삭제 
	function delAddFile(obj) {
		let files = document.querySelector('#input-file').files;
		let dataTranster = new DataTransfer()
		let delNo = obj.getAttribute("data-delNo");
		let delid = obj.getAttribute("data-delId");
		
		Array.from(files)
		.filter(file => file.lastModified != delid)
        .forEach(file => {
       		dataTranster.items.add(file);
     	});
		document.querySelector('#input-file').files = dataTranster.files;
		$("#filesDelAdd" + delNo).remove();
	};	
	
	//등록된 첨부파일 삭제
	function delfile(i) {
			$("#filesDel" + i).remove();
			$("#fileName"+ i).remove();
			$("#filePath"+ i).remove();
	};
	
	$("#fileDelete").click(function javascript_onclikc() {
		$('#input-file').val(null);

	});
	
	
	$(document).ready(function() {
		 
		//첨부파일 리스트 보여주기
		$("input[type=file]").change(function() {
			var fileInput = document.getElementById("input-file");
					var files = fileInput.files;
					var file ="";
					for (var i = 0; i < files.length; i++) {
						file += '<li style=" list-style: none;float: left;margin:0px 25px 0px 0px" id="filesDelAdd'+i+'">' +files[i].name+'<span style="cursor:pointer;color:blue"  data-delId="'+files[i].lastModified+'" data-delNo="'+i+'" onclick="delAddFile(this)"><button type="button" class="btn_del2">X</button></sapn></li>'
					}
			$("#fileListName").html(file);
		});
		
	});
	
</script>
<!-- ### script ###-->