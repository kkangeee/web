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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">연간계획수립</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U1210.do">평가분야</a></li>
				<li><a href="/page/KW30000/KW30000U1220.do">회의분야</a></li>
				<li><a href="/page/KW30000/KW30000U1230.do">교육분야</a></li>
				<li><a href="/page/KW30000/KW30000U1240.do">건강관리분야</a></li>
				<li><a href="/page/KW30000/KW30000U1250.do">환경관리분야</a></li>
				<li><a href="/page/KW30000/KW30000U1260.do">예방관리프로그램</a></li>
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
            <h2 class="con_sectionTit">안전보건관리 > <span class="subtit">연간계획수립</span></h2>            
        </div>
        
        	<!-- ▼ 정보입력 영역 -->
				<div class="tab_wrap mt20">
					<ul class="tab_base N6">
						<li><a href="/page/KW30000/KW30000U1210.do"><span>평가분야</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1220.do"><span>회의분야</span></a></li>
						<li><a href="/page/KW30000/KW30000U1230.do"><span>교육분야</span></a></li>
						<li><a href="/page/KW30000/KW30000U1240.do"><span>건강관리분야</span></a></li>
						<li><a href="/page/KW30000/KW30000U1250.do"><span>환경관리분야</span></a></li>
						<li><a href="/page/KW30000/KW30000U1260.do"><span>예방관리프로그램</span></a></li>
					</ul>
					<ul class="tab_base tab_base_sub N3">
						<li><a href="/page/KW30000/KW30000U1220.do"><span>산업안전보건위원회</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1220_1.do"><span>안전 및 보건에 관한 협의체</span></a></li>
						<li><a href="/page/KW30000/KW30000U1220_2.do"><span>노사협의체</span></a></li>
					</ul>
				</div> 
				
        <div class="mt20">
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
      <!-- ▼ 전체검색 영역 -->
      <span class="board-search">
        <form name="form" id="form" action="?" onsubmit="return page.search(this)">
          <input type="hidden" name="pageNum" value="1">
          <select name="searchType">
            <option value="">전체</option>
            <option value="">제목</option>
            <option value="">내용</option>
            <option value="">작성자</option>
          </select>
          <input type="text" name="searchKeyword" value="" placeholder="검색어를 입력하세요.">
          <button type="submit" id="search">검색</button>
        </form>
      </span>

      <!-- ▼ 버튼 영역 -->
      <div class="btn_top"> 
            <a onclick="window.open('/images/KW50060U230.pdf')" class="btn_round btn_down"><span>미리 보기</span></a>           
      </div>
        <div class="btn_top">            
            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw print-button" onclick="printPage()" id="printBtn"><span>인쇄</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
		</div>
    </div>
    <!-- 테이블01 -->
    <span class="board-list_Stit">안전 및 보건에 관한 협의체</span>
    <table class="board-list">
      <colgroup>
        	<col style="width: 4%">
			<col style="width: 5%">
	        <col style="width: 300px">
	        <col style="width: 150px">
	        <col style="width: 300px">
	        <col style="width: 200px">
      </colgroup>
      <thead>
        <tr>
          <th><input type="checkbox" name="agree1" value="Y" id="checkAll"></th>
          <th>NO</th>
          <th>구분</th>
          <th>시기</th>
          <th>회의구분</th>
          <th>계획</th>
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
<!-- 컨텐츠 -->      
    <!-- //#container -->

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
				url : "/page/KW30000/KW30000U1220_1selectList", //서비스 주소 
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
						data += '<td class="tp">' + list[i].tp + '</td>';
						data += '<td class="prid">' + list[i].prid + '</td>';
						data += '<td class="ttl">' + list[i].ttl + '</td>';
						data += '<td class="plnDtl">' + list[i].plnDtl + '</td>';
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
		common.ajaxaa("/page/KW30000/KW30000U1220_1delete.do", param);
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
		if($target.find('.tp').text() == "정기"){
			html += '<td class="tp"><select style="width:80px" id="tp" class="select_bd_tit_A"><option value = "정기" selected>정기</option><option value = "임시">임시</option></select></td>';
		} else if($target.find('.tp').text() == "임시") {
			html += '<td class="tp"><select style="width:80px" id="tp" class="select_bd_tit_A"><option value = "정기">정기</option><option value = "임시" selected>임시ㄴ</option></select></td>';
		}
		html += '<td class="prid"><input type="text" value="'+$target.find('.prid').text()+'"></td>';
		html += '<td class="ttl"><input type="text" value="'+$target.find('.ttl').text()+'"></td>';
		html += '<td class="plnDtl"><input type="text" value="'+$target.find('.plnDtl').text()+'"></td>';
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
		html += '<td class="tp"><select style="width:80px" class="select_bd_tit_A"><option value="정기">정기</option><option value ="임시">임시</option></select></td>';
		html += '<td class="prid"><input type="text"></td>';
		html += '<td class="ttl"><input type="text"></td>';
		html += '<td class="plnDtl"><input type="text"></td>';
		html += '</tr>';
		
		$("tbody").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();
	});

	//저장(추가, 수정시 나오는 버튼) 버튼 클릭시 ajax호출 추가추가
	$("#saveBtn").on("click", function() {
		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
			arr.push({
				//seq클래스에 input유무가 추가, 수정인지 구분 가능(input없으면 추가)
				seq : $target.find('.seq input').val(),
				rnum : $target.find('.rnum input').val(),
				tp : $target.find('.tp select').val(),
				prid : $target.find('.prid input').val(),
				ttl : $target.find('.ttl input').val(),
				plnDtl : $target.find('.plnDtl input').val()
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
			common.ajaxaa("/page/KW30000/KW30000U1220_1save.do", param);
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