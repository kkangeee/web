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
            <h2 class="con_sectionTit">건강관리 / <span class="subtit">건강검진 현황</span></h2>            
        </div>
        
        <!-- ▼ 정보입력 영역 -->            
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
            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>인쇄</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
        </div>
    </div>
    <!-- 테이블01 -->   
    
    <table class="board-list">
      <colgroup>
        <col style="width: 50px">
        <col style="width: 50px">
        <col style="width: 130px">
        <col style="width: 150px">
        <col style="width: 150px">
        <col style="width: 200px">
        <col style="width: 400px">
      </colgroup>
      <thead>
        <tr>
          <th><input type="checkbox" name="agree1" value="Y"></th>
          <th>NO</th>
          <th>연도</th>
          <th>검진시작기간</th>
          <th>검진종료기간</th>
          <th>검진구분</th>
          <th>현황확인</th>
        </tr>

      </thead>
      <tbody id="dataSection" name="tbody"> </tbody>
    </table>

    <!-- //테이블01 -->

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

$(document).ready(function() {
	getPage();
})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U2200selectList", //서비스 주소 
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
									
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < list.length; i++) {
						data += '<tr>';
						data += '<td><input type="checkbox" name="agree1" value="'+ list[i].medExamSeq+ '"></td>';
						data += '<td style="display:none" class="medExamSeq">' + list[i].medExamSeq + '</td>';
						data += '<td style="display:none" class="bzRgstNo">' + list[i].bzRgstNo + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="medExamImplYear">' + list[i].medExamImplYear + '</td>';
						data += '<td class="medExamStrDd">' + list[i].medExamStrDd + '</td>';
						data += '<td class="medExamEndDd">' + list[i].medExamEndDd + '</td>';
						data += '<td class="medExamTp">' + list[i].medExamTp + '</td>';
						data += '<td><button type="submit" id="search" class="btn_His2">사업장현황</button><button type="submit" id="search" data-medExamStrDd="' + list[i].medExamStrDd + '" data-medExamEndDd="' + list[i].medExamEndDd + '" data-bzRgstNo="' + list[i].bzRgstNo + '" data-medExamTp="' + list[i].medExamTp + '" OnClick="psnlPopClick(this);" class="btn_His2">개인현황</button></td>';
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
			 medExamSeq : $("input[name=agree1]:checked").eq(i).val()
		 });
	}
	var param = {
		"data" : JSON.stringify(arr)
	};
	
	 if (confirm("삭제하시겠습니까?")) {
		common.ajaxaa("/page/KW30000/KW30000U2200delete.do", param);
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
		html += '<td class="medExamImplYear"><input type="text" value="'+$target.find('.medExamImplYear').text()+'"></td>';
		html += '<td class="medExamStrDd"><input type="text" value="'+$target.find('.medExamStrDd').text()+'"></td>';
		html += '<td class="medExamEndDd"><input type="text" value="'+$target.find('.medExamEndDd').text()+'"></td>';
		html += '<td class="medExamTp"><input type="text" value="'+$target.find('.medExamTp').text()+'"></td>';
		html += '<td></td>';
		html += '<td style="display:none" class="medExamSeq"><input type="text" value="'+$target.find('.medExamSeq').text()+'" readonly></td>';
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
		$("#cancelBtn").show();
});


	//추가 버튼 클릭시 tr생성만(ajax안간다.)
	$("#insertBtn").on("click",function() {
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="medExamImplYear"><input type="text"></td>';
		html += '<td class="medExamStrDd"><input type="text"></td>';
		html += '<td class="medExamEndDd"><input type="text"></td>';
		html += '<td class="medExamTp"><input type="text"></td>';
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
				medExamSeq : $target.find('.medExamSeq input').val(),
				rnum : $target.find('.rnum input').val(),
				medExamImplYear : $target.find('.medExamImplYear input').val(),
				medExamStrDd : $target.find('.medExamStrDd input').val(),
				medExamEndDd : $target.find('.medExamEndDd input').val(),
				medExamTp : $target.find('.medExamTp input').val(),
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
			common.ajaxaa("/page/KW30000/KW30000U2200save.do", param);
			 getPage();
	     }
	});
	
	/* function deleteRow(btn) {
		var row = btn.parentNode.parentNode;
		row.parentNode.removeChild(row);
	}; */
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	function psnlPopClick(obj) {
		//팝업 사이즈 설정
	    var popupWidth = 600;
	    var popupHeight = 800;

	    var popupX = Math.ceil(( window.screen.width - popupWidth )/2);
	    var popupY = Math.ceil(( window.screen.height - popupHeight )/2); 
	
		//open한 새창을 변수 저장
		var winObj = "";
		var medExamStrDd = obj.getAttribute("data-medExamStrDd");
		var medExamEndDd = obj.getAttribute("data-medExamEndDd");
		var bzRgstNo = obj.getAttribute("data-bzRgstNo");
		var medExamTp = obj.getAttribute("data-medExamTp");
		
		var pop_settings ="'location=no, status=no, width= 1000px, height= 500px ,left=' + popupX+ ', top=' + popupY'";
		winObj = window.open("/page/KW30000/KW30000U2200chkPop.do", "점검표", pop_settings);
	
		//자식창에 넘겨줄값들
		winObj.medExamStrDd = medExamStrDd;
		winObj.medExamEndDd = medExamEndDd;
		winObj.bzRgstNo = bzRgstNo;
		winObj.medExamTp = medExamTp;
		};

		
		
		
		
		
	
	
</script>
