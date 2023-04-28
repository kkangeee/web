<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">사업장관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW10000/KW10000U1100.do">사업장관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">기본정보관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW10000/KW10000U1100.do">기본정보관리</a></li>
				<li><a href="/page/KW10000/KW10000U2100.do">공정정보관리</a></li>
				<li><a href="/page/KW10000/KW10000U3100.do">근로자정보관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">사업장정보</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW10000/KW10000U1100.do">사업자정보</a></li>
				<li><a href="/page/KW10000/KW10000U2100.do">사업장정보</a></li>
				<li><a href="/page/KW10000/KW10000U3100.do">협력사정보</a></li>
			</ul>
		</li>
	</ul>
</div>
-->

<!-- #container -->
<div id="container">

	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>사업장관리</h1>
		</div>
	</div>

	<div class="inner">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">

					<!-- ▼ 타이틀 영역 -->
		        <div class="con_section ">
		            <h2 class="con_sectionTit"><span class="subtit">기본정보관리</span></h2> 
		        </div>
				
				<!-- ▼ 정보입력 영역 -->
				<div class="tab_wrap mt20">
					<ul class="tab_base N2">
						<li><a href="/page/KW10000/KW10000U1100.do"><span>사업자정보</span></a></li>
						<li class="On"><a href="/page/KW10000/KW10000U1200.do"><span>사업장정보</span></a></li>
						<li><a href="/page/KW10000/KW10000U1300.do"><span>협력사정보</span></a></li>
					</ul>
				</div>
				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
							<!-- ▼ 버튼 영역 -->
					        <div class="btn_top">            
						            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw print-button" onclick="printPage()" id="printBtn"><span>인쇄</span></a>
						    </div>
						    <!-- ▼ 버튼 영역 -->
						</div>


						<table id="tablePrint" class="board-list">
							<colgroup>
								<col style="width: 5%">
								<col style="width: 60px">
								<col style="width: 120px">
								<col style="width: 100px">
								<col style="width: 50px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 100px">
							</colgroup>
							<thead>
								<tr>
									<th>NO</th>
									<th>사업장명</th>
									<th colspan="3">사업장 주소<br><span>상세/</span><span>도로명/</span><span>우편번호</span></th>
									<th>사업장고유번호</th>
									<th>대표자명</th>
									<th>업종/업태/종목</th>
								</tr>
							</thead>
							
							<!-- 리스트 영역 -->
							<tbody id="dataSection" name="tbody"></tbody>
							<!-- 리스트 영역 -->							
						</table>


						<!-- 페이징 -->
						<div id="paginationBox" class="paging"></div>
						<!-- 페이징 -->
					</section>
				</div>


			</div>
		</section>
	</div>
	<!-- 컨텐츠 -->
	<!-- //#container -->

	<div class="util-bottom">
		<div class="inner">
			<a class="btn-top" href="#wrap"
				onclick="$(window).scrollTop(0); return false;">위로</a>
		</div>
	</div>
</div>

<script>

$(document).ready(function() {
	getPage();
})


function getPage(page) {
	
		$.ajax({
				url : "/page/KW10000/KW10000U1200List", //서비스 주소 
				data : {  //서비스 처리에 필요한 인자값
					page : page,
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
											
						// 테이블의 row를 삽입하는 부분
						for (var i = 0; i < list.length; i++) {
							data += '<tr id="tBodyPrint">';
							data += '<td class="rnum">' + list[i].rnum + '</td>';
							data += '<td class="ptnrCoBzRgstno">' + list[i].wrkPlcNm + '</td>';
							data += '<td class="unitCoNm">' + list[i].strtNmAdd + '</td>';
							data += '<td class="prcsNm">' + list[i].strtNmDtlAdd + '</td>';
							data += '<td class="headNm">' + list[i].plcNoAdd + '</td>';
							data += '<td class="wrkrCnt">' + list[i].wrkPlcCd + '</td>';
							data += '<td class="prsnChrg">' + list[i].headNm+ '</td>';
							data += '<td class="fonNo">' + list[i].bzItem+ '</td>';
							data += '</tr>';
				
						}
							
						// 이전버튼 활성화 여부를 결정하는 부분
						if (pagination['prev']) {
							block += "<a href='javascript:getPage(" + pagination['page'] + ")'> << </a>";
							block += "<a href='javascript:getPage(" + (pagination['startPage'] - 1) + ")'> < </a>";
							// 시작 페이지 > 처리
						}
						// 번호를 표시하는 부분
						for (var i = pagination['startPage']; i < pagination['endPage'] + 1 ; i++) {
							block += "<a class='page-link' href='javascript:getPage(" + i + ")'>" + i + "</a>";
						}
	
						// 다음페이지 여부
						if (pagination['next'] && pagination['endPage'] > 0) {
							block += "<a href='javascript:getPage(" + (pagination['endPage'] + 1) + ")'> > </a>";
							block += "<a href='javascript:getPage(" + (Math.ceil(pagination['totalCount'] / pagination.cri['perPageNum'])) + ")'> >> </a>";
						}
												
						$("#totalCnt").html(totalCnt);
						$("#dataSection").html(data);
						$("#paginationBox").html(block);
				
						$("#printBtn").show();
				
				}
		})
}
	
	//인쇄버튼
	function printPage(){
		window.print();
	}

</script>