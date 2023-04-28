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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">MSDS
				조회 및 등록</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW20000/KW20000U1100.do">MSDS 조회 및 등록</a></li>
				<li><a href="/page/KW20000/KW20000U1200.do">화학제품 현황</a></li>
				<li><a href="/page/KW20000/KW20000U1300.do">화학물질 입출고 현황</a></li>
				<li><a href="https://msds.kosha.or.kr/MSDSInfo/kcic/msds/msds.do?page=ghs02">경고표지 작성</a></li>
				<li><a href="/page/KW20000/KW20000U1500.do">경고표지 관리</a></li>
			</ul>
		</li>
	</ul>
</div>
<!--#location -->

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
		<!-- #content section////////////////////////////// -->

		<section id="content">
			<!-- .board-view -->
			
			<!-- ▼ 타이틀 영역 -->
			<div class="con_section ">
				<h2 class="con_sectionTit" style="margin-top: 10px;">
					유해인자관리 / <span class="subtit">경고표지 관리</span>
				</h2>
			</div>
			<!-- ▼ 타이틀 영역 -->

			<div id="board-view" class="board-view">
				<div class="head">
					<span class="title">
						<h2>${resultView1.title}</h2>
						<dl>
							<dt>작성자</dt>
							<dd>${resultView1.displayUser}</dd>
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
<!-- 					<dl class="files"> -->
<!-- 						<dt style="width: 70px">첨부파일</dt> -->
<!-- 						<dd> -->
<!-- 							<div id ="reFile"></div> -->
<%-- 							<input id="filePath" type="hidden" value="${resultView1.boardFile}" name="boardFileName" class="form-control" readonly />		 --%>
<%-- 							<input id="fileName" type="hidden" value="${resultView1.boardFileName}" name="boardFileName" class="form-control" readonly />		 --%>
<!-- 						</dd>						 -->
<!-- 					</dl> -->
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
			<button type="button" class="secondary" onclick="location.href='/page/KW20000/KW20000U1500.do'">목록</button>
			<c:if test="${sessionScope.mbrId eq 'admin'}">
				<button class="primary" type="submit" onclick="location.href='/page/KW20000/KW20000U1500Update.do/${resultView1.contentId}'">수정</button>
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
<!-- <script src="/public/clipboard/clipboard.min.js"></script> -->
<script>

	//url 받아 오기
	var urlParams = new URL(location.href).searchParams;
	var contentId = urlParams.get('contentId'); 
	
	//파일값 받아오기
	//if($("#fileName").val() !== '') var fileName = $("#fileName").val().split('||');
	//if($("#filePath").val() !== '') var filePath = $("#filePath").val().split('||');
	
	$(document).ready(function() {
		//이미지파일
		 var imgFiles = "";
		 var articles = document.getElementsByTagName('article');
		 for (var i = 0; i < articles.length; i++) {
		     var imgs = articles[i].getElementsByTagName('img');
		     for (var j = 0; j < imgs.length; j++) {
		       var img = imgs[j];
		       imgFiles += '<a style="color:blue;margin:0px 20px;" href="'+ img.src +'" download>' +decodeURI(img.title)+'</a>';
		     
		     }
		   }
		  $("#imgFiles").html(imgFiles);
		  
		/*
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
		*/
	});
	
	//게시글 삭제 확인
	$(document).on('click', '#btn_delete', function(e) {
		if (confirm("정말 삭제하시겠습니까 ?") == true) {
			var url = "/page/KW20000/KW20000U1500Delete/"+${resultView1.contentId};
			location.href = url;
		} else {
			return;
		}
	});

	//이전페이지
	function fn_prev() {	
			var index = parseInt(contentId);
			var url = "<c:url value='/page/KW20000/KW20000U1500View'/>?contentId="+ ${resultView1.preContentId};
			location.href = url;
	}
	//다음페이지
	function fn_next() {
			var index = parseInt(contentId);
			var url = "<c:url value='/page/KW20000/KW20000U1500View'/>?contentId="+ ${resultView1.nextContentId};
			location.href = url;
	}
	
	
</script>
<!--### script ###-->