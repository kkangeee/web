<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!DOCTYPE html>
<!-- #location -->
<!-- <div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">보건관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">보건관리</a></li>
			</ul>
		</li> 
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">안전보건관리</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U1110.do">안전보건관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">안전보건관리체제</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U1110.do">안전보건관리체제</a></li>
				<li><a href="/page/KW30000/KW30000U1210.do">연간계획수립</a></li>
				<li><a href="/page/KW30000/KW30000U1310.do">규정관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">응급의료체계</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U1110.do">안전보건조직구성</a></li>
				<li><a href="/page/KW30000/KW30000U1120.do">안전보건조직관리조직도</a></li>
				<li><a href="/page/KW30000/KW30000U1130.do">산업안전보건위원회구성</a></li>
				<li><a href="/page/KW30000/KW30000U1140.do">산업안전보건위원회조직도</a></li>
				<li><a href="/page/KW30000/KW30000U1150.do">산업안전보건위원회회의록</a></li>
				<li><a href="/page/KW30000/KW30000U1160.do">응급의료체계</a></li>
				<li><a href="/page/KW30000/KW30000U1171.do">건강관리실관리</a></li>
			</ul>
		</li>
	</ul>
</div> -->
<!-- #location -->


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
						안전보건관리 > <span class="subtit">안전보건관리체제</span>
					</h2>
				</div>

				<!-- ▼ 정보입력 영역 -->
				<div class="tab_wrap mt20">
					<ul class="tab_base N7">
						<li><a href="/page/KW30000/KW30000U1110.do"><span>안전보건조직구성</span></a></li>
						<li><a href="/page/KW30000/KW30000U1120.do"><span>안전보건조직관리조직도</span></a></li>
						<li><a href="/page/KW30000/KW30000U1130.do"><span>산업안전보건위원회구성</span></a></li>
						<li><a href="/page/KW30000/KW30000U1140.do"><span>산업안전보건위원회조직도</span></a></li>
						<li><a href="/page/KW30000/KW30000U1150.do"><span>산업안전보건위원회회의록</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1160.do"><span>응급의료체계</span></a></li>
						<li><a href="/page/KW30000/KW30000U1171.do"><span>건강관리실관리</span></a></li>
					</ul>
				</div>
				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
							<!-- ▼ 전체검색 영역 -->
							<span class="board-search">
								<form name="form" id="form" action="?"
									onsubmit="return page.search(this)">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchType">
										<option value="">전체</option>
										<option value="">제목</option>
										<option value="">내용</option>
										<option value="">작성자</option>
									</select> <input type="text" name="searchKeyword" value=""
										placeholder="검색어를 입력하세요.">
									<button type="submit" id="search">검색</button>
								</form>
							</span>

							<!-- ▼ 버튼 영역 -->
						<div class="btn_top">            
				            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw print-button" onclick="printPage()" id="printBtn"><span>인쇄</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
						</div>
						</div>

						<table class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
							</colgroup>
							<thead>
								<tr>
									<th rowspan="2" class="tit"><input type="checkbox" name="agree1" value="Y" id="checkAll"></th>
									<th rowspan="2" class="tit">NO</th>
									<th rowspan="2" class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">구분</option>
										</select>
									</th class="tit">
									<th rowspan="2" class="tit">기관명</th>
									<th rowspan="2" class="tit">소재지</th>
									<th rowspan="2" class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">이동거리</option>
										</select>
									</th>
									<th rowspan="2" class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">소요시간</option>
										</select>
									</th>
									<th colspan="5" class="tit">응급상황 처리가능 여부</th>
									<th rowspan="2" class="tit">연락처</th>
								</tr>
								<tr>
									<th class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">골절</option>
										</select>
									</th>
									<th class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">중독</option>
										</select>
									</th>
									<th class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">화상</option>
										</select>
									</th>
									<th class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">화학물질</option>
										</select>
									</th>
									<th class="tit">기타</th>
							</thead>
							
							<tbody id="dataSection" name="tbody">
							</tbody>
								</table>

				<!-- 페이징 -->
			<div id="paginationBox" class="paging"></div>
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
	
	<script>
	common.checkAll();

	$(document).ready(function() {
		getPage();
	})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U1160selectList", //서비스 주소 
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
					totalCnt += '전체 <strong class="tc_point mr20">' +pagination['listCnt']+ '</strong>현재페이지 <strong class="tc_point"><span></span>' +pagination['page']+ '/' +pagination['listCnt']+ '</strong>'
					
					if(list.length !== 0){	
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < list.length; i++) {
						data += '<tr>';
						data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="frstSysTp">' + list[i].frstSysTp + '</td>';
						data += '<td class="instNm">' + list[i].instNm + '</td>';
						data += '<td class="location">' + list[i].location + '</td>';
						data += '<td class="mvngDstnc">' + list[i].mvngDstnc + '</td>';
						data += '<td class="reqmnTmMm">' + list[i].reqmnTmMm + '</td>';
						data += '<td class="frctCanYn">' + list[i].frctCanYn + '</td>';
						data += '<td class="adctCanYn">' + list[i].adctCanYn + '</td>';
						data += '<td class="burnCanYn">' + list[i].burnCanYn + '</td>';
						data += '<td class="chemMtrlCanYn">' + list[i].chemMtrlCanYn + '</td>';
						data += '<td class="othrCanYn">' + list[i].othrCanYn + '</td>';
						data += '<td class="fonNo">' + list[i].fonNo.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3") + '</td>';
						data += '</tr>';
					}
					} else {
						data += "<tr id='deleteCol'>";
						data += "<td colspan='13'>등록된 게시글이 없습니다.</td>";
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


//res를 obj  (콜백함수, ajax호출 결과에 대한 출력값, 조회되는 그리드)
/* function grid(obj) {
	console.log(obj);

	var html = "";
	for (i in obj) {
		console.log(obj[i]);
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" value="'+ obj[i].seq+ '"></td>';
		html += '<td>' + obj[i].seq + '</td>';
		html += '<td>' + obj[i].empeNo + '</td>';
		html += '<td>' + obj[i].empeNm + '</td>';
		html += '<td>' + obj[i].deptNm + '</td>';
		html += '<td>' + obj[i].prcsNm + '</td>';
		html += '<td>' + obj[i].pstn + '</td>';
		html += '<td>' + obj[i].cmsnrTp + '</td>';
		html += '<td>' + obj[i].rgstDd + '</td>';
		html += '<td><button type="submit" id="search" class="btn_His2">종료</button></td>';
		html += '</tr>';
	}
	$("tbody").html(html);
	$("#insertBtn").show();
	$("#deleteBtn").show();
	$("#updateBtn").show();
	$("#printBtn").show();
	$("#saveBtn").hide();
} */

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
		common.ajaxaa("/page/KW30000/KW30000U1160delete.do", param);
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
		html += '<td class="rnum"><input type="text" value="'+$target.find('.rnum').text()+'" readonly></td>';
		html += '<td class="frstSysTp"><input type="text" value="'+$target.find('.frstSysTp').text()+'"></td>';
		html += '<td class="instNm"><input type="text" value="'+$target.find('.instNm').text()+'"></td>';
		html += '<td class="location"><input type="text" value="'+$target.find('.location').text()+'"></td>';
		html += '<td class="mvngDstnc"><input type="text" value="'+$target.find('.mvngDstnc').text()+'"></td>';
		html += '<td class="reqmnTmMm"><input type="text" value="'+$target.find('.reqmnTmMm').text()+'"></td>';
		if($target.find('.frctCanYn').text() == "Y"){
			html += '<td class="frctCanYn"><select style="width:80px" class="select_bd_tit_A" id="frctCanYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="frctCanYn"><select style="width:80px" class="select_bd_tit_A" id="frctCanYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		if($target.find('.adctCanYn').text() == "Y"){
			html += '<td class="adctCanYn"><select style="width:80px" class="select_bd_tit_A" id="adctCanYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="adctCanYn"><select style="width:80px" class="select_bd_tit_A" id="adctCanYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		if($target.find('.burnCanYn').text() == "Y"){
			html += '<td class="burnCanYn"><select style="width:80px" class="select_bd_tit_A" id="burnCanYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="burnCanYn"><select style="width:80px" class="select_bd_tit_A" id="burnCanYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		if($target.find('.chemMtrlCanYn').text() == "Y"){
			html += '<td class="chemMtrlCanYn"><select style="width:80px" class="select_bd_tit_A" id="chemMtrlCanYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="chemMtrlCanYn"><select style="width:80px" class="select_bd_tit_A" id="chemMtrlCanYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		html += '<td class="othrCanYn"><input type="text" value="'+$target.find('.othrCanYn').text()+'"></td>';
		html += '<td class="fonNo"><input type="text" style="width:100px;" value="'+$target.find('.fonNo').text().replace(/-/g, '')+'"></td>';
		html += '<td style="display:none" class="seq"><input type="text" value="'+$target.find('.seq').text()+'" readonly></td>';
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
		$("#deleteCol").remove();
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="frstSysTp"><input type="text"></td>';
		html += '<td class="instNm"><input type="text"></td>';
		html += '<td class="location"><input type="text"></td>';
		html += '<td class="mvngDstnc"><input type="text"></td>';
		html += '<td class="reqmnTmMm"><input type="text"></td>';
		html += '<td class="frctCanYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '<td class="adctCanYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '<td class="burnCanYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '<td class="chemMtrlCanYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '<td class="othrCanYn"><input type="text"></td>';
		html += '<td class="fonNo"><input class="w100" type="text"></td>';
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

	//저장(추가, 수정시 나오는 버튼) 버튼 클릭시 ajax호출 추가추가
	$("#saveBtn").on("click", function() {
		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
			arr.push({
				//seq클래스에 input유무가 추가, 수정인지 구분 가능(input없으면 추가)
				seq : $target.find('.seq input').val(),
				rnum : $target.find('.rnum input').val(),
				frstSysTp : $target.find('.frstSysTp input').val(),
				instNm : $target.find('.instNm input').val(),
				location : $target.find('.location input').val(),
				mvngDstnc : $target.find('.mvngDstnc input').val(),
				reqmnTmMm : $target.find('.reqmnTmMm input').val(),
				frctCanYn : $target.find('.frctCanYn select').val(),
				adctCanYn : $target.find('.adctCanYn select').val(),
				burnCanYn : $target.find('.burnCanYn select').val(),
				chemMtrlCanYn : $target.find('.chemMtrlCanYn select').val(),
				othrCanYn : $target.find('.othrCanYn input').val(),
				fonNo : $target.find('.fonNo input').val().replace(/-/g, '')
			});
		}
		
		var param = {
			"data" : JSON.stringify(arr)
		};

		if (confirm("저장하시겠습니까?")) {
			common.ajaxaa("/page/KW30000/KW30000U1160save.do", param);
			 getPage();
	     }
		
		$("#insertBtn").show();
		$("#deleteBtn").show();
		$("#updateBtn").show();
		$("#printBtn").show();
		$("#saveBtn").hide();
		
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	//인쇄버튼
	function printPage(){	 
		 window.print();
		}

	
</script>