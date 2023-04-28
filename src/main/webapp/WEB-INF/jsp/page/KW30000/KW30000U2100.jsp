<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
				<li><a href="/page/KW30000/KW30000U2100.do">건강관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">연간계획수립</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U2100.do">건강검진결과표관리</a></li>
				<li><a href="/page/KW30000/KW30000U2200.do">건강검진현황</a></li>
				<li><a href="/page/KW30000/KW30000U2310.do">건강검진결과통계</a></li>
				<li><a href="/page/KW30000/KW30000U2400.do">근로자건강상담</a></li>
				<li><a href="/page/KW30000/KW30000U2510.do">직업건강평가</a></li>
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
						건강관리 > <span class="subtit">건강검진결과표 관리</span>
					</h2>
				</div>

				<!-- ▼ 정보입력 영역 -->
				<div class="km500">
					<span> 단순반복작업 또는 인체에 과도한 부담을 주는 작업에 의한 건강장해(산업안전보건법 제39조
						보건조치 제1항제5호)<br> 보건관리자의 업무 등(산업안전보건법 시행령 제22조)<br>
						근골격계부담작업으로 인한 건강장해의 예방(산업안전보건기준에 관한 규칙 제12장)
					</span>
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
								<a onclick="window.open('/images/KW50060U230.pdf')"
									class="btn_round btn_down"><span>일반검진결과 수기 등록</span></a>
							</div>
							<div class="btn_top">
								<a href="javascript:void(0)" class="btn_round btn_plus btn_Tw"
									id="insertBtn"><span>추가</span></a> <a href="javascript:void(0)"
									class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
								<a href="javascript:void(0)" class="btn_round btn_del btn_Tw"
									id="deleteBtn"><span>삭제</span></a> <a href="javascript:void(0)"
									class="btn_round btn_save btn_Tw" id="saveBtn"
									style="display: none;"><span>저장</span></a> <a
									href="javascript:void(0)"
									class="btn_round btn_prt btn_Tw print-button"
									onclick="printPage()" id="printBtn"><span>인쇄</span></a> <a
									href="javascript:void(0)" class="btn_round btn_prt btn_Tw"
									id="cancelBtn"><span>취소</span></a>
							</div>
						</div>
						<!-- 테이블01 -->
						<form id="saveForm" enctype="multipart/form-data" method="post">
							<table class="board-list">
								<colgroup>
									<col style="width: 4%">
									<col style="width: 5%">
									<col style="width: 100px">
									<col style="width: 120px">
									<col style="width: 120px">
									<col style="width: 300px">
									<col style="width: 100px">
									<col style="width: 100px">
								</colgroup>
								<thead>
									<tr>
										<th style="height: 10px"><input type="checkbox"
											name="agree1" value="Y" id="checkAll"></th>
										<th>NO</th>
										<th>연도</th>
										<th>검진개시일자</th>
										<th>검진종료일자</th>
										<th>목록</th>
										<th>결과업로드</th>
										<th>결과보기</th>
									</tr>
								</thead>
								<tbody id="dataSection" name="tbody"></tbody>
							</table>
						</form>
						<!-- //테이블01 -->
						<div id="paginationBox" class="paging"></div>
						<div class="km500">
							<span> <span class="km500tit">[ 건강관리 실시근거 ]</span><br>
								<b>일반건강진단(산업안전보건법 제129조)</b> <br> - 상시근로자의 건강관리를 위하여 주기적으로
								실시하는 건강진단<br> - 사무직근로자 2년에 1회, 그 외 근로자 1년에 1회<br>
								-(과태료) 건강진단 대상 근로자 1명당 10만원(1차), 20만원(2차), 30만원(3차이상) <br>
							<br> <b>특수건강진단(산업안전보건법 제130조)</b> <br> - <b
								class="tc_point">★ 시행규칙 별표22</b> 에서 정한 유해인자에 노출되는 근로자의 건강관리를 위하여
								실시하는 건강진단<br> - (과태료)건강진단 대상 근로자 1명당 10만원(1차), 20만원(2차),
								30만원(3차이상)<br>
							<br>

								<p class="point_box">★ 특수건강진단 대상 유해인자(산업안전보건법 시행규칙 별표22)</p>
								<br> 1. 화학적 인자가. 유기화합물(109종)<br>
								<p>
									1) 가솔린(Gasoline; 8006-61-9)<br> <span class="gtext">검진주기
										: 배치후/특수 : 6개월/12개월<br> 검사항목 : 혈액(GOT, GPT, r-GPT)/소변검사
									</span><br> 2) 글루타르알데히드(Gultaraldehyde; 111-30-8)<br> 3)
									β-나프틸아민(β-Naphthylamine; 91-59-8)<br> 4)
									니트로글리세린(Nitroglycerin; 55-63-0)<br> 5) 니트로메탄(Nitromethane;
									75-52-5)<br> 6) 니트로벤젠(Nitrobenzene; 98-95-3)<br> 7)
									p-니트로아닐린(p-Nitroaniline; 100-01-6)<br> 8)
									p-니트로클로로벤젠(p-Nitrochlorobenzene; 100-00-5)<br> 9)
									디니트로톨루엔(Dinitrotoluene; 25321-14-6 등)<br> 10)
									N,N-디메틸아닐린(N,N-Dimethylaniline; 121-69-7)<br>
								</p>
							</span>
						</div>
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


	<!-- ### script ###-->
	<script>
common.checkAll();

$(document).ready(function() {
	getPage();
})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U2100selectList", //서비스 주소 
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
						data += '<td class="examYear">' + list[i].examYear + '</td>';
						data += '<td class="examStrDd">' + list[i].examStrDd + '</td>';
						data += '<td class="examEndDd">' + list[i].examEndDd + '</td>';
						data += '<td class="rsltTbNm">' + list[i].rsltTbNm + '</td>';
						if(!list[i].boardFile == ""){
							data += '<td><a href="'+ list[i].boardFile + '" download>'+ list[i].boardFileName +'</a></td>';
						 } else {
							data += '<td><span>파일 없음</span></td>';
						} 
						data += '<td><button>결과보기</button></td>';
						data += '</tr>';
					}
					} else {
						data += "<tr>";
						data += "<td colspan='6'>등록된 게시글이 없습니다.</td>";
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
		common.ajaxaa("/page/KW30000/KW30000U2100delete.do", param);
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
		html += '<td class="examYear"><input class="w90" type="text" value="'+$target.find('.examYear').text()+'"></td>';
		html += '<td class="examStrDd"><input class="w120" type="date" value="'+$target.find('.examStrDd').text()+'"></td>';
		html += '<td class="examEndDd"><input class="w120" type="date" value="'+$target.find('.examEndDd').text()+'"></td>';
		html += '<td class="rsltTbNm"><input type="text" value="'+$target.find('.rsltTbNm').text()+'"></td>';
		if($target.find('.boardFile').text() != "null"){ 
			html += '<td><button type="button"  style="background-color : #f29886" onclick="updateFile(\''+$target.find('.seq').text()+'\')" class="btn_His2">파일 변경</button></td>';
			html += '<td style="display:none"><input type="file" id="file\''+$target.find('.seq').text()+'\'" name="file\''+$target.find('.seq').text()+'\'"></td>';
		} else {   
			html += '<td><input class="input" type="file" name ="file"></td>';
		} 
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

	function updateFile(seq) {
		if ($("#file"+seq).length == 0 ) {
			$("#saveForm").append('<input type="file" name="file'+seq+'" id="file'+seq+'" hidden>');
		}
		$("#file"+seq).click();
	}

	//추가 버튼 클릭시 tr생성만(ajax안간다.)
	$("#insertBtn").on("click",function() {
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="examYear"><input type="text" class="w90"></td>';
		html += '<td class="examStrDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="examEndDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="rsltTbNm"><input type="text"></td>';
		html += '<td><input type="file" name ="file" class="boardFile"></td>';
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
				examYear : $target.find('.examYear input').val(),
				examStrDd : $target.find('.examStrDd input').val(),
				examEndDd : $target.find('.examEndDd input').val(),
				rsltTbNm : $target.find('.rsltTbNm input').val()
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
			common.ajaxFileSend("/page/KW30000/KW30000U2100save.do", param, null, "saveForm");
			//common.ajaxaa("/page/KW30000/KW30000U1110save.do", param);
			 getPage();
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