<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!-- ### HTML ###-->
<!DOCTYPE html>

<!-- #location
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

			<button onclick="$(this).toggleClass('active').next().slideToggle();">화학제품관리</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW20000/KW20000U1100.do">화학제품관리</a></li>
				<li><a href="/page/KW20000/KW20000U2100.do">유해인자정보관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">경고표지 관리</button>
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
-->

<!-- #container -->
<div id="container">
	<!-- head title -->
	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>유해인자관리</h1>
		</div>
	</div>
	<!-- head title -->
	<!-- .inner -->
	<div class="inner">
		<!-- #content section////////////////////////////// -->
			<section id="content">
				
				<!-- ▼ 타이틀 영역 -->
				<div class="con_section ">
					<h2 class="con_sectionTit" style="margin-top: 10px;">
						화학제품관리 > <span class="subtit">경고표지 관리</span>
					</h2>
				</div>
				<!-- ▼ 타이틀 영역 -->
				
				<div class="button-group top" style="justify-content: flex-end;margin:0px">
					<!-- 검색관련 -->
					<span class="board-search">
					<!-- <form name="form" id="form" action="#" onsubmit="return page.search(this)"> -->
							<input type="hidden" name="pageNum" value="1"> 
							<select name="searchType" id="keywordType">
								<option value="all">전체</option> 
								<option value="title">제목</option>
								<option value="content">내용</option>  
								<option value="displayUser">작성자</option>
							</select> 
							<input type="hidden" id="searchType" value="" />
							<!-- 검색어 -->
							<input type="text" class="form-control form-control-sm" name="keyword" id="keyword" onkeyup="enterkey()" placeholder="검색어를 입력하세요.">
							<button type="submit" id="btnSearch" name="btnSearch">검색</button>
							<input type="hidden" id="searchInput" value="" />
					<!-- </form> -->
					</span>
				</div>
				
				<form id="boardForm" name="boardForm" method="post">
				
					<!--page totalCnt -->
					<div>
						<p id="totalCnt" class="allNB"></p>
					</div>
					<!--page totalCnt -->
					
					<!-- 리스트 -->
					<table class="board-list">
						 
						<colgroup>
							<col style="width: 96px">
							<col>
							<col style="width: 120px">
							<col style="width: 120px">
							<col style="width: 96px">
						</colgroup>
					
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>게시일</th>
								<th>조회</th>
							</tr>
						</thead>
	
						<!-- 리스트 내용 영역 -->
						<tbody id="dataSection">
						</tbody>
						<!-- 리스트 내용 영역 -->
	
					</table>
					<!-- 리스트 -->
	
					<!-- 페이징 -->
					<div id="paginationBox" class="paging"></div>
					<!-- 페이징 -->
				</form>
		
				<!-- 글쓰기 버튼 처리 -->
				<div class="button-group bottom">
				<c:if test="${sessionScope.mbrId eq 'admin'}">
						<button type="button" class="primary" onclick="location.href='/page/KW20000/KW20000U1500_write.do'">경고표지 등록</button>
				</c:if>
				<c:if test="${sessionScope.mbrId ne 'admin'}">
					<!-- admin 사용자만 사용 가능 -->
				</c:if>
				</div>	
			</section>
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
	
	//페이지 로딩시 리스트 호출
	$(document).ready(function() {
		getPage();
	})	

	//검색
	$("#btnSearch").click(function() {
		let searchType = $("#keywordType").val();
		let search = $("#keyword").val();
		
		$("#searchType").val(searchType);
		$("#searchInput").val(search);
		
		getPage();
	});
	
	//검색 Enter Key
	function enterkey() {
		if (window.event.keyCode == 13) {
	    	$("#btnSearch").click();
	    }
	}
	
	//페이지 리스트 출력
	function getPage(page) {
		
		var searchType = $("#searchType").val();
		var search = $("#searchInput").val();
	 	
		$.ajax({
				url : "/page/KW20000/KW20000U1500List", //서비스 주소 
				data : { //서비스 처리에 필요한 인자값
					page : page,
					searchType : searchType,
					keyword : search
				},
				
				success : function(res) {
					const list = res['resultList'];
					const pagination = res['pagination'];
					var totalCnt = "";
					var data = "";
					var block = "";
					
					//페이지 번호 위치				
					totalCnt += '전체 <strong class="tc_point mr20">'
							+ pagination['totalCount']
							+ '</strong>현재페이지 <strong class="tc_point"><span></span>'
							+ pagination.cri['page']
							+ '/'
							+ (Math.ceil(pagination['totalCount']
									/ pagination.cri['perPageNum']))
							+ '</strong>'
							
							//let imgs = .indexOf('src');
							//console.log(imgs);
							
							
																	
					if (totalCnt !== 0) {
						// 테이블의 row를 삽입하는 부분
						
						for (var i = 0; i < list.length; i++) {
							/* 이미지로 출력
							var dummy = document.createElement("div");
							dummy.innerHTML = list[i]['content'];
							var images = Array.from(dummy.querySelectorAll("img[src]"));
							var imgarr = "";
							var sources = images.map(function (item) {
								  return item.src.split("/").pop();
								});
							for(var j=0; j<sources.length; j++){ 
							
								imgarr += "<img style='margin:0px 5px;' width='100px' height='100px' src='/upload/img/"+ sources[j] +"'>";
							}
							*/
							//<img src='/upload/img/"+ sources +"'>
							data += "<tr>";
							data += "<td>" + list[i]['rNum'] + "</td>";
							data += "<td class='imgs' style='cursor: pointer;' onClick='fn_view("+ list[i]['contentId']+ ")'>"+ list[i]['title'] +"</td>";					
							data += "<td>" + list[i]['displayUser']+ "</td>";
							data += "<td>" + list[i]['regDt'] + "</td>";
							data += "<td>" + list[i]['cnt'] + "</td>";
							data += "</tr>";
							
						}
						
					} else {
						data += "<tr>";
						data += "<td></td>";
						data += "<td>등록된 게시글이 없습니다.</td>";
						data += "<td></td>";
						data += "<td></td>";
						data += "<td></td>";
						data += "</tr>";
					}

					// 이전버튼 활성화 여부를 결정하는 부분
					if (pagination['prev']) {
						block += "<a href='javascript:getPage("
								+ pagination['page'] + ")'> << </a>";
						block += "<a href='javascript:getPage("
								+ (pagination['startPage'] - 1)
								+ ")'> < </a>";
						// 시작 페이지 > 처리
					}
					// 번호를 표시하는 부분
					for (var i = pagination['startPage']; i < pagination['endPage'] + 1; i++) {
						block += "<a class='page-link' href='javascript:getPage("
								+ i + ")'>" + i + "</a>";
					}

					// 다음페이지 여부
					if (pagination['next'] && pagination['endPage'] > 0) {
						block += "<a href='javascript:getPage("
								+ (pagination['endPage'] + 1)
								+ ")'> > </a>";
						block += "<a href='javascript:getPage("
								+ (Math.ceil(pagination['totalCount']
										/ pagination.cri['perPageNum']))
								+ ")'> >> </a>";
					}
					
					$("#totalCnt").html(totalCnt);
					$("#dataSection").html(data);
					$("#paginationBox").html(block);
				
					
				}
			})
			
	}
	
		
	//글 상세 보기
	function fn_view(contentId) {
		var form = document.getElementById("boardForm");
		var url = "<c:url value='/page/KW20000/KW20000U1500View'/>?contentId=" + contentId;
		form.action = url;
		form.submit();
	}

	//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, pageSize, searchType, keyword) {
		var url = "<c:url value='/customer/notice/view.do'/>";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&listSize=" + listSize;
		url = url + "&searchType=" + searchType;
		url = url + "&keyword=" + keyword;
		location.href = url;
	}
	
</script>
<!-- ### script ###-->