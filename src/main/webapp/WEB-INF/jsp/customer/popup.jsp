<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>


<!-- ### HTML ###-->
<!DOCTYPE html>

<!-- #container -->
<div id="container">
	<!-- head title -->
	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>협회관리자</h1>
		</div>
	</div>
	<!-- head title -->
	<!-- .inner -->
	<div class="inner">
		<!-- #content section////////////////////////////// -->
			<section id="content">
			
				<!-- ▼ 타이틀 영역 -->
		        <div class="con_section ">
		            <h2 class="con_sectionTit"><span class="subtit">팝업관리</span></h2> 
		        </div>
		
				<!--타이틀 영역 -->
				<div class="button-group top" style="justify-content: flex-end;margin:0px">
					<!-- 검색관련 -->
					<span class="board-search">
							<input type="hidden" name="pageNum" value="1"> 
							 <select class="w100" id="searchOption">
					            <option value="all">전체</option>
					            <option value="title">제목</option>
					          </select>
							<!-- 검색어 -->
							<input type="text" name="searchKeyword" id="searchKeyword" onkeyup="enterkey()" placeholder="검색어를 입력하세요.">
							<button type="submit" id="btnSearch" name="btnSearch">검색</button>
							<input type="hidden" id="searchType">
          					<input type="hidden" id="keyword">
					<!-- </form> -->
					</span>
				</div>
				<form id="boardForm" action="" name="boardForm" method="post">
					<!--page totalCnt -->
					<div>
						<p id="totalCnt" class="allNB"></p>
					</div>
					<!--page totalCnt -->
					
					<!-- 리스트 -->
					<table class="board-list">
						 
						<colgroup>
							<col style="width: 40px">
							<col style="width: 120px">
							<col style="width: 80px">
							<col style="width: 80px">
							<col style="width: 60px">
							<col style="width: 60px">
							<col style="width: 60px">
							<col style="width: 60px">
							<col style="width: 45px">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>시작일자</th>
								<th>종료일자</th>
								<th>Top</th>
								<th>Left</th>
								<th>Width</th>
								<th>Height</th>
								<th>공개여부</th>
							</tr>
						</thead>
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
					<c:if test="${sessionScope.mbrId eq 'admin'}">
							<button type="button" class="primary" onclick="location.href='/customer/popup/popup_write.do'">등록</button>
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
	
	// 검색
	$("#btnSearch").click(function() {
		let searchOption = $("#searchOption option:selected").val();
		let searchKeyword = $("#searchKeyword").val();
	 	$("#searchType").val(searchOption);
		$("#keyword").val(searchKeyword);
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
		var search = $("#keyword").val();
		$.ajax({
				url : "/customer/popup/popupList.do", //서비스 주소 
				data : {  //서비스 처리에 필요한 인자값
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
					
					var totalNum = pagination['totalCount'];
					
					if (totalNum !== 0) {
						// 테이블의 row를 삽입하는 부분
						for (var i = 0; i < list.length; i++) {              
							//data += "<tr style='cursor: pointer;' onclick='location.href='/customer/popup/update.do/'" + list[i]['popupId'] + "' >"
							data += "<tr style='cursor: pointer;' onClick='fn_update(" + list[i]['popupId']+ ")'>"
							data += "<td>" + list[i]['rnum'] + "</td>";
							data += "<td>" + list[i]['title'] + "</td>";
							data += "<td>" + list[i]['startDate'] + "</td>";
							data += "<td>" + list[i]['endDate'] + "</td>";
							data += "<td>" + list[i]['opt01'] + "</td>";
							data += "<td>" + list[i]['opt02'] + "</td>";
							data += "<td>" + list[i]['opt03'] + "</td>";
							data += "<td>" + list[i]['opt04'] + "</td>";
							data += "<td>" + list[i]['publicYn'] + "</td>";
							data += "</tr>";
						}
					} else {
						data += "<tr>";
						data += "<td colspan='9'>등록된 게시글이 없습니다.</td>";
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
	function fn_update(popupId) {
		var form = document.getElementById("boardForm");
		var url = "<c:url value='/customer/popup/update.do'/>/" + popupId ;
		form.action = url 
		form.submit();
	}

	//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, pageSize, searchType, keyword) {
		var url = "<c:url value='/customer/popup/view.do'/>";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&listSize=" + listSize;
		url = url + "&searchType=" + searchType;
		url = url + "&keyword=" + keyword;
		location.href = url;
	}
	
</script>
<!-- ### script ###-->