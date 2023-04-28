<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>


<!-- 20220914 송성빈-->
<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location -->
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
<!-- #location -->


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

			<div id="board-view" class="board-view">
				<div class="head">
					<span class="title">
						<h2>${resultView1.title}</h2>
						<dl>
							<dt>작성자</dt>
							<dd>관리자</dd>
							<dt>작성일</dt>
							<dd>${resultView1.createTimestamp}</dd>
							<dt>조회</dt>
							<dd>${resultView1.cnt}</dd>
						</dl>
					</span>
				</div>

				<div class="body">
					<div style="white-space:pre;" class="content">${resultView1.content}</div>
					<input type="hidden" name="content" value="">
					<dl class="files">
						<dt>첨부파일</dt>
						<c:if test="${resultView1.boardFileName eq null}">
							<dd>첨부파일 없음</dd>
						</c:if>
						<c:if test="${resultView1.boardFileName ne null}">
							<a
								href="${pageContext.request.contextPath}/fileDownload.do?boardFileName=${resultView1.boardFileName}">
								<input type="text" value="${resultView1.boardFileName}"
								name="boardFileName" class="form-control" readonly />
							</a>
						</c:if>
					</dl>
				</div>

				<div class="foot">
					<a style="cursor: pointer;" onClick='fn_prev()' class="prev">
						<p>이전글</p>
					</a> <a style="cursor: pointer;" onClick='fn_next()' class="next">
						<p>다음글</p>
					</a>
				</div>
			</div>

			<div class="button-group bottom">
				<button type="button" class="secondary"
					onclick="location.href='/page/KW30000/KW30000U5400.do'">목록</button>
			<c:if test="${sessionScope.mbrId eq 'admin'}">
				<button class="primary" type="submit"
					onclick="location.href='/page/KW30000/KW30000U5400updateForm/${resultView1.contentId}'">수정</button>
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

	//게시글 삭제 확인
	$(document).on('click', '#btn_delete', function(e) {
		if (confirm("정말 삭제하시겠습니까 ?") == true) {
			var url = "/page/KW30000/KW30000U5400delete/"+${resultView1.contentId};
			location.href = url;
		} else {
			return;
		}
	});
	
	//이전페이지
	function fn_prev() {	
			var index = parseInt(contentId);
			var url = "<c:url value='/page/KW30000/KW30000U5400view'/>?contentId="+ (index - 1);
			location.href = url;
	}
	//다음페이지
	function fn_next() {
			var index = parseInt(contentId);
			var url = "<c:url value='/page/KW30000/KW30000U5400view'/>?contentId="+ (index + 1);
			location.href = url;
	}
	
</script>
<!--### script ###-->