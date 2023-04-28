<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
<!-- #location -->
<style>
</style>
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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">산업안전보건위원회구성</button>
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
            <h2 class="con_sectionTit">안전보건관리 > <span class="subtit">안전보건관리체제</span></h2>            
        </div>
        
        <!-- ▼ 정보입력 영역 -->
				<div class="tab_wrap mt20">
					<ul class="tab_base N7">
						<li><a href="/page/KW30000/KW30000U1110.do"><span>안전보건조직구성</span></a></li>
						<li><a href="/page/KW30000/KW30000U1120.do"><span>안전보건조직관리조직도</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1130.do"><span>산업안전보건위원회구성</span></a></li>
						<li><a href="/page/KW30000/KW30000U1140.do"><span>산업안전보건위원회조직도</span></a></li>
						<li><a href="/page/KW30000/KW30000U1150.do"><span>산업안전보건위원회회의록</span></a></li>
						<li><a href="/page/KW30000/KW30000U1160.do"><span>응급의료체계</span></a></li>
						<li><a href="/page/KW30000/KW30000U1171.do"><span>건강관리실관리</span></a></li>
					</ul>
				</div>  
        <div class="mt20">
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
      <!-- 검색관련 -->
				<span class="board-search">
				<!-- <form name="form" id="form" action="#" onsubmit="return page.search(this)"> -->
						<input type="hidden" name="pageNum" value="1"> 
						<select name="searchType" id="keywordType">
							<option value="all">전체</option> 
							<option value="title">제목</option>
							<option value="content">내용</option>  
							<option value="displayUser">작성자</option>
						</select> 
						<input type="hidden" id="searchType" value="" />
						<!-- 검색어 -->
						<input type="text" class="form-control form-control-sm" name="keyword" id="keyword" placeholder="검색어를 입력하세요.">
						<button type="submit" id="btnSearch" name="btnSearch">검색</button>
						<input type="hidden" id="searchInput" value="" />
				<!-- </form> -->
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
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 60px">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="selectAll" value="Y" id="checkAll"></th>
									<th>NO</th>
									<th>사번</th>
									<th>위원명</th>
									<th>부서</th>
									<th>공정</th>
									<th>직위</th>
									<th>구분</th>
									<th>등록일</th>
									<th>종료</th>
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

    <div class="util-bottom">
	  <div class="inner">
	    <a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">위로</a>
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
				url : "/page/KW30000/KW30000U1130selectList", //서비스 주소 
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
						data += '<td class="empeNo">' + list[i].empeNo + '</td>';
						data += '<td class="empeNm">' + list[i].empeNm + '</td>';
						data += '<td class="deptNm">' + list[i].deptNm + '</td>';
						data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
						data += '<td class="pstn">' + list[i].pstn + '</td>';
						data += '<td class="cmsnrTp">' + list[i].cmsnrTp + '</td>';
						data += '<td class="rgstDd">' + list[i].rgstDd + '</td>';
						data += '<td class="endDd">' + list[i].endDd + '</td>';
						data += '</tr>';
						}																							
					} else {
						data += "<tr id='deleteCol'>";
						data += "<td colspan='10'>등록된 게시글이 없습니다.</td>";
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
		common.ajaxaa("/page/KW30000/KW30000U1130delete.do", param);
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
		html += '<td class="empeNo"><input type="text" value="'+$target.find('.empeNo').text()+'"></td>';
		html += '<td class="empeNm"><input type="text" value="'+$target.find('.empeNm').text()+'"></td>';
		html += '<td class="deptNm"><input type="text" value="'+$target.find('.deptNm').text()+'"></td>';
		html += '<td class="prcsNm"><input type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
		html += '<td class="pstn"><input type="text" value="'+$target.find('.pstn').text()+'"></td>';
		html += '<td class="cmsnrTp"><input type="text" value="'+$target.find('.cmsnrTp').text()+'"></td>';
		html += '<td class="rgstDd"><input type="date" value="'+$target.find('.rgstDd').text()+'"></td>';
		html += '<td class="endDd"><input type="date" value="'+$target.find('.endDd').text()+'"></td>';
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
		html += '<td class="empeNo"><input type="text"></td>';
		html += '<td class="empeNm"><input type="text"></td>';
		html += '<td class="deptNm"><input type="text"></td>';
		html += '<td class="prcsNm"><input type="text"></td>';
		html += '<td class="pstn"><input type="text"></td>';
		html += '<td class="cmsnrTp"><input type="text"></td>';
		html += '<td class="rgstDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="endDd"><input type="date" name="date" class="w140"></td>';
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
				empeNo : $target.find('.empeNo input').val(),
				empeNm : $target.find('.empeNm input').val(),
				cmsnrTp : $target.find('.cmsnrTp input').val(),
				deptNm : $target.find('.deptNm input').val(),
				prcsNm : $target.find('.prcsNm input').val(),
				pstn : $target.find('.pstn input').val(),
				rgstDd : $target.find('.rgstDd input').val(),
				endDd : $target.find('.endDd input').val()
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
			common.ajaxaa("/page/KW30000/KW30000U1130save.do", param);
			 getPage();
	     }
	});

	
	//검색
	$("#btnSearch").click(function() {
		const searchType = $("#keywordType").val();
		const search = $("#keyword").val();
		
		$("#searchType").val(searchType);
		$("#searchInput").val(search);
		
		getPage();
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	//인쇄버튼
	function printPage(){
		window.print();
	}
	
</script>