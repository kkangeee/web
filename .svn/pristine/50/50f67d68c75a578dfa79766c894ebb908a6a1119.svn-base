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
			
			<button onclick="$(this).toggleClass('active').next().slideToggle();">공지사항</button>
			
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
	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>고객지원</h1>
		</div>
	</div>
	<!-- head title -->
	<!-- .inner -->
	<div class="inner">
		<!-- #content section////////////////////////////// -->
			<section id="content">
			
				<!-- ▼ 타이틀 영역 -->
		        <div class="con_section ">
		            <h2 class="con_sectionTit"><span class="subtit">공지사항</span></h2> 
		        </div>
		
				<!--타이틀 영역 -->
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
				</form>
					<!-- 페이징 -->
					<div id="paginationBox" class="paging"></div>
					<!-- 페이징 -->
				
		
				<!-- 글쓰기 버튼 처리 -->
				<div class="button-group bottom">
					<c:if test="${sessionScope.roleAuthId eq 'ADMIN'}">
							<button type="button" class="primary" onclick="location.href='/customer/notice/notice_write.do'">글쓰기</button>
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
				url : "/customer/notice/noticeList.do", //서비스 주소 
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
					//페이지 번호 위치
					
					if (totalCnt !== 0) {
						// 테이블의 row를 삽입하는 부분
						for (var i = 0; i < list.length; i++) {
							data += "<tr>";
							data += "<td>" + list[i]['rnum'] + "</td>";
							data += "<td style='cursor: pointer;' onClick='fn_view("
									+ list[i]['contentId']
									+ ")'>"
									+ list[i]['title'] + "</td>";
							data += "<td>" + list[i]['displayUser']
									+ "</td>";
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
		var url = "<c:url value='/customer/notice/view.do'/>?contentId="+ contentId;
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