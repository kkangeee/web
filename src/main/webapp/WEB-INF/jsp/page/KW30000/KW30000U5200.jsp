<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();" class="">보건관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">보건관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">교육관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">안전보건관리</a></li>
				<li><a href="/page/KW30000/KW30000U5110.do">건강관리</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">예방프로그램관리</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">작업환경관리</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">교육관리</a></li>
				<li><a href="/page/KW30000/KW30000U5310.do">산업재해관리</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">교육자료 다운</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">도급관리</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">교육자료 다운</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">외부교육승인</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">교육종합관리</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">외부교육승인</a></li>
				<li><a href="/page/KW30000/KW30000U5310.do">교육계획/실시등록</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">교육자료 다운</a></li>
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
					<h2 class="con_sectionTit">교육관리 > <span class="subtit">외부 교육 승인</span></h2>
				</div>

				<!-- ▼ 정보입력 영역 -->

				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
							<!-- ▼ 사업자명 사업자등록번호 검색 영역 -->

							<!-- ▼ 전체검색 영역 -->
							<span class="board-search">
								<form name="form" id="form" action="?"
									onsubmit="return page.search(this)">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchType">
										<option value="">전체</option>
										<option value="">연도</option>
										<option value="">교육기간</option>
									</select> <input type="text" name="searchKeyword" value=""
										placeholder="검색어를 입력하세요.">
									<button type="submit" id="search">검색</button>
								</form>
							</span>
							<!-- ▼ 전체검색 영역 -->



							<!-- ▼ 전체검색 영역 -->

							<!-- ▼ 버튼 영역 -->
					        <div class="btn_top">            
						            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
									<a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
							</div>
							<!-- ▼ 버튼 영역 -->
						</div>
						

						<!-- 테이블01 -->
						<!-- 항목선택 -->
<!-- 						<span class="board_Ttxt">근로자용 외부교육 등록과 연계 / 보건담당자가 승인하면 개인별 -->
<!-- 							이수현황에 자동 등록 / 단체 외부 교육 시 양식 밀어넣기 기능 필요 </span> -->
						<!--page totalCnt -->
						<div>
							<p id="totalCnt" class="allNB"></p>
						</div>
						<!--page totalCnt -->	
						<table class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
								<col style="width: 50px">
								<col style="width: 60px">
								<col style="width: 70px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 80px">
								<col style="width: 110px">
								<col style="width: 70px">
								<col style="width: 70px">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>승인</th>
									<th>공정</th>
									<th>사번</th>
									<th>이름</th>
									<th>교육방법</th>
									<th>교육명</th>
									<th>교육기간</th>
									<th>외부교육기관</th>
									<th>증빙서류</th>
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

//인쇄버튼
function printPage() {
	window.print();
}

//페이지 리스트 가져오기
function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	
	$.ajax({
				url : "/page/KW30000/KW30000U5200selectList", //서비스 주소 
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
					
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < list.length; i++) {
						data += '<tr>';
						data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq + '"></td>';
						data += '<td style="display:none" class="seq">'+ list[i].seq + '</td>';
						data += '<td class="rNum">' + list[i].rNum+ '</td>';
						data += '<td style="display:none" class="outEduYn">' + list[i].outEduYn + '</td>';
						if(list[i].outEduYn == 'Y'){
							data += '<td class="cmpltnYn"><button data-csv="'+ 1 +'" data-tgtPplEmpeNo="'+ list[i].tgtPplEmpeNo +'" data-bzRgstNo="'+ list[i].bzRgstNo +'" data-seq="'+ list[i].seq + '" type="button" id="search" onClick="yn_clickFunc(this);" class="btn_His2">승인완료</button></td>';
					
						} else {
							data += '<td class="cmpltnYn"><button  data-csv="'+ 2 +'" data-tgtPplEmpeNo="'+ list[i].tgtPplEmpeNo +'" data-bzRgstNo="'+ list[i].bzRgstNo +'" data-seq="'+ list[i].seq + '" style="background:#f29886" type="button" id="search" onClick="yn_clickFunc(this);" class="btn_His2">미승인</button></td>';
						}
						data += '<td class="prcsNm">' + list[i].prcsNm+ '</td>';
						data += '<td class="tgtPplEmpeNo">' + list[i].tgtPplEmpeNo+ '</td>';
						data += '<td class="tgtPplNm">' + list[i].tgtPplNm+ '</td>';
						data += '<td class="eduMth">'+ list[i].eduMth + '</td>';
						data += '<td class="eduSbjtNm">'+ list[i].eduSbjtNm + '</td>';
						data += '<td class="eduImplStrDd">'+ list[i].eduImplStrDd + '</td>';
						data += '<td class="eduInstNm">'+ list[i].eduInstNm + '</td>';
						data += '<td style="display:none" class="atchFileYn">'+ list[i].atchFileYn + '</td>';
						if(list[i].atchFileYn == 'Y'){
							data += '<td class="cmpltnYn"><button style="background:#d3d3d3" type="button" id="search" OnClick="sprtnDcmntPop();" class="btn_His2">이수증확인</button></td>';
						} else {
							data += '<td><span></span></td>';
						}
						data += '<td id="bzRgstNo" style="display:none" class="bzRgstNo">'+ list[i].bzRgstNo + '</td>';
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
		common.ajaxaa("/page/KW30000/KW30000U5340delete.do", param);
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
		html += '<tr style="width:40px;">';
		html += '<td><input style="width:40px;" type="checkbox" name="agree1" value="new" class="new"></td>';
		html += '<td class="rNum"><input style="width:50px;margin-right:-15px;" type="text" value="'+$target.find('.rNum').text()+'" disabled></td>';
		html += '<td style="width:50px;" class="outEduYn"><input style="width:50px;margin-left:2px;" type="text" value="'+$target.find('.outEduYn').text()+'" disabled></td>';
		html += '<td class="prcsNm"><input style="width:110px;" type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
		html += '<td class="tgtPplEmpeNo"><input style="width:130px;" type="text" value="'+$target.find('.tgtPplEmpeNo').text()+'"></td>';
		html += '<td class="tgtPplNm"><input style="width:112px;" type="text" value="'+$target.find('.tgtPplNm').text()+'"></td>';
		html += '<td class="eduMth"><input style="width:110px;" type="text" value="'+$target.find('.eduMth').text()+'"></td>';
		html += '<td class="eduSbjtNm"><input style="width:150px;" type="text" value="'+$target.find('.eduSbjtNm').text()+'"></td>';
		html += '<td class="eduImplStrDd"><input style="width:220px;" type="text" value="'+$target.find('.eduImplStrDd').text()+'"></td>';
		html += '<td class="eduInstNm"><input style="width:130px;margin-right:-6px;" type="text" value="'+$target.find('.eduInstNm').text()+'"></td>';
		html += '<td class="cmpltnYn"><input style="margin-left:15px;" type="file" name="uploadFile" multiple="multiple" value=""></td>';
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
		html += '<td class="rNum"></td>';
		html += '<td style="width:60px;padding-left:15px;" class="outEduYn" disabled></td>';
		html += '<td class="prcsNm"><input style="width:110px;" type="text"></td>';
		html += '<td class="tgtPplEmpeNo"><input style="width:130px;" type="text"></td>';
		html += '<td class="tgtPplNm"><input style="width:112px;" type="text"></td>';
		html += '<td class="eduMth"><input style="width:110px;" type="text"></td>';
		html += '<td class="eduSbjtNm"><input style="width:150px;" type="text"></td>';
		html += '<td class="eduImplStrDd"><input style="width:220px;" type="text"></td>';
		html += '<td class="eduInstNm"><input style="width:105px;margin-right:-6px;" type="text"></td>';
		html += '<td class="cmpltnYn"><input type="file" name="uploadFile" multiple="multiple"></td>';
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
				prcsNm : $target.find('.prcsNm input').val(),
				tgtPplEmpeNo : $target.find('.tgtPplEmpeNo input').val(),
				tgtPplNm : $target.find('.tgtPplNm input').val(),
				cmpltnYn : $target.find('.cmpltnYn input').val(),
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
			common.ajaxaa("/page/KW30000/KW30000U5340save.do", param);
			 getPage();
	     }
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});

	//승인완료 
	function yn_clickFunc(obj){
		 if (confirm("외부교육 승인 상태를 변경 하시겠습니까?")) {
			 	let tgtPplEmpeNo = obj.getAttribute("data-tgtPplEmpeNo");
				let bzRgstNo = obj.getAttribute("data-bzRgstNo");
				let seq = obj.getAttribute("data-seq");
				let getcsv = obj.getAttribute("data-csv");
				let csv = parseInt(getcsv);
				var param = {
						tgtPplEmpeNo : tgtPplEmpeNo,
						bzRgstNo : bzRgstNo,
						seq : seq,
						csv : csv
				}
				$.ajax({					
					url : "${pageContext.request.contextPath}/page/KW30000/KW30000U5200btnYn",
					contentType : "application/json",
					data : JSON.stringify(param),
					type : "POST",
					async: false,
					success : function(res) {		
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
				getPage();
		     }
	}
	
	function sprtnDcmntPop(){
		window.open('/page/KW30000/KW30000U5200pop.do', '_blank',
		'location=no, status=no, width=' + popupWidth + ',height=' + popupHeight + ',left=' + popupX + ', top=' + popupY);	
	}
	
</script>
