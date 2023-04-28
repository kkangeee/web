<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
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
					<form id="boardForm" action="${pageContext.request.contextPath}/page/KW30000/KW30000U5310update" method="POST" encType="multipart/form-data">
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
							<td><input type="text" style="width:100%;" name= "tchrNm" value="${resultView1.tchrNm}"></td>
							<th>강사소속</th>
							<td><input type="text" style="width:100%;" name= "tchrAflt" value="${resultView1.tchrAflt}"></td>
						</tr>
						<tr>
							<th>대상공정명</th>                                      
							<td><input type="text" style="width:100%;" name= "tgtPrcsNm" value="${resultView1.tgtPrcsNm}"></td>
							<th>대상인원&nbsp;/&nbsp;이수인원</th>
							<td><input type="text" style="width:47.9%;" name= "tgtPplCnt" value="${resultView1.tgtPplCnt}">/&nbsp;<input type="text" style="width:47.9%;" name= "cmpltnPplCnt" value="${resultView1.cmpltnPplCnt}"></td>
						</tr>
						<tr>
							<th>교육기간(H)</th>
							<td><input id="regDt" type="date" maxlength="5" style="width: 155px;height: 40px;" name="eduImplStrDd" value="${resultView1.eduImplStrDd}">
								~  
								<input id="regDt" type="date" maxlength="5" style="width: 155px;height: 40px;" name="eduImplEndDd" value="${resultView1.eduImplEndDd}">
								<input type="text" style="width:54px;" name= "eduTm" value="${resultView1.eduTm}">
							</td>
							<th>교육 종류&nbsp;/&nbsp;방법</th>
							<td><input type="text" style="width: 47.9%;" name= "eduKnd" value="${resultView1.eduKnd}">/&nbsp;<input type="text" style="width: 47.9%;" name= "eduMth" value="${resultView1.eduMth}"></td>
						</tr>
						<tr>
							<th>교육과목명</th>
							<td colspan="3"><input type="text" placeholder="제목을 입력해주세요."
								style="width: 100%" name="eduSbjtNm" id="eduSbjtNm" value="${resultView1.eduSbjtNm}"></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><input type="text" style="width:100%;" name= "createObjectId" value="${resultView1.createObjectId}"></td>
							<td><input type="hidden" value="${resultView1.contentId}" name="contentId"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="3">
						    	<textarea style="white-space:pre; height:450px; width: 100%" id="contents" name="content">
									 		${resultView1.content}
								</textarea>
							</td>
						</tr>
						<tr>
							<tr class="files">
								<th>이미지파일</th>
								<td><div id="imgFiles"></div><td>
							</tr>
							<tr class="files">
								<th>교육자료 다운</th>
								<td colspan="3">
									<ul style="list-style:none;float:left" id ="reFile"></ul>														
								</td>
							</tr>
							<tr class="files">
								<th><input style="width: 250px" id="input-file" type="file" name="uploadFile" multiple="multiple" ></th>
								<td colspan="3">	
									<ul style="list-style:none;float:left;color: blue" id="fileListName"></ul><br>					
								</td>
							</tr>
					</tbody>
				</table>
				<!-- 숨겨둔 값 -->
				<article>
					<div style="white-space:pre;display: none;" id="contents" class="content">${resultView1.content}</div>
				</article>
				<input type="hidden" name="filePaths">
				<input type="hidden" name="files">
				<!-- 숨겨둔 값 -->
			</form>	
			
			<input id="filePath_data" type="hidden" value="${resultView1.boardFile}" class="form-control" readonly />		
			<input id="fileName__data" type="hidden" value="${resultView1.boardFileName}" class="form-control" readonly />				
			<div class="button-group bottom">
					<button type="button" class="primary" id="btn_modify">수정</button>
					<button type="button" class="secondary" onclick="location.href='/page/KW30000/KW30000U5310view.do?contentId=${resultView1.contentId}'">취소</button>
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

	$(document).ready(function() {
		document.getElementById("input-file").innerHTML="#FileReName"; 
		$("#input_file").on("change", fileCheck);
	});
	
	/**
	 * 첨부파일로직
	 */
	$(function () {
	    $('#btn-upload').click(function (e) {
	        e.preventDefault();
	        $('#input_file').click();
	    });
	});

	// 파일 현재 필드 숫자 totalCount랑 비교값
	var fileCount = 0;
	// 해당 숫자를 수정하여 전체 업로드 갯수를 정한다.
	var totalCount = 10;
	// 파일 고유넘버
	var fileNum = 0;
	// 첨부파일 배열
	var content_files = new Array();

	function fileCheck(e) {
	    var files = e.target.files;
	    
	    // 파일 배열 담기
	    var filesArr = Array.prototype.slice.call(files);
	    
	    // 파일 개수 확인 및 제한
	    if (fileCount + filesArr.length > totalCount) {
	      $.alert('파일은 최대 '+totalCount+'개까지 업로드 할 수 있습니다.');
	      return;
	    } else {
	    	 fileCount = fileCount + filesArr.length;
	    }
	    
	    // 각각의 파일 배열담기 및 기타
	    filesArr.forEach(function (f) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        content_files.push(f);
	        $('#articlefileChange').append(
	       		'<div id="file' + fileNum + '" onclick="fileDelete(\'file' + fileNum + '\')">'
	       		+ '<font style="font-size:12px">' + f.name + '</font>'  
	       		+ '<span style="cursor:pointer;color:blue"> X </span>' 
	       		+ '<div/>'
			);
	        fileNum ++;
	      };
	      reader.readAsDataURL(f);
	    });
	    console.log(content_files);
	    //초기화 한다.
	    $("#input_file").val("");
	  }

	// 파일 부분 삭제 함수
	function fileDelete(fileNum){
	    var no = fileNum.replace(/[^0-9]/g, "");
	    content_files[no].is_delete = true;
		$('#' + fileNum).remove();
		fileCount --;
	    console.log(content_files);
	}

	/*
	 * 폼 submit 로직
	 */
		function registerAction(){
			
		var form = $("form")[0];        
	 	var formData = new FormData(form);
			for (var x = 0; x < content_files.length; x++) {
				// 삭제 안한것만 담아 준다. 
				if(!content_files[x].is_delete){
					 formData.append("article_file", content_files[x]);
				}
			}
   /*
   * 파일업로드 multiple ajax처리
   */    
	$.ajax({
   	      type: "POST",
   	   	  enctype: "multipart/form-data",
   	      url: "/file-upload",
       	  data : formData,
       	  processData: false,
   	      contentType: false,
   	      success: function (data) {
   	    	if(JSON.parse(data)['result'] == "OK"){
   	    		alert("파일업로드 성공");
			} else
				alert("서버내 오류로 처리가 지연되고있습니다. 잠시 후 다시 시도해주세요");
   	      },
   	      error: function (xhr, status, error) {
   	    	alert("서버오류로 지연되고있습니다. 잠시 후 다시 시도해주시기 바랍니다.");
   	     return false;
   	      }
   	    });
   	    return false;
	}
	
	//첨부파일	
	$(document).ready(function() {
		var fileName = $("#fileName__data").val().split('||');
		var filePath = $("#filePath_data").val().split('||');
		
		var reFile = {};
		var fileInfo = "";
	
		for(var i = 0; i < fileName.length; i++){
			if(fileName[i] !== ''){
				$li = $('<li style="float: left;margin:0px 25px 0px 0px" id="filesDel'+ i +'"></li>');
				$('<span>'  + fileName[i] +'</span>').appendTo($li);
				$('<span style="cursor:pointer;color:blue" onclick="delfile('+ i +')"> X </span></li>').appendTo($li);
				$('<input id="filePath'+ i +'" type="hidden" name="boardFile" value="' + filePath[i]+'"  />').appendTo($li);
				$('<input id="fileName'+ i +'" type="hidden" name="boardFileName" value="' + fileName[i]+'" class="form-control" readonly />').appendTo($li);
				$("#reFile").append($li);
			}
		}
	});
	
	//수정 추가 첨부파일 리스트 보여주기
	$(document).ready(function() {
		$("input[type=file]").change(function() {
			var fileInput = document.getElementById("input-file");
					var files = fileInput.files;
					var file ="";
					for (var i = 0; i < files.length; i++) {
						file += '<li style="float: left;margin:0px 25px 0px 0px" id="filesDelAdd'+i+'">' +files[i].name+'<span style="cursor:pointer;color:blue" onclick="delfileAdd('+i+')"> X </sapn></li>'
					}
			$("#fileListName").html(file);
		});
	});
	
	/* 첨부파일 삭제 */
	function delfileAdd(i) {
	    document.querySelector("#file" + i).remove();
	    filesArr[i].is_delete = true;
	}
	
	//추가첨부파일 삭제
	function delfileAdd(i) {
		$("#filesDelAdd" + i).remove();
	 };
	
	//첨부파일 삭제
	function delfile(i) {
		$("#filesDel" + i).remove();
		$("#fileName"+ i).remove();
		$("#filePath"+ i).remove();
	 };
	
	//스마트에디터
	var oEditors = []
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "contents",
	    sSkinURI: "/smarteditor/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	  });
	
	//input 예외 처리 수정확인
	$(document).on('click', '#btn_modify', function(e) {
		oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", [])
		let content = $("#contents").val();
		
		var files = [];
		var filePaths = [];
		for (i=0;i<$("input[name=boardFile]").length;i++) {
			filePaths.push($("input[name=boardFile]").eq(i).val());
		}
		for (i=0;i<$("input[name=boardFileName]").length;i++) {
			files.push($("input[name=boardFileName]").eq(i).val());
		}
		$("input[name=filePaths]").val(filePaths.join("||"));
		$("input[name=files]").val(files.join("||"));

		if (content == '') {
			alert("내용을 입력해주세요.")
			oEditors.getById["contents"].exec("FOCUS")
			return;
		} else if (content != '') {
			if (confirm("수정 하시겠습니까 ?") == true)
				$("#boardForm").submit();
		} else {
			return;
		}
	});
	
	
	//이미지파일
	$(document).ready(function() {
	  var imgFiles = "";
	  // find all articles 
	  var articles = document.getElementsByTagName('article');
	  // find all images in articles 
	  for (var i = 0; i < articles.length; i++) {
	     var imgs = articles[i].getElementsByTagName('img');
	     
	     for (var j = 0; j < imgs.length; j++) {
	       var img = imgs[j];
	       imgFiles += '<span style="margin:0px 25px 0px 0px" id="imgDel'+j+'">' +decodeURI(img.title)+'</span>'; //<span style="cursor:pointer;color:blue" onclick="delimg('+j+')">&nbsp; X &emsp;</span>
	     }
	     
	   }
	  $("#imgFiles").html(imgFiles);
	});	
	
	//이미지 삭제 버튼
	function delimg(j) {
		$("#imgDel"+j).remove(); 
	 };
 
</script>
<!-- ### script ###-->