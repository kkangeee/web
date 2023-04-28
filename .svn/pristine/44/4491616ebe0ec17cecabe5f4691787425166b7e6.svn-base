<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

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
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">개인</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">사업장</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">개인</a></li>
			</ul>
		</li>
	</ul>
</div>
-->


<!-- #container -->
<div id="container">

	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>보건관리</h1>
		</div>
	</div>

	<div class="inner">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">


				<!-- ▼ 타이틀 영역 -->
				<div class="con_section ">
					<h2 class="con_sectionTit">
						교육관리 > <span class="subtit">교육종합관리</span>
					</h2>
				</div>

				<!-- ▼ 정보입력 영역 -->
				<div id="ninfo" class="tab_wrap mt20">
					<ul class="tab_base N2">
						<li><a href="/page/KW30000/KW30000U5110.do" target="blank"><span>사업장</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U5120.do"><span>개인</span></a></li>
					</ul>
				</div>

				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div id="searchbox" class="button-group top">
							<!-- ▼ 사업자명 사업자등록번호 검색 영역 -->

							<!-- ▼ 전체검색 영역 -->
							<span class="board-search">
								<form name="form" id="form" action="?" onsubmit="return page.search(this)">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchType">
										<option value="">전체</option>
										<option value="">연도</option>
										<option value="">교육기간</option>
									</select> <input type="text" name="searchKeyword" value="" placeholder="검색어를 입력하세요.">
									<button type="submit" id="search">검색</button>
								</form>
							</span>
							<!-- ▼ 전체검색 영역 -->
							<!-- ▼ 버튼 영역 -->
							<div class="btn_top">
								<a href="javascript:void(0)"
									class="btn_round btn_prt btn_Tw print-button"
									onclick="printPage()" id="printBtn"><span>인쇄</span></a>
							</div>
							<!-- ▼ 버튼 영역 -->
						</div>

						<!-- 테이블01 -->
						<!-- 항목선택 -->
						<!--page totalCnt -->
						<p id="totalCnt" class="allNB"></p>
						<!--page totalCnt -->

						<table id="tablePrint" class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
								<col style="width: 50px">
								<col style="width: 100px">
								<col style="width: 50px">
								<col style="width: 80px">
								<col style="width: 80px">
								<col style="width: 150px">
								<col style="width: 60px">
								<col style="width: 80px">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>공정</th>
									<th>사번</th>
									<th>이름</th>
									<th>교육종류 <select class="select_bd_tit" name="searchType">
											<option value="">정기</option>
											<option value="">채용시</option>
											<option value="">작업변경</option>
									</select>
									</th>
									<th>교육방법 <select class="select_bd_tit" name="searchType">
											<option value="">집체교육</option>
											<option value="">온라인</option>
											<option value="">세미나</option>
											<option value="">기타</option>
									</select>
									</th>
									<th>교육기간</th>
									<th>교육시간</th>
									<th>외부교육 이수증</th>
								</tr>

							</thead>
							<!-- 리스트 -->
							<tbody id="dataSection" name="tbody"></tbody>
							<!-- 리스트 -->
						</table>

						<!-- //테이블01 -->

						<!-- 페이징 -->
						<div id="paginationBox" class="paging"></div>
						<!-- 페이징 -->
					</section>
				</div>
			</div>
		</section>
	</div>
</div>

<!-- 컨텐츠 -->
<!-- //#container -->

<div class="util-bottom">
	<div class="inner">
		<a class="btn-top" href="#wrap"
			onclick="$(window).scrollTop(0); return false;">위로</a>
	</div>
</div>

<script>
	$(document).ready(function() {
		getPage();
	})

	function getPage(page) {
		var searchType = $("#searchType").val();
		var search = $("#searchInput").val();
		$
				.ajax({
					url : "/page/KW30000/KW30000U5120selectList", //서비스 주소 
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

						// 테이블의 row를 삽입하는 부분
						for (var i = 0; i < list.length; i++) {
							data += '<tr>';
							data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
							data += '<td style="display:none" class="seq">'+ list[i].seq + '</td>';
							data += '<td class="rNum">' + list[i].rNum+ '</td>';
							data += '<td class="prcsNm">' + list[i].prcsNm+ '</td>';
							data += '<td class="tgtPplEmpeNo">' + list[i].tgtPplEmpeNo+ '</td>';
							data += '<td class="tgtPplNm">' + list[i].tgtPplNm+ '</td>';
							data += '<td class="eduKnd">'+ list[i].eduKnd + '</td>';
							data += '<td class="eduMth">' + list[i].eduMth+ '</td>';
							data += '<td class="eduImplStrDd">'+ list[i].eduImplStrDd + '</td>';
							data += '<td class="eduTm">'+ list[i].eduTm + '</td>';
							data += '<td class="cmpltnYn"><button type="button" id="search" OnClick="newPopClick();" class="btn_His2">이수증</button></td>';
							data += '</tr>';
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
						// 물어보기
						$("tbody").html(data);
						$("#insertBtn").show();
						$("#deleteBtn").show();
						$("#updateBtn").show();
						$("#printBtn").show();
						$("#saveBtn").hide();
						$("#cancelBtn").hide();
					}
				})
	}
	//인쇄버튼
	function printPage() {
		window.print();
	}
</script>
