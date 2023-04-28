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
			<form action="/customer/popup/write" id="boardForm" method="POST" encType="multipart/form-data">
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
							<td><input type="text" placeholder="제목을 입력해주세요." style="width: 100%" name="title" id="title"></td>
						</tr>
						<tr>
							<th>시작일자</th>
							<td><input id="startDate" type="date" maxlength="15" style="width: 320px" name="startDate"></td>
						</tr>						
						<tr>							
							<th>종료일자</th>
							<td><input id="endDate" type="date" maxlength="15" style="width: 320px" name="endDate"></td>
						</tr>
						<tr>							
							<th>TOP / LEFT</th>
							<td>
								<input type="text" maxlength="4" style="width: 80px" name="opt01" id="opt01">px　/　<input type="text" maxlength="4" style="width: 80px" name="opt02" id="opt02"> px
							</td>
						</tr>
						<tr>							
							<th>WIDTH / HEIGHT</th>
							<td>
								<input type="text" maxlength="4" style="width: 80px" name="opt03" id="opt03">px　/　<input type="text" maxlength="4" style="width: 80px" name="opt04" id="opt04"> px
							</td>
						</tr>
						<tr>							
							<th>팝업설정</th>
							<td>
								협회관리자 <input type="checkbox" id="opt05" value="" class="new"> / 
								기업관리자 <input type="checkbox" id="opt06" value="" class="new"> / 
								기업개인회원 <input type="checkbox"  id="opt07" value="" class="new"> 
								<input type="hidden"  name="opt05" id="selectOpt05" value=""> 
								<input type="hidden"  name="opt06" id="selectOpt06" value=""> 
								<input type="hidden"  name="opt07" id="selectOpt07" value="">  
							</td>
						</tr>
						<tr>							
							<th>링크</th>
							<td>
								<input type="text" style="width: 100%" name="link" id="link"> 
							</td>
						</tr>
						<tr>							
							<th>출력방법</th>
							<td>
								<span class="checkbox-group"> 
									<label> <span class="input-checkbox"> <input type="radio" name="target" value="Y" checked="checked"> 
												<i></i>
										</span> 출력
									</label> 
									<label> <span class="input-checkbox"> <input type="radio" name="target" value="N"> 
											<i></i>
										</span> 출력하지 않음
									</label>
								</span>
							</td>
						</tr>
						<tr>							
							<th>공개여부</th>
							<td>
								<span class="checkbox-group"> 
									<label> <span class="input-checkbox"> <input type="radio" name="publicYn" value="Y" checked="checked"> 
												<i></i>
										</span> 사용
									</label> 
									<label> <span class="input-checkbox"> <input type="radio" name="publicYn" value="N"> 
											<i></i>
										</span> 사용안함
									</label>
								</span>
							</td>
						</tr>				
						<tr>
							<th>내용</th>
							<td>
						    	<textarea placeholder="내용을 입력해주세요." style="white-space:pre; height:450px; width: 100%" id="editorTxt" name="content"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
			
				<!-- //.board-view -->
				<div class="button-group bottom">
					<button id="btn_write" class="primary" type="button" class="secondary" onSubmit="return false;">저장</button>
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
	$(document).on('click', '#btn_write', function(e) {
		oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", [])
		let content = $("#editorTxt").val();
		let title = $("#title").val();
		let startDate = $("#startDate").val();
		let endDate = $("#endDate").val();
		let opt01 = $("#opt01").val();
		let opt02 = $("#opt02").val();
		let opt03 = $("#opt03").val();
		let opt04 = $("#opt04").val();
		let opt05 = $("#opt05").val();
		let opt06 = $("#opt06").val();
		let opt07 = $("#opt07").val();
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
		// 모든 권한 기본 체크 
		$(".new").attr("checked", true);
		 
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
		
		var nowDate = new Date();
		var endDate = new Date(nowDate);
		console.log("endDate ::: " + endDate);
		endDate.setDate(nowDate.getDate() + 6);
	
		var fromday	= nowDate.toISOString().slice(0, 10);
		var today 	= endDate.toISOString().slice(0, 10);
	
		document.getElementById("startDate").value = fromday;
		document.getElementById("endDate").value = today;
		document.getElementById("opt01").value = "100";
		document.getElementById("opt02").value = "100";
		document.getElementById("opt03").value = "800";
		document.getElementById("opt04").value = "600";
	});
	
</script>
<!-- ### script ###-->