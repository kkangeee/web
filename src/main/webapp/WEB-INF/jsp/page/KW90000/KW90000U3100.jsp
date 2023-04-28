<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
    <!-- #container -->
    <div id="container">
            
        <div class="headline sub_headline sub_headline01">
          <div class="inner">
              <h1>시스템관리</h1>
          </div>
        </div>      
    
        <div class="inner">
          <!-- 하단여백 섹션으로 구분 -->
          <section id="content">
            <div class="con_area">       
        
        
        <!-- ▼ 타이틀 영역 -->
        <div class="con_section ">
            <h2 class="con_sectionTit"><span class="subtit">메뉴관리</span></h2>            
        </div>
        
        <!-- ▼ 정보입력 영역 -->
        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
	<!-- ▼ 전체검색 영역 -->
      <span class="board-search">
          <input type="hidden" name="pageNum" value="1">
          <select class="w130"id="searchOption">
            <option value="all">전체</option>
            <option value="menuId">메뉴ID</option>
            <option value="menuNm">메뉴명</option>
            <option value="pgmId">프로그램ID</option>
          </select>
          <input type="text" name="searchKeyword" id="searchKeyword" value="" onkeyup="enterkey()" placeholder="검색어를 입력하세요.">
          <button type="submit" id="btnSearch">검색</button>
          <input type="hidden" id="searchType">
          <input type="hidden" id="keyword">
      </span> 
        <!-- ▼ 버튼 영역 -->
          <div class="btn_top">            
	        	<a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
	            <!-- <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>인쇄</span></a>  -->
	            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
          </div> 
    </div>
        
    <!-- 테이블01 --> 
	<!-- 항목선택 -->
	<!--page totalCnt -->
	<p id="totalCnt" class="allNB"></p>
	<!--page totalCnt -->    
    
      <!-- 항목선택 -->
     			 <form id="boardForm" name="boardForm" method="post">
                       <table class="board-list">
                            <colgroup>
                              <col style="width: 30px">
                              <col style="width: 35px">
                              <col style="width: 100px">
                              <col style="width: 200px">
                              <col style="width: 100px">
                              <col style="width: 45px">
                              <col style="width: 45px">
                              <col style="width: 40px">
                              <col style="width: 40px">
                              <col style="width: 280px">
                            </colgroup>
                            <thead>
                              <tr>
                                <th style="height : 10px"><input type="checkbox" name="agree1" value="Y"></th>
                                <th>NO</th>
                                <th>메뉴ID</th>
                                <th>메뉴명</th>
                                <th>상위메뉴ID</th>
                                <th>폴더여부</th>
                                <th>사용여부</th>
                                <th>순서</th>
                                <th>레벨</th>
                                <th>프로그램ID</th>
                              </tr>
                            </thead>
                            <tbody id="dataSection" name="tbody"></tbody>
                          </table>
                  </form>
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
		
		//검색어 조회
$("#btnSearch").click(function() {
	let searchOption = $("#searchOption option:selected").val();
	let searchKeyword = $("#searchKeyword").val();
 	$("#searchType").val(searchOption);
	$("#keyword").val(searchKeyword);
	getPage(); 
});

//검색 Enter Key
function enterkey() {
	if (window.event.keyCode == 13) {
    	$("#btnSearch").click();
    }
}

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#keyword").val();
	$.ajax({
				url : "/page/KW90000/KW90000U3100selectList", //서비스 주소 
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
					totalCnt += '전체 <strong class="tc_point mr20">'
							+ pagination['totalCount']
							+ '</strong>현재페이지 <strong class="tc_point"><span></span>'
							+ pagination.cri['page']
							+ '/'
							+ (Math.ceil(pagination['totalCount']
									/ pagination.cri['perPageNum']))
							+ '</strong>'
					//페이지 번호 위치							 

					if(list.length !== 0){	
						// 테이블의 row를 삽입하는 부분
						for (var i = 0; i < list.length; i++) {
							data += '<tr>';
							data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
							data += '<td style="display:none" class="seq" width="35px">' + list[i].seq + '</td>';
							data += '<td class="rnum">' + list[i].rnum + '</td>';
							data += '<td class="menuId">' + list[i].menuId + '</td>';
							data += '<td class="menuNm">' + nvl(list[i].menuNm,"") + '</td>';
							data += '<td class="hgRkMenuId">' + nvl(list[i].hgRkMenuId,"") + '</td>';
							data += '<td class="foldYn">' + list[i].foldYn + '</td>';
							data += '<td class="menuShowYn">' + list[i].menuShowYn + '</td>';
							data += '<td class="menuOrd">' + nvl(list[i].menuOrd,"") + '</td>';
							data += '<td class="menuLvl">' + nvl(list[i].menuLvl,"") + '</td>';
							data += '<td class="pgmId"><font size="1">' + nvl(list[i].pgmId,"") + '</font></td>';
							data += '</tr>';
						}
					} else {
						data += "<tr>";
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
		common.ajaxaa("/page/KW90000/KW90000U3100delete.do", param);
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
		html += '<td class="seq"><input type="text" style="text-align:center;width:35px" value="'+$target.find('.seq').text()+'" readonly></td>';
		html += '<td class="menuId"><input type="text" style="text-align:center;width:100px" value="'+$target.find('.menuId').text()+'"></td>';
		html += '<td class="menuNm"><input type="text" style="text-align:center;width:200px" value="'+$target.find('.menuNm').text()+'"></td>';
		html += '<td class="hgRkMenuId"><input type="text" style="text-align:center;width:100px" value="'+$target.find('.hgRkMenuId').text()+'"></td>';		
		if($target.find('.foldYn').text() == "Y"){
			html += '<td class="foldYn"><select style="width:45px" id="foldYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else if($target.find('.foldYn').text() == "N") {
			html += '<td class="foldYn"><select style="width:45px" id="foldYn" class="select_bd_tit_A"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		} else {
			html += '<td class="foldYn"><select style="width:45px" id="foldYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		}
		if($target.find('.menuShowYn').text() == "Y"){
			html += '<td class="menuShowYn"><select style="width:45px" id="menuShowYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else if($target.find('.menuShowYn').text() == "N") {
			html += '<td class="menuShowYn"><select style="width:45px" id="menuShowYn" class="select_bd_tit_A"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		} else {
			html += '<td class="menuShowYn"><select style="width:45px" id="menuShowYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		}					
		html += '<td class="menuOrd"><input type="text" style="text-align:center;width:40px" value="'+$target.find('.menuOrd').text()+'"></td>';
		html += '<td class="menuLvl"><input type="text" style="text-align:center;width:40px" value="'+$target.find('.menuLvl').text()+'"></td>';
		html += '<td class="pgmId"><font size="1"><input type="text" style="text-align:center;width:280px" value="'+$target.find('.pgmId').text()+'"></font></td>';
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
		html += '<td class="seq"></td>';
		html += '<td class="menuId"><input type="text" style="text-align:center;width:100px"></td>';
		html += '<td class="menuNm"><input type="text" style="text-align:center;width:200px"></td>';
		html += '<td class="hgRkMenuId"><input type="text" style="text-align:center;width:100px"></td>';
		html += '<td class="foldYn"><select style="text-align:center;width:45px" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		html += '<td class="menuShowYn"><select style="text-align:center;width:45px" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		html += '<td class="menuOrd"><input type="text" style="text-align:center;width:40px"></td>';
		html += '<td class="menuLvl"><input type="text" style="text-align:center;width:40px"></td>';
		html += '<td class="pgmId"><font size="1"><input type="text" style="text-align:center;width:280px"></font></td>';
		html += '</tr>';
		
		$("tbody").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();
	});

	
	function nvl(str, defaultStr) {
		if (typeof str == "undefined" || str == null || str == "") {
			str = defaultStr;
		}
		return str;
	}
	
	//저장(추가, 수정시 나오는 버튼) 버튼 클릭시 ajax호출 추가추가
	$("#saveBtn").on("click", function() {
		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
			
			if( $target.find('.menuId input').val() == "" ) {
				alert("메뉴ID를 입력해주세요.");
				return;
			}
			
			arr.push({
				seq : $target.find('.seq input').val(),
				menuId : $target.find('.menuId input').val(),
				menuNm : $target.find('.menuNm input').val(),
				hgRkMenuId : $target.find('.hgRkMenuId input').val(),
				foldYn : $target.find('.foldYn select').val(),
				menuShowYn : $target.find('.menuShowYn select').val(),
				menuOrd : $target.find('.menuOrd input').val(),
				menuLvl : $target.find('.menuLvl input').val(),
				pgmId : $target.find('.pgmId input').val()
			});
		}
		
		var param = {
			"data" : JSON.stringify(arr)
		};

		if (confirm("저장하시겠습니까?")) {
			common.ajaxaa("/page/KW90000/KW90000U3100save.do", param);
		 	getPage();
	    }
		
		$("#insertBtn").show();
		$("#deleteBtn").show();
		$("#updateBtn").show();
		$("#printBtn").show();
		$("#saveBtn").hide();
		
	});
	
</script>