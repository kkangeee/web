<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">��������</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW50010/KW10000U1100.do">��������</a></li>
				<li><a href="/page/KW50020/KW50020U010.do">�������ڰ���</a></li>
				<li><a href="/page/KW50030/KW50030U010.do">���ǰ���</a></li>
				<li><a href="/page/KW50040//KW50040U010.do">������Ѵ���</a></li>
				<li><a href="/page/KW50050//KW50050U010.do">���������</a></li>
				<li><a href="/page/KW50060//KW50060U010.do">��������</a></li>
				<li><a href="/customer/notice/notice.do">��������</a></li>
				<li><a href="#">����������</a></li>

			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">�����ϴ¹���</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/customer/notice/notice.do">��������</a></li>
				<li><a href="/customer/faq/faq.do">�����ϴ¹���</a></li>
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
			<h1>��������</h1>
		</div>
	</div>
	<!-- head title -->
	<!-- .inner -->
	<div class="inner">


		<!-- #content section////////////////////////////// -->
		<section id="content">
			<%-- ���� ��ũ��Ʈ ó�� ��� 1
		 <ul class="board-faq">
				<c:forEach var="resultVo" items="${resultList1}">
					<li>
						<button type="button" class="a"
							onclick="$(this).toggleClass('active').next().slideToggle();">
							<span class="tc_point2">Q.</span>${resultVo.title}</button>
							
						<div class="q"  id="contentup">
							<a onclick="aaaaa()">����</a><b>A. </b>${resultVo.content}<br>		
							<a class="ic_del" onclick="location.href='/customer/faq/delete/${resultVo.contentId}'">����</a>
						<!--	<br> <a href="/?page_id=190">����� �������� Ȯ���ϱ�</a> -->
						</div> <input type="hidden" value="${resultVo.contentId}" /> 
						<div id="buttonup" style="display:none">
						<input type="button" value="��ư" >
						</div>
					</li>
				</c:forEach>
			</ul>--%>
			
			<!-- �� Ÿ��Ʋ ���� -->
			<div class="con_section ">
				<h2 class="con_sectionTit"><span class="subtit">�����ϴ� ����</span></h2>
			</div>
			<!-- �� Ÿ��Ʋ ���� -->
			
			<!-- ������ �̵��� ���� ���2 -->
			<ul class="board-faq">
				<c:forEach var="resultVo" items="${resultList1}">
					<li>
						<button type="button" class="a" onclick="$(this).toggleClass('active').next().slideToggle();">
							<span class="tc_point2">Q.</span>${resultVo.title}</button>
			
						<div class="q">
							<c:if test="${sessionScope.roleAuthId eq 'ADMIN'}">
									<a style="cursor: pointer;" class="ic_del" onclick="btn_del(${resultVo.contentId})">����</a>
									<a style="right: 90px;cursor: pointer;" onclick="btn_mod(${resultVo.contentId})" >����</a> 
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
					<button type="button" class="primary" onclick="location.href='/customer/faq/faq_write.do'">�۾���</button>
				</div>
			</c:if>
		</section>
		<!-- //////////////////////////////#content section -->
	</div>

	<!-- //.inner -->
</div>

<!-- ������ -->

<!-- //#container -->

<div class="util-bottom">
	<div class="inner">
		<a class="btn-top" href="#wrap"
			onclick="$(window).scrollTop(0); return false;">����</a>
	</div>
</div>
<!-- ### HTML ###-->

<!-- ### javascript ###-->
<script type="text/javascript">
	function btn_mod(contentId){
		if (confirm("���� �Ͻðڽ��ϱ� ?") == true) {			
			var url = "/customer/faq/updateForm/"+ contentId;
			location.href = url;	
		} else {
			return;
		}
	}
	
	function btn_del(contentId){
		if (confirm("���� ���� �Ͻðڽ��ϱ� ?") == true) {			
			var url = "/customer/faq/delete/"+ contentId;
			location.href = url;	
		} else {
			return;
		}
	}
</script>
<!-- ### javascript ###-->