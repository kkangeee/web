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
            <h2 class="con_sectionTit">작업환경관리 / <span class="subtit">위험성 평가</span></h2>            
        </div>
        
       <!-- ▼ 정보입력 영역 -->
        <div class="tab_wrap mt20">
            <ul class="tab_base N3">
              <li><a href="https://kras.kosha.or.kr/" target="blank"><span>위험성평가지원시스템(KRAS)</span></a></li>
              <li><a href="/page/KW30000/KW30000U4720.do"><span>위험성평가 결과 관리</span></a></li>
              <li class="On"><a href="/page/KW30000/KW30000U4730.do"><span>화학물질위험성평가 결과 관리</span></a></li>
            </ul>
        </div>

        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
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
            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw print-button" onclick="printPage()" id="printBtn"><span>인쇄</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
		</div>
    </div>
    <!-- 테이블01 --> 
							  <form id="saveForm" enctype="multipart/form-data" method="post">
		                      <table class="board-list">
		                           <colgroup>
		                             <col style="width: 30px">
		                             <col style="width: 60px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                           </colgroup>
		                           <thead>
		                             <tr>
		                               <th><input type="checkbox" name="agree1" value="Y" id="checkAll"></th>
		                               <th>NO</th>
		                               <th>등록일</th>
		                               <th>작성자</th>
		                               <th>결과 업로드</th>
		                               <th>결과 관리</th>
		                             </tr>
		                           </thead>
		                          <tbody id="dataSection" name="tbody">
							   </tbody>
							</table>
						</form>
						<!-- 페이징 -->
						<div id="paginationBox" class="paging"></div>
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
common.checkAll();

$(document).ready(function() {
	getPage();
})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U4730selectList", //서비스 주소 
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
						data += '<td class="rgstDd">' + list[i].rgstDd + '</td>';
						data += '<td class="restrNm">' + list[i].restrNm + '</td>';
						if(!list[i].boardFile == ""){
							data += '<td><a href="'+ list[i].boardFile + '" download>'+ list[i].boardFileName +'</a></td>';
						 } else {
							data += '<td><span>파일 없음</span></td>';
						} 
						data += '<td><button type="submit" id="search" data-bzRgstNo="' + list[i].bzRgstNo + '" data-seq="' + list[i].seq + '" OnClick="resultPopClick(this);" class="btn_His2">결과 관리</button></td>';
						data += '</tr>';
					}
					} else {
						data += "<tr id='deleteCol'>";
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
		common.ajaxaa("/page/KW30000/KW30000U4730delete.do", param);
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
		html += '<td class="rgstDd"><input type="date" value="'+$target.find('.rgstDd').text()+'"></td>';
		html += '<td class="restrNm"><input type="text" value="'+$target.find('.restrNm').text()+'"></td>';
		if($target.find('.boardFile').text() != "null"){ 
			html += '<td><button type="button"  style="background-color : #f29886" onclick="updateFile(\''+$target.find('.seq').text()+'\')" class="btn_His2">파일 변경</button></td>';
			html += '<td style="display:none"><input type="file" id="file\''+$target.find('.seq').text()+'\'" name="file\''+$target.find('.seq').text()+'\'"></td>';
		} else {   
			html += '<td><input class="input" type="file" name ="file"></td>';
		} 
		html += '<td></td>';
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
		$("#deleteCol").remove();
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="rgstDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="restrNm"><input type="text"></td>';
		html += '<td><input type="file" name ="file" class="boardFile"></td>';
		html += '<td></td>';
		html += '</tr>';
		$("tbody").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();

	});

	//취소버튼 ( 추가, 삭제시 취소)
/* 	function deleteRow(btn) {
		var row = btn.parentNode.parentNode;
		row.parentNode.removeChild(row);
	}; */

	//저장(추가, 수정시 나오는 버튼) 버튼 클릭시 ajax호출 추가추가
	$("#saveBtn").on("click", function() {
		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
			arr.push({
				//seq클래스에 input유무가 추가, 수정인지 구분 가능(input없으면 추가)
				seq : $target.find('.seq input').val(),
				rnum : $target.find('.rnum input').val(),
				rgstDd : $target.find('.rgstDd input').val(),
				restrNm : $target.find('.restrNm input').val()
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
			common.ajaxFileSend("/page/KW30000/KW30000U4730save.do", param, null, "saveForm");
			//common.ajaxaa("/page/KW30000/KW30000U4730save.do", param);
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
	
	function resultPopClick(obj) {
		//팝업 사이즈 설정
	    var popupWidth = 600;
	    var popupHeight = 800;

	    var popupX = Math.ceil(( window.screen.width - popupWidth )/2);
	    var popupY = Math.ceil(( window.screen.height - popupHeight )/2); 
	
		//open한 새창을 변수 저장
		var winObj = "";
		var bzRgstNo = obj.getAttribute("data-bzRgstNo");
		var seq = obj.getAttribute("data-seq");
		
		var pop_settings ="'location=no, status=no, width= 1000px, height= 500px ,left=' + popupX+ ', top=' + popupY'";
		winObj = window.open("/page/KW30000/KW30000U4730resultPop.do", "결과 관리", pop_settings);
	
		//자식창에 넘겨줄값들
		winObj.bzRgstNo = bzRgstNo;
		winObj.seq = seq;
		};


</script>