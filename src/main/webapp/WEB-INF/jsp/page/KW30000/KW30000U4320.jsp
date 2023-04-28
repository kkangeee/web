<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- #location -->
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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">작업환경관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U4100.do">작업환경관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">작업환경측정결과표 관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U4100.do">작업환경측정결과표 관리</a></li>
				<li><a href="/page/KW30000/KW30000U4210.do">작업환경측정결과 통계</a></li>
				<li><a href="/page/KW30000/KW30000U4310.do">국소배기검사</a></li>
				<li><a href="/page/KW30000/KW30000U4400.do">체크리스트</a></li>
				<li><a href="/page/KW30000/KW30000U4510.do">보호구 관리 및 안전보건표지</a></li>
				<li><a href="/page/KW30000/KW30000U4610.do">작업장 순회점검</a></li>
				<li><a href="/page/KW30000/KW30000U4710.do">위험성 평가</a></li>
				<li><a href="/page/KW30000/KW30000U4800.do">위험성 평가 교육관리</a></li>
			</ul>
		</li>
	</ul>
</div>
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
            <h2 class="con_sectionTit">작업환경관리 / <span class="subtit">국소배기검사</span></h2>            
        </div>
        
         <!-- ▼ 정보입력 영역 -->
        <div class="tab_wrap mt20">
            <ul class="tab_base N2">
                        <li><a href="/page/KW30000/KW30000U4310.do"><span>국소배기장치 등록 및 자체관리</span></a></li>
                        <li class="On"><a href="/page/KW30000/KW30000U4320.do"><span>국소배기장치 안전검사</span></a></li>
            </ul>
        </div>     
        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
      <!-- ▼ 버튼 영역 -->
      <div class="btn_top"> 
            <a onclick="window.open('/images/KW50060U230.pdf')" class="btn_round btn_down"><span>표준 양식</span></a>           
        </div>
        <div class="btn_top">            
            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>인쇄</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
        </div>
    </div>
    <!-- 테이블01 --> 
      <!-- 항목선택 -->
                        <table class="board-list">
                            <colgroup>
                              <col style="width: 30px">
                              <col style="width: 60px">
                              <col style="width: 130px">
                              <col style="width: 160px">
                              <col style="width: 130px">
                              <col style="width: 130px">
                              <col style="width: 130px">
                              <col style="width: 60px">
                            </colgroup>
                            <thead>
                              <tr>
                                <th><input type="checkbox" name="agree1" value="Y"></th>
                                <th>NO</th>
                                <th>공정명</th>
                                <th>물질명(49종)</th>
                                <th>안전검사대상여부</th>
                                <th>안전검사실시일</th>
                                <th>안전검사표</th>
                                <th>결과업로드</th>
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
        <a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">위로</a>
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
				url : "/page/KW30000/KW30000U4320selectList", //서비스 주소 
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
						data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
						data += '<td class="mtrlNm">' + list[i].mtrlNm + '</td>';
						data += '<td class="sftyChkTgtYn">' + list[i].sftyChkTgtYn + '</td>';
						data += '<td class="sftyChkImplDd">' + list[i].sftyChkImplDd + '</td>';
						data += '<td class="sftyChkLbl">' + list[i].sftyChkLbl+ '</td>';
						data += '<td><button>결과업로드</button></td>';
						data += '</tr>';
					}
					
					} else {
						data += "<tr>";
						data += "<td colspan='8'>등록된 게시글이 없습니다.</td>";
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
		common.ajaxaa("/page/KW30000/KW30000U4320delete.do", param);
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
		html += '<td class="prcsNm"><input type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
		html += '<td class="mtrlNm"><input type="text" value="'+$target.find('.mtrlNm').text()+'"></td>';
		html += '<td class="sftyChkTgtYn"><input type="text" value="'+$target.find('.sftyChkTgtYn').text()+'"></td>';
		html += '<td class="sftyChkImplDd"><input type="text" value="'+$target.find('.sftyChkImplDd').text()+'"></td>';
		html += '<td class="sftyChkLbl"><input type="text" value="'+$target.find('.sftyChkLbl').text()+'"></td>';
		html += '<td style="display:none" class="seq"><input type="text" value="'+$target.find('.seq').text()+'" readonly></td>';
		html += '<td><button>결과 업로드</button></td>';
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
		html += '<td class="prcsNm"><input type="text"></td>';
		html += '<td class="mtrlNm"><input type="text"></td>';
		html += '<td class="sftyChkTgtYn"><input type="text"></td>';
		html += '<td class="sftyChkImplDd"><input type="text"></td>';
		html += '<td class="sftyChkLbl"><input type="text"></td>';
		html += '<td><button>결과업로드</button><button onclick = "deleteRow(this)">X</button></td>';
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
				prcsNm : $target.find('.prcsNm input').val(),
				mtrlNm : $target.find('.mtrlNm input').val(),
				sftyChkTgtYn : $target.find('.sftyChkTgtYn input').val(),
				sftyChkImplDd : $target.find('.sftyChkImplDd input').val(),
				sftyChkLbl : $target.find('.sftyChkLbl input').val(),
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
			common.ajaxaa("/page/KW30000/KW30000U4320save.do", param);
			 getPage();
	     }
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});

	
</script>