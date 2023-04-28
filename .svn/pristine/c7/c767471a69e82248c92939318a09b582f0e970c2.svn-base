<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>


<!-- 20220914 송성빈-->
<!-- ### HTML ###-->
<!DOCTYPE html>

<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">정보마당</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW50010/KW10000U1100.do">사업장관리</a></li>
				<li><a href="/page/KW50020/KW50020U010.do">유해인자관리</a></li>
				<li><a href="/page/KW50030/KW50030U010.do">보건관리</a></li>
				<li><a href="/page/KW50040//KW50040U010.do">내사업한눈에</a></li>
				<li><a href="/page/KW50050//KW50050U010.do">스케쥴관리</a></li>
				<li><a href="/page/KW50060//KW50060U010.do">정보마당</a></li>
				<li><a href="/customer/notice/notice.do">고객지원</a></li>
				<li><a href="#">마이페이지</a></li>

			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">관련서식</button>

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
			<h1>정보마당</h1>
		</div>
	</div>
	<!-- .inner -->
	<div class="inner">
		<!-- #content section////////////////////////////// -->
		
			<section id="content">
				<!-- .board-view -->
				
				<!-- ▼ 타이틀 영역 -->
		        <div class="con_section ">
		            <h2 class="con_sectionTit" style="margin-bottom:10px;"><span class="subtit">관련서식</span></h2> 
		        </div>
				
				<form id="boardForm" action="${pageContext.request.contextPath}/page/KW60000/KW60000U4100update" method="POST" encType="multipart/form-data">
					<table class="board-write">
						<colgroup>
							<col style="width: 240px">
							<col>
						</colgroup>
						<tbody id="tableB">
							<tr>
								<th>게시판</th>
								<td>공지사항</td>
							</tr>
							<tr>
								<th>제목</th>
								<td><input type="text" value="${resultView1.title}" style="width: 100%" name="title" id="title"> 
									<input type="hidden" value="${resultView1.contentId}" name="contentId">
								</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><input type="text" name="displayUser" value="${resultView1.displayUser}"></td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="2">					
									 <textarea style="white-space:pre; height:450px; width: 100%" id="contents" name="content">${resultView1.content}</textarea>							
								</td>
							</tr>
							<tr class="files">
								<th>이미지파일</th>
								<td><div id="imgFiles"></div><td>
							</tr>
							<tr class="files">
								<th>첨부파일</th>
								<td colspan="2">
									<ul style="list-style:none;float:left" id ="reFile"></ul>														
								</td>
							</tr>
							<tr class="files">
								<th><input style="width: 250px" id="input-file" type="file" name="uploadFile" multiple="multiple" ></th>
								<td colspan="2">	
									<ul style="list-style:none;float:left;color: blue" id="fileListName"></ul><br>					
								</td>
							</tr>
						</tbody>
					</table>
					<!-- 숨겨둔 값 -->
					<article>
						<div style="white-space:pre;display: none;" id="contents" class="content">${resultView1.content}</div>
					</article>
					<input type="hidden" name="filePaths" value="">
					<input type="hidden" name="files" value="">
					<!-- 숨겨둔 값 -->
				</form>
				<!-- 숨겨둔 값 -->
				<input id="filePath_data" type="hidden" value="${resultView1.boardFile}" class="form-control" readonly />		
				<input id="fileName__data" type="hidden" value="${resultView1.boardFileName}" class="form-control" readonly />	
				<!-- 숨겨둔 값 -->
				<div class="button-group bottom">
					<!-- <button type="submit">작성</button> -->
					<button type="button" class="primary" id="btn_modify">수정</button>
					<button type="button" class="secondary" onclick="location.href='/page/KW60000/KW60000U4100view.do?contentId=${resultView1.contentId}'">취소</button>
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
	//파일 현재 필드 숫자 totalCount랑 비교값
	const fileCount = 0;
	// 해당 숫자를 수정하여 전체 업로드 갯수를 정한다.
	const totalCount = 10;
	// 파일 고유넘버
	const fileNum = 0;
	// 첨부파일 배열
	const content_files = new Array();
	
	$(document).ready(function() {
			document.getElementById("input-file").innerHTML="#FileReName"; 
			$("#input_file").on("change", fileCheck);
			
			//첨부파일
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
			
			//수정 추가 첨부파일 리스트 보여주기
			$("input[type=file]").change(function() {
				var fileInput = document.getElementById("input-file");
						var files = fileInput.files;
						var file ="";
						for (var i = 0; i < files.length; i++) {
							file += '<li style="float: left;margin:0px 25px 0px 0px" id="filesDelAdd'+i+'">' +files[i].name+'<span style="cursor:pointer;color:blue"  data-delId="'+files[i].lastModified+'" data-delNo="'+i+'" onclick="delAddFile(this)"> X </sapn></li>'
						}
				$("#fileListName").html(file);
			});
			
			//이미지추가
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
	
	//첨부파일로직
	$(function () {
		    $('#btn-upload').click(function (e) {
		        e.preventDefault();
		        $('#input_file').click();
		    });
	});
	
	//등록된 파일 & 이미지 보여주기
	function fileCheck(e) {
		    var files = e.target.files;
		    var filesArr = Array.prototype.slice.call(files);
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
		    //초기화 한다.
		    $("#input_file").val("");
	 }
	
	// 파일 부분 삭제 함수
	function fileDelete(fileNum){
		    var no = fileNum.replace(/[^0-9]/g, "");
		    content_files[no].is_delete = true;
			$('#' + fileNum).remove();
			fileCount --;
	}
	
	//폼 submit 로직
	function registerAction(){
			var form = $("form")[0];        
		 	var formData = new FormData(form);
			for (var x = 0; x < content_files.length; x++) {
					// 삭제 안한것만 담아 준다. 
					if(!content_files[x].is_delete){
						 formData.append("article_file", content_files[x]);
					}
			}
					
		    //파일업로드 multiple ajax처리
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
	}	
	
	//등록된 첨부파일 삭제
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
		
	//이미지 삭제 버튼
	function delimg(j) {
			$("#imgDel"+j).remove(); 
	};
 	
</script>
