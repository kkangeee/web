<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">고객지원</button>
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

			<button onclick="$(this).toggleClass('active').next().slideToggle();">자주하는문의</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/customer/notice/notice.do">공지사항</a></li>
				<li><a href="/customer/faq/faq.do">자주하는문의</a></li>
				<li><a href="/customer/qna/qna.do">QnA</a></li>
			</ul>
		</li>
	</ul>
</div>
-->

<!-- #container -->
<div id="container">
	<!-- head title --> 
	<div class="headline sub_headline sub_headline07">
		<div class="inner">
			<h1>고객지원</h1>
		</div>
	</div>
	<!-- head title -->
	<!-- .inner -->
	<div class="inner">


		<!-- #content section////////////////////////////// -->
		<section id="content">
			<%-- 수정 스크립트 처리 방법 1
		 <ul class="board-faq">
				<c:forEach var="resultVo" items="${resultList1}">
					<li>
						<button type="button" class="a"
							onclick="$(this).toggleClass('active').next().slideToggle();">
							<span class="tc_point2">Q.</span>${resultVo.title}</button>
							
						<div class="q"  id="contentup">
							<a onclick="aaaaa()">수정</a><b>A. </b>${resultVo.content}<br>		
							<a class="ic_del" onclick="location.href='/customer/faq/delete/${resultVo.contentId}'">삭제</a>
						<!--	<br> <a href="/?page_id=190">가까운 지역본부 확인하기</a> -->
						</div> <input type="hidden" value="${resultVo.contentId}" /> 
						<div id="buttonup" style="display:none">
						<input type="button" value="버튼" >
						</div>
					</li>
				</c:forEach>
			</ul>--%>
			
			<!-- ▼ 타이틀 영역 -->
			<div class="con_section ">
				<h2 class="con_sectionTit"><span class="subtit">자주하는 문의</span></h2>
			</div>
			<!-- ▼ 타이틀 영역 -->
			
			<!-- 페이지 이동식 수정 방법2 -->
			<ul class="board-faq">
				<c:forEach var="resultVo" items="${resultList1}">
					<li>
						<button type="button" class="a" onclick="$(this).toggleClass('active').next().slideToggle();">
							<span class="tc_point2">Q.</span>${resultVo.title}</button>
			
						<div class="q">
							<c:if test="${sessionScope.roleAuthId eq 'ADMIN'}">
									<a style="cursor: pointer;" class="ic_del" onclick="btn_del(${resultVo.contentId})">삭제</a>
									<a style="right: 90px;cursor: pointer;" onclick="btn_mod(${resultVo.contentId})" >수정</a> 
							</c:if>
							<!-- content -->
							<b>A.</b><div style="white-space:pre;">${resultVo.content}</div><br> 
							<!-- content -->
						</div> <input type="hidden" value="${resultVo.contentId}" />
					</li>
				</c:forEach>
			</ul>
			<c:if test="${sessionScope.roleAuthId eq 'ADMIN'}">
				<div class="button-group bottom">
					<button type="button" class="primary" onclick="location.href='/customer/faq/faq_write.do'">글쓰기</button>
				</div>
			</c:if>
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

<!-- ### javascript ###-->
<script type="text/javascript">
	function btn_mod(contentId){
		if (confirm("수정 하시겠습니까 ?") == true) {			
			var url = "/customer/faq/updateForm/"+ contentId;
			location.href = url;	
		} else {
			return;
		}
	}
	
	function btn_del(contentId){
		if (confirm("정말 삭제 하시겠습니까 ?") == true) {			
			var url = "/customer/faq/delete/"+ contentId;
			location.href = url;	
		} else {
			return;
		}
	}
</script>
<!-- ### javascript ###-->