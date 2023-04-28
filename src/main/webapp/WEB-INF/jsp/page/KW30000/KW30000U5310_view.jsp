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
							<td>${resultView1.tchrNm}</td>
							<th>강사소속</th>
							<td>${resultView1.tchrAflt}</td>
						</tr>
						<tr>
							<th>대상공정명</th>                                      
							<td>${resultView1.tgtPrcsNm}</td>
							<th>대상인원&nbsp;/&nbsp;이수인원</th>
							<td>${resultView1.tgtPplCnt}&nbsp;/&nbsp;${resultView1.cmpltnPplCnt}</td>
						</tr>
						<tr>
							<th>교육기간(H)</th>
							<td>${resultView1.eduImplStrDd}&nbsp;~&nbsp;${resultView1.eduImplEndDd}&nbsp;[${resultView1.eduTm}H]
							</td>
							<th>교육 종류&nbsp;/&nbsp;방법</th>
							<td>${resultView1.eduKnd}&nbsp;/&nbsp;${resultView1.eduMth}</td>
						</tr>
						<tr>
							<th>교육과목명</th>
							<td colspan="3">${resultView1.eduSbjtNm}</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td colspan="3">${resultView1.createObjectId}<input type="hidden" value="${resultView1.contentId}" name="contentId"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="3">
						    	<article>
									<div style="width:100%;height:500px;white-space:pre;" id="contents" class="content">${resultView1.content}</div>
								</article>
							</td>
						</tr>
						<tr>
							<tr class="files">
								<th>이미지파일</th>
								<td style="padding-left: 0px;" colspan="3"><div id="imgFiles"></div></td>
							</tr>
							<tr class="files">
								<th>교육자료 다운</th>
								<c:if test="${resultView1.boardFile eq null}">
									<td style="padding-left: 0px;" colspan="3">첨부파일 없음</td>
								</c:if>
								<c:if test="${resultView1.boardFile ne null}">
								<td style="padding-left: 0px;" colspan="3">
									<div id ="reFile"></div>
									<input id="filePath" type="hidden" value="${resultView1.boardFile}" name="boardFileName" class="form-control" readonly />		
									<input id="fileName" type="hidden" value="${resultView1.boardFileName}" name="boardFileName" class="form-control" readonly />		
								</td>
								</c:if>	
							</tr>
					</tbody>
				</table>
				<div id="board-view" class="board-view">
					<div class="foot">
						<c:if test="${resultView1.preEduSbjtNm ne null}">
							<a style="cursor: pointer;" onClick='fn_prev()' class="prev"> 
								<p>이전글</p>
								<span>${resultView1.preEduSbjtNm}</span> 					
							</a> 
						</c:if>
						<c:if test="${resultView1.nextEduSbjtNm ne null}">
							<a style="cursor: pointer;" onClick='fn_next()' class="next">
								<p>다음글</p> 
								<span>${resultView1.nextEduSbjtNm}</span> 
							</a>
						</c:if>
					</div>
				</div>
			<div class="button-group bottom">
				<button type="button" class="secondary"
					onclick="location.href='/page/KW30000/KW30000U5310.do'">목록</button>
			<c:if test="${sessionScope.mbrId eq 'admin'}">
				<button class="primary" type="submit" onclick="location.href='/page/KW30000/KW30000U5310update.do/${resultView1.contentId}'">수정</button>
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
			var url = "/page/KW30000/KW30000U5310Delete/"+${resultView1.contentId};
			location.href = url;
		} else {
			return;
		}
	});

	//이전페이지
	function fn_prev() {	
			var index = parseInt(contentId);
			var url = "<c:url value='/page/KW30000/KW30000U5310view.do'/>?contentId="+ (index - 1);
			location.href = url;
	}
	//다음페이지
	function fn_next() {
			var index = parseInt(contentId);
			var url = "<c:url value='/page/KW30000/KW30000U5310view.do'/>?contentId="+ (index + 1);
			location.href = url;
	}
	
</script>
<!--### script ###-->