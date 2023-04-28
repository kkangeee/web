<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

			<div id="board-view" class="board-view">
				<div class="head">
					<span class="title">
					<h2>${resultView1.title}</h2>
						<dl>
							<dt>작성자</dt>
							<dd>관리자</dd>
							<dt>작성일</dt>
							<dd>${resultView1.regDt}</dd>
							<dt>조회</dt>
							<dd>${resultView1.cnt}</dd>
						</dl>
					</span>
				</div>

				<div class="body">
					<article>
						<div style="white-space:pre;" id="contents" class="content">${resultView1.content}</div>
					</article>
					<dl class="files" style="border-bottom: 1px solid #eeeeee;">
						<dt>이미지파일</dt>
						<dd><div id="imgFiles"></div></dd>					
					</dl>
					<dl class="files">
						<dt style="width: 70px">첨부파일</dt>
						<dd>
							<div id ="reFile"></div>
							<input id="filePath" type="hidden" value="${resultView1.boardFile}" name="boardFileName" class="form-control" readonly />		
							<input id="fileName" type="hidden" value="${resultView1.boardFileName}" name="boardFileName" class="form-control" readonly />		
						</dd>											
					</dl>
				</div>

				<div class="foot">
					<c:if test="${resultView1.preTitle ne null}">
						<a style="cursor: pointer;" onClick='fn_prev()' class="prev"> 
							<p>이전글</p>
							<span>${resultView1.preTitle}</span> 					
						</a> 
					</c:if>
					<c:if test="${resultView1.nextTitle ne null}">
						<a style="cursor: pointer;" onClick='fn_next()' class="next">
							<p>다음글</p> 
							<span>${resultView1.nextTitle}</span> 
						</a>
					</c:if>
				</div>
			</div>

			<div class="button-group bottom">
				<button type="button" class="secondary"
					onclick="location.href='/page/KW60000/KW60000U4100.do'">목록</button>
			<c:if test="${sessionScope.mbrId eq 'admin'}">
				<button class="primary" type="submit"
					onclick="location.href='/page/KW60000/KW60000U4100update.do/${resultView1.contentId}'">수정</button>
				<button type="submit" id="btn_delete" class="secondary">삭제</button>
			</c:if>
			</div>
			<!-- //.board-view -->
		</section>
		<!-- //////////////////////////////#content section -->

	</div>
	<!-- //.inner -->
</div>
<!-- 컨텐츠 -->

<form name="listFrm" id="listFrm" method="post">
	<input type="hidden" name="boardSeq" value="" /> <input type="hidden"
		name="boardCd" value="" />
</form>

<!-- //#container -->
<div class="util-bottom">
	<div class="inner">
		<a class="btn-top" href="#wrap"
			onclick="$(window).scrollTop(0); return false;">위로</a>
	</div>
</div>
<!-- ### HTML ###-->

<!--### script ###-->
<script src="/public/clipboard/clipboard.min.js"></script>
<script>

	//url 받아 오기
	var urlParams = new URL(location.href).searchParams;
	var contentId = urlParams.get('contentId'); 
	
	//파일값 받아오기
	if($("#fileName").val() !== '') var fileName = $("#fileName").val().split('||');
	if($("#filePath").val() !== '') var filePath = $("#filePath").val().split('||');

	$(document).ready(function() {
	
		//이미지파일
		 var imgFiles = "";
		 // find all articles 
		 var articles = document.getElementsByTagName('article');
    	 // find all images in articles 
		 for (var i = 0; i < articles.length; i++) {
		     var imgs = articles[i].getElementsByTagName('img');
		     for (var j = 0; j < imgs.length; j++) {
		       var img = imgs[j];
		       imgFiles += '<a style="color:blue;margin:0px 20px;" href="'+ img.src +'" download>' +decodeURI(img.title)+'</a>';
		     
		     }
		   }
		  $("#imgFiles").html(imgFiles);
		
		//첨부파일	
		var reFile = "";
		if(fileName === undefined) { 
			reFile += '<span style="margin-left: 23px;">첨부파일 없음</span>';
		} else {
			for(var i = 0; i < fileName.length; i++){					 
				if(fileName[i] !== '')reFile += '<a style="color:blue;margin:0px 20px;" href="${pageContext.request.contextPath}/fileDownload.do?boardFile='+ filePath[i] +'">'+ fileName[i] + '</a>';	
			}	
		}
		$("#reFile").html(reFile);	
		
	});
	

	//게시글 삭제 확인
	$(document).on('click', '#btn_delete', function(e) {
		if (confirm("정말 삭제하시겠습니까 ?") == true) {
			var url = "/page/KW60000/KW60000U4100delete/"+${resultView1.contentId};
			location.href = url;
		} else {
			return;
		}
	});
	
	//이전페이지
	function fn_prev() {	
			var index = parseInt(contentId);
			var url = "<c:url value='/page/KW60000/KW60000U4100view.do'/>?contentId="+ ${resultView1.preContentId};
			location.href = url;
	}
	//다음페이지
	function fn_next() {
			var index = parseInt(contentId);
			var url = "<c:url value='/page/KW60000/KW60000U4100view.do'/>?contentId="+ ${resultView1.nextContentId};
			location.href = url;
	}
	
</script>
<!--### script ###-->