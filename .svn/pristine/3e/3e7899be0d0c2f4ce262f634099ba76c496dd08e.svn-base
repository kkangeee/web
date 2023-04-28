<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">화학물질 입출고 현황</button>
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

	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>유해인자 관리</h1>
		</div>
	</div> 

	<div class="inner">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">

				<!-- ▼ 타이틀 영역 -->
				<div class="con_section ">
					<h2 class="con_sectionTit">
						화학제품관리 > <span class="subtit">화학물질 입출고 현황</span>
					</h2>
				</div>

				<!-- ▼ 정보입력 영역 -->
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
					            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>인쇄</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
							</div>
						</div>
						
						<table class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">

							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>제품명</th>
									<th>공급업체</th>
									<th>입고일</th>
									<th>입고량</th>
									<th>출고일</th>
									<th>출고량</th>
									<th>재고현황</th>
								</tr>
							</thead>
							
							<tbody id="dataSection" name="tbody">
							</tbody>
						</table>
						<!-- 페이징 -->
						<div id="paginationBox" class="paging"></div>
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
	$.ajax({
				url : "/page/KW20000/KW20000U1300selectList", //서비스 주소 
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
						data += '<td class="prdtNm">' + list[i].prdtNm + '</td>';
						data += '<td class="spplCmp">' + list[i].spplCmp + '</td>';
						data += '<td class="rcptDd">' + list[i].rcptDd + '</td>';
						data += '<td class="rcptQnty">' + list[i].rcptQnty + '</td>';
						data += '<td class="issDd">' + list[i].issDd + '</td>';
						data += '<td class="issQnty">' + list[i].issQnty + '</td>';
						data += '<td class="stckQnty">' + list[i].stckQnty + '</td>';
						data += '</tr>';
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
		common.ajaxaa("/page/KW20000/KW20000U1300delete.do", param);
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
		html += '<td class="prdtNm"><input type="text" value="'+$target.find('.prdtNm').text()+'"></td>';
		html += '<td class="spplCmp"><input type="text" value="'+$target.find('.spplCmp').text()+'"></td>';
		html += '<td class="rcptDd"><input type="text" value="'+$target.find('.rcptDd').text()+'"></td>';
		html += '<td class="rcptQnty"><input type="text" value="'+$target.find('.rcptQnty').text()+'"></td>';
		html += '<td class="issDd"><input type="text" value="'+$target.find('.issDd').text()+'"></td>';
		html += '<td class="issQnty"><input type="text" value="'+$target.find('.issQnty').text()+'"></td>';
		html += '<td class="stckQnty"><input type="text" value="'+$target.find('.stckQnty').text()+'"></td>';
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
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="prdtNm"><input type="text"></td>';
		html += '<td class="spplCmp"><input type="text"></td>';
		html += '<td class="rcptDd"><input type="text"></td>';
		html += '<td class="rcptQnty"><input type="text"></td>';
		html += '<td class="issDd"><input type="text"></td>';
		html += '<td class="issQnty"><input type="text"></td>';
		html += '<td class="stckQnty"><input type="text"><button onclick = "deleteRow(this)">X</button></td>';
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
				prdtNm : $target.find('.prdtNm input').val(),
				spplCmp : $target.find('.spplCmp input').val(),
				rcptDd : $target.find('.rcptDd input').val(),
				rcptQnty : $target.find('.rcptQnty input').val(),
				issDd : $target.find('.issDd input').val(),
				issQnty : $target.find('.issQnty input').val(),
				stckQnty : $target.find('.stckQnty input').val()
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
			common.ajaxaa("/page/KW20000/KW20000U1300save.do", param);
			 getPage();
	     }
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});

	
</script>	