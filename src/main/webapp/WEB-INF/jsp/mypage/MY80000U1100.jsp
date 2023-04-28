<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
ul.tabs{
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li{
  display: inline-block;
	background: #eee;
	color: black;
	padding: 10px 15px;
	cursor: pointer;
	text-align: center;
}

ul.tabs li.tab-link {
 width : 300px;
 padding-right: 24.15px;
}

ul.tabs li.current{
	background: #eee;
	color: black;
	text-decoration: underline;
}

.tab-content{
  display: none;
	background: #ffffff;
	padding: 15px;
}

.tab-content .current{
	display: inherit; 
}
</style>
<!-- #location 
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">마이페이지</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/mypage/MY80000U1100.do">마이페이지</a></li>
			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">서비스관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/mypage/MY80000U1100.do">서비스관리</a></li>
				<li><a href="/mypage/MY80000U2100.do">내정보관리</a></li>
				<li><a href="/mypage/MY80000U3100.do">견적요청 및 예약하기</a></li>
				<li><a href="/mypage/MY80000U4100.do">계산서관리</a></li>
			</ul>
		</li>
	</ul>
</div>
-->


<!-- #container -->
<div id="container">

	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>마이페이지</h1>
		</div>
	</div>

	<div class="inner">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">

				<!-- ▼ 타이틀 영역 -->
	        <div class="con_section ">
	            <h2 class="con_sectionTit" style="margin-bottom:10px;"><span class="subtit">서비스관리</span></h2> 
	        </div>
				<!-- ▼ 정보입력 영역 -->
				<br>
				<div>
					<span class="board_Ttxt"> - 서비스 안내 - </span> <!-- 테이블01 -->
						<table class="board-list">
							<colgroup>
								<!--  <col style="width: 30px">
	                              <col style="width: 60px">
	                              <col style="width: auto"> -->
							</colgroup>
							<thead>
								<tr>
									<div class="container">
									<!-- 탭 메뉴 시작 -->
										<ul class="tabs">
											<li class="tab-link" data-tab="tab-1">산업보건관리종합서비스</li>
											<li class="tab-link" data-tab="tab-2">건강검진관리서비스</li>
											<li class="tab-link" data-tab="tab-3">교육종합관리서비스</li>
											<li class="tab-link" data-tab="tab-4">화학물질종합관리서비스</li>
										</ul>
									<!-- 탭 메뉴끝 -->
									<!-- 탭 메뉴 내용 시작 -->
											<div id="tab-1" class="tab-content">
												<p>산업보건관리종합서비스에 관한 내용</p>
											</div>
											<div id="tab-2" class="tab-content">
												<p>건강검진관리서비스에 관한 내용</p>
											</div>
											<div id="tab-3" class="tab-content">
												 <p>교육종합관리서비스에 관한 내용</p>
											</div>
											<div id="tab-4" class="tab-content">
												 <p>화학물질종합관리서비스에 관한 내용</p>
											</div>
									<!-- 탭 메뉴 내용 끝 -->
									</div>
								</tr> 
								<!-- <tr>
									<th>산업보건관리종합서비스</th>
									<th>건강검진관리서비스</th>
									<th>교육종합관리서비스</th>
									<th>화학물질종합관리서비스</th>
								</tr> -->
							</thead>
						</table> <!-- //테이블01 -->
				</div>
				<br><br>
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="btn_top">     
							<a href="javascript:void(0)" class="btn_round btn_plus btn_Tw btn_blue" onClick="modal_billing()" id="billingBtn"><span>청구</span></a>       
				            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>인쇄</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
						</div>
						<!-- 항목선택 -->
						<div>
						<span class="board_Ttxt"> - 서비스 현황 - </span> <!-- 테이블01 -->
							<table class="board-list">
								<colgroup>
									<col style="width: 30px">
									<col style="width: 40px">
									<col style="width: 120px">
									<col style="width: 100px">
									<col style="width: 80px">
									<col style="width: 100px">
									<col style="width: 100px">
									<col style="width: 100px">
									<col style="width: 80px">
									<col style="width: 70px">
									<col style="width: 100px">
									<col style="width: 70px">
								</colgroup>
								<thead>
									<tr>
										<th></th>
										<th>NO</th>
										<th>서비스명</th>
										<th>사업자등록번호</th>
										<th>사업자이름</th>
										<th>계약일자</th>
										<th>사업시작일자</th>
										<th>사업종료일자</th>
										<th>계약금액</th>
										<th>청구번호</th>
										<th>청구일자</th>
										<th>담당자</th>
									</tr>
								</thead>
								<tbody id="dataSection" name="tbody">
								</tbody>
							</table>
						</div>

						<!-- 페이징 -->
						<div id="paginationBox" class="paging"></div>
					</section>
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

<div id="myModal" class="modal">
   <div class="modal-content h510 pt0">
      <!-- 테이블01 -->
      <div class="mt20">
      <h4 class="mb3 mt3">계산서발행</h4>
         <table class="board-list board-list_left modal_board" summary="계산서 청구발행">
            <tbody>
               <tr>
                  <th>청구일자</th>
                  <td><input class="bilpt0" type="date" name="date"></td>
               </tr>
               <tr>
                  <th>적요(서비스명)</th>
                  <td><input class="bilpt0" type="text" id="serviceNm" name=""></td>
               </tr>
               <tr>
                  <th>발행 및 지급구분</th>
                  <td><input class="bilpt0" type="text" name=""></td>
               </tr>
               <tr>
                  <th>영수분류 및 수수료</th>
                  <td><input class="bilpt0" type="text" name="">원</td>
               </tr>
               <tr>
                  <th>발행선택 건수</th>
                  <td><input class="bilpt0" type="text" name="">건</td>
               </tr>   
               <tr>   
                  <th>사업실적 금액</th>
                  <td><input class="bilpt0" type="text" id="conAmnt" name="">원</td>
               </tr>
               <tr>
                  <th>부가세(VAT)</th>
                  <td><input class="bilpt0" type="text" id="conVAT" name="">원</td>
               </tr>   
               <tr>   
                  <th>발행금액(VAT포함)</th>
                  <td><input class="bilpt0" type="text" id="conSum" name="">원</td>
               </tr>   
               <tr>
                  <th>계산서발행사업장</th>
                  <td><input class="bilpt0" type="text" name=""></td>
               </tr>
            </tbody>
         </table>
         <!-- <버튼영역> -->
         <div class="textCt pt10 pb100">
            <button onClick="modal_insert()" class="btn_round btn_Blue w180">발행</button> 
            <button onClick="modal_close()" class="btn_round btn_Gray_e4e w180">취소</button>
         </div>
      </div>   
   </div>
   <!-- //테이블01 -->
</div>

<script>

$(document).ready(function() {
	getPage();
})

//모달오픈
function modal_billing() {
	if($("input[name=agree1]:checked").length == 0){
		alert("하나의 데이터를 선택해주세요");
		return
	};
	
	if($("input[name=agree1]:checked").length > 1){
		alert("하나의 데이터만 선택해주세요");
		return
	};
	
		
	let serviceNm = $("input[name=agree1]:checked").closest('tr').find('.srvNm').text();
	let conAmnt = $("input[name=agree1]:checked").closest('tr').find('.conSum').text();
	let conVAT = conAmnt * 0.1;
	let conSum = conAmnt * 0.9;
	$("#serviceNm").val(serviceNm);
	$("#conAmnt").val(conAmnt);
	$("#conVAT").val(conVAT);
	$("#conSum").val(conSum);
	
	let modal = document.getElementById('myModal').style.display = "block";
}

//입력모달 닫기
function modal_close(){
	var modal = document.getElementById('myModal').style.display = "none";
}


function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/mypage/KW80000U1100selectList", //서비스 주소 
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
						if(list[i].billIsuBilgDd == null){
							data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>'
						} else {
							data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '" onclick="return false;"></td>'
						}
						;
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="srvNm" id="srvNm">' + list[i].srvNm + '</td>';
						data += '<td class="bzRgstNo">' + list[i].bzRgstNo + '</td>';
						data += '<td class="bzCoNm">' + list[i].bzCoNm + '</td>';
						data += '<td class="conDd">' + list[i].conDd + '</td>';
						data += '<td class="bzStrDd">' + list[i].bzStrDd + '</td>';
						data += '<td class="bzEndDd">' + list[i].bzEndDd + '</td>';
						data += '<td class="conSum">' + list[i].conSum + '</td>';
						data += '<td class="billIsuBilgNo">' + list[i].billIsuBilgNo + '</td>';
						data += '<td class="billIsuBilgDd">' + list[i].billIsuBilgDd + '</td>';
						data += '<td class="chrgPrsnNm">' + list[i].chrgPrsnNm + '</td>';
						data += '</tr>';
					}
					} else {
						data += "<tr>";
						data += "<td colspan='12'>등록된 게시글이 없습니다.</td>";
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
		common.ajaxaa("/mypage/KW80000U1100delete.do", param);
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
		html += '<td class="srvNm"><input type="text" value="'+$target.find('.srvNm').text()+'"></td>';
		html += '<td class="bzRgstNo"><input type="text" value="'+$target.find('.bzRgstNo').text()+'"></td>';
		html += '<td class="bzCoNm"><input type="text" value="'+$target.find('.bzCoNm').text()+'"></td>';
		html += '<td class="conDd"><input type="date" value="'+$target.find('.conDd').text()+'"></td>';
		html += '<td class="bzStrDd"><input type="date" value="'+$target.find('.bzStrDd').text()+'"></td>';
		html += '<td class="bzEndDd"><input type="date" value="'+$target.find('.bzEndDd').text()+'"></td>';
		html += '<td class="conSum"><input type="text" value="'+$target.find('.conSum').text()+'"></td>';
		html += '<td class="billIsuBilgNo"><input type="text" value="'+$target.find('.billIsuBilgNo').text()+'"></td>';
		html += '<td class="billIsuBilgDd"><input type="date" value="'+$target.find('.billIsuBilgDd').text()+'"></td>';
		html += '<td class="chrgPrsnNm"><input type="text" value="'+$target.find('.chrgPrsnNm').text()+'"></td>';
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
		html += '<td class="srvNm"><select class="w140 h30 bilpt0"><option value="">산업보건종합</option><option value="">건강검진관리</option><option value="">교육종합관리</option><option value="">화학물질종합관리</option></select></td>';
		html += '<td class="bzRgstNo"><input class="w100 bilpt0" type="text"></td>';
		html += '<td class="bzCoNm"><input  class="w80 bilpt0"  type="text"></td>';
		html += '<td class="conDd"><input class="w100 bilpt0" type="date" name="date"></td>';
		html += '<td class="bzStrDd"><input class="w100 bilpt0" type="date" name="date"></td>';
		html += '<td class="bzEndDd"><input class="w100 bilpt0" type="date" name="date"></td>';
		html += '<td class="conSum"><input class="w100 bilpt0" type="text"></td>';
		html += '<td class="billIsuBilgNo"><input class="w80 bilpt0" type="text"></td>';
		html += '<td class="billIsuBilgDd"><input class="w100 bilpt0" type="date" name="date"></td>';
		html += '<td class="chrgPrsnNm"><input class="w80 bilpt0" type="text"></td>';
		html += '</tr>';
		$("#dataSection").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();
		
		/* if($("input[name=agree1][value='new']:checked").length==0){
			$("#deleteBtn").show();
			$("#updateBtn").show();
			$("#printBtn").show();
			$("#saveBtn").hide();
		} */
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
				srvNm : $target.find('.srvNm input').val(),
				bzRgstNo : $target.find('.bzRgstNo input').val(),
				bzCoNm : $target.find('.bzCoNm input').val(),
				conDd : $target.find('.conDd input').val(),
				bzStrDd : $target.find('.bzStrDd input').val(),
				bzEndDd : $target.find('.bzEndDd input').val(),
				conSum : $target.find('.conSum input').val(),
				billIsuBilgNo : $target.find('.billIsuBilgNo input').val(),
				billIsuBilgDd : $target.find('.billIsuBilgDd input').val(),
				chrgPrsnNm : $target.find('.chrgPrsnNm input').val()
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
			common.ajaxaa("/mypage/KW80000U1100save.do", param);
			 getPage();
	     }
	});

	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	//서비스 클릭시
	$('ul.tabs li').click(function(){   //li를 클릭하면
		var tab_id = $(this).attr('data-tab');  //id값에 탭1 id값을 이떄 부여
		
		$('ul.tabs li').removeClass('current');   
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	//	$("#"+tab_id).style.display = 'block';
	})

	
</script>
