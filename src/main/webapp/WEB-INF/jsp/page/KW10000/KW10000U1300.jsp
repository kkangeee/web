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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">협력사정보</button>
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
						<li><a href="/page/KW10000/KW10000U1200.do"><span>사업장정보</span></a></li>
						<li class="On"><a href="/page/KW10000/KW10000U1300.do"><span>협력사정보</span></a></li>
					</ul>
				</div>
				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
						

						<!-- ▼ 버튼 영역 -->
				        <div class="btn_top">            
					            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw print-button" onclick="printPage()" id="printBtn"><span>인쇄</span></a>
					    		<a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
					    </div>
					    <!-- ▼ 버튼 영역 -->
						</div>


						<table id="tablePrint" class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>협력사명</th>
									<th>협력사사업장번호</th>
									<th>대표자</th>
							
									<th>
									<input type="hidden" id="sortUnitCoNm">
										<select id="unitCoNmBox" onchange="ckUnitCoNm()" class="select_bd_tit" name="searchType">
											<!-- ajax 호출 -->
										</select>
									</th>
									<th>
									<input type="hidden" id="sortPrcsNm">
										<select id="prcsNmBox" onchange="ckPrcsNm()" class="select_bd_tit" name="searchType">
											<!-- ajax 호출 -->
										</select>
									
									</th>
							
									<th>근로자수</th>
									<th>담당자</th>
									<th>연락처</th>
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
	
		var sortUnitCoNm = $("#sortUnitCoNm").val();  
		var sortPrcsNm = $("#sortPrcsNm").val();
		
		var searchType = $("#searchType").val();        
		var search = $("#searchInput").val();
		
		$.ajax({
				url : "/page/KW10000/KW10000U1300selectList", //서비스 주소 
				data : {  //서비스 처리에 필요한 인자값
					comSearchValA : sortUnitCoNm,
					comSearchValB : sortPrcsNm,
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
						//var select = "";
						var select2 = {};
						var select = {};  
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
							data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
							data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
							data += '<td class="rnum">' + list[i].rnum + '</td>';
							data += '<td class="ptnrCoNm">' + list[i].ptnrCoNm + '</td>';
							data += '<td class="ptnrCoBzRgstno">' + list[i].ptnrCoBzRgstno + '</td>';
							data += '<td class="headNm">' + list[i].headNm + '</td>';
							data += '<td class="unitCoNm">' + list[i].unitCoNm + '</td>';
							data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
							data += '<td class="wrkrCnt">' + list[i].wrkrCnt + '</td>';
							data += '<td class="prsnChrg">' + list[i].prsnChrg+ '</td>';
							data += '<td class="fonNo">' + list[i].fonNo+ '</td>';
							data += '</tr>';
						
							//중복제거 하고 셀렉트 박스에 뿌리기
							if(!select[list[i].unitCoNm]) {
								select[list[i].unitCoNm] = list[i].unitCoNm
							}
							//공정명 중복제거 하고 셀렉트 박스에 뿌리기
							if(!select2[list[i].prcsNm]) {
								select2[list[i].prcsNm] = list[i].prcsNm
							}
						}
								
						////중복제거 하고 셀렉트 박스에 뿌리기
						$("#unitCoNmBox").empty();//해당값 비우기
						$("#unitCoNmBox").append('<option value="" hidden>단위사업체명</option>')
						$("#unitCoNmBox").append('<option value="">전체</option>')
						for(unitCoNm in select){
							$("#unitCoNmBox").append('<option name="SortUnitCoNm" value="'+select[unitCoNm]+'">'+select[unitCoNm]+'</option>')
						}
						
						//공정명 중복제거 하고 셀렉트 박스에 뿌리기
						$("#prcsNmBox").empty();//해당값 비우기
						$("#prcsNmBox").append('<option value="" hidden>공정명</option>')
						$("#prcsNmBox").append('<option value="">전체</option>')
						for(prcsNm in select2){
							$("#prcsNmBox").append('<option name="SortPrcsNm" value="'+select2[prcsNm]+'">'+select2[prcsNm]+'</option>')
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

//단위사업체 정렬
function ckUnitCoNm(){
	let UnitCoNm  = document.getElementById("unitCoNmBox");
	let SortUnitCoNm = (UnitCoNm.options[UnitCoNm.selectedIndex].value);
	$("#sortUnitCoNm").val(SortUnitCoNm); 
	getPage();
};
//공정명 정렬
function ckPrcsNm(){
	let PrcsNm  = document.getElementById("prcsNmBox");
	let SortPrcsNm = (PrcsNm.options[PrcsNm.selectedIndex].value);
	$("#sortPrcsNm").val(SortPrcsNm);
	getPage();
};


//삭제 버튼 클릭시 ajax호출
$("#deleteBtn").on("click",function(){
	if($("input[name=agree1]:checked").length == 0){
		alert("삭제하실 데이터을 선택해주세요");
		return
	};
	var arr =[];
	for ( i=0;i<$("input[name=agree1]:checked").length;i++ ){
		 arr.push({
			 seq : $("input[name=agree1]:checked").eq(i).val()
		 });
	} 
	var param = {
		"data" : JSON.stringify(arr)
	};
	
	 if (confirm("삭제하시겠습니까?")) {
		common.ajaxaa("/page/KW10000/KW10000U1300delete.do", param);
		 getPage();
     }
});


	//수정 버튼 클릭시 ajax호출
$("#updateBtn").on("click", function() {
	if($("input[name=agree1]:checked").length == 0){
		alert("수정하실 데이터을 선택해주세요");
		return
	};
	for (i = 0; i < $("input[name=agree1]:checked").length; i++) {
		$target = $("input[name=agree1]:checked").eq(i).closest('tr');
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" value="new" class="new"></td>';
		html += '<td class="rnum"><input style="width:40px;" type="text" value="'+$target.find('.rnum').text()+'" readonly></td>';
		html += '<td class="ptnrCoNm"><input style="width:110px;" type="text" value="'+$target.find('.ptnrCoNm').text()+'"></td>';
		html += '<td class="ptnrCoBzRgstno"><input style="width:110px;" type="text" value="'+$target.find('.ptnrCoBzRgstno').text()+'"></td>';
		html += '<td class="headNm"><input style="width:110px;" type="text" value="'+$target.find('.headNm').text()+'"></td>';
		html += '<td class="unitCoNm"><input style="width:110px;" type="text" value="'+$target.find('.unitCoNm').text()+'"></td>';
		html += '<td class="prcsNm"><input style="width:110px;" type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
		html += '<td class="wrkrCnt"><input style="width:110px;" type="text" value="'+$target.find('.wrkrCnt').text()+'"></td>';
		html += '<td class="prsnChrg"><input style="width:110px;" type="text" value="'+$target.find('.prsnChrg').text()+'"></td>';
		html += '<td class="fonNo"><input style="width:140px;" type="text" value="'+$target.find('.fonNo').text()+'"></td>';
		html += '<td style="display:none" class="seq"><input style="width:50px;" type="text" value="'+$target.find('.seq').text()+'" readonly></td>';
		html += '</tr>';
		
		$target.before(html);
		$target.hide();
		
	}
		$(".new").prop("checked",true);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();
});


	//추가 버튼 클릭시 tr생성만(ajax안간다.)
	$("#insertBtn").on("click",function() {
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="ptnrCoNm"><input style="width:110px;" type="text"></td>';
		html += '<td class="ptnrCoBzRgstno"><input style="width:110px;" type="text"></td>';
		html += '<td class="headNm"><input style="width:110px;" type="text"></td>';
		html += '<td class="unitCoNm"><input style="width:110px" type="text"></td>';
		html += '<td class="prcsNm"><input style="width:110px;" type="text"></td>';
		html += '<td class="wrkrCnt"><input style="width:110px;" type="text"></td>';
		html += '<td class="prsnChrg"><input style="width:110px;" type="text"></td>';
		html += '<td class="fonNo"><input style="width:140px;" type="text"></td>';
		html += '</tr>';
		
		$("tbody").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();
	});	
			
	//취소버튼 ( 추가, 삭제시 취소)
	function deleteRow(btn) {
		var row = btn.parentNode.parentNode;
		row.parentNode.removeChild(row);
	};

	//저장(추가, 수정시 나오는 버튼) 버튼 클릭시 ajax호출 추가
	$("#saveBtn").on("click", function() {
		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
			arr.push({
				//seq클래스에 input유무가 추가, 수정인지 구분 가능(input없으면 추가)
				seq : $target.find('.seq input').val(),
				rnum : $target.find('.rnum input').val(),
				ptnrCoNm : $target.find('.ptnrCoNm input').val(),
				ptnrCoBzRgstno : $target.find('.ptnrCoBzRgstno input').val(),
				headNm : $target.find('.headNm input').val(),
				unitCoNm : $target.find('.unitCoNm input').val(),
				prcsNm : $target.find('.prcsNm input').val(),
				wrkrCnt : $target.find('.wrkrCnt input').val(),
				prsnChrg : $target.find('.prsnChrg input').val(),
				fonNo : $target.find('.fonNo input').val()
			});
		}

		var param = {
			"data" : JSON.stringify(arr)
		};
		
		$("#insertBtn").show();
		$("#deleteBtn").show();
		$("#updateBtn").show();
		$("#printBtn").show();
		$("#saveBtn").hide();
		
		if (confirm("저장하시겠습니까?")) {
			common.ajaxaa("/page/KW10000/KW10000U1300save.do", param);
			getPage();//페이지 다시 출력
	     }
	});

	
	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	//인쇄버튼
	function printPage(){
		window.print();
	}

</script>