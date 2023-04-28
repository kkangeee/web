<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">사업장관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW10000/KW10000U1100.do">사업장관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">공정정보관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW10000/KW10000U1100.do">기본정보관리</a></li>
				<li><a href="/page/KW10000/KW10000U2100.do">공정정보관리</a></li>
				<li><a href="/page/KW10000/KW10000U3100.do">근로자정보관리</a></li>
			</ul>
		</li>
	</ul>
</div>
-->

<!-- #container -->
<div id="container">

	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>사업장관리</h1>
		</div>
	</div>

	<div class="inner">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">

				<!-- ▼ 타이틀 영역 -->
		        <div class="con_section ">
		            <h2 class="con_sectionTit"><span class="subtit">공정정보관리</span></h2> 
		        </div>

				<!-- ▼ 정보입력 영역 -->
				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
						
							<span class="board-search">
						          <select name="searchType" id="searchUnitCoNm" onchange="btnSearch()">		
							          	<option value="가동중">단위사업체</option>
									  	<option value="단위사업체전체">전체</option>	
						          </select>
						    </span>
						    <input type="hidden" id="click_unitCoNm" value="">
						    <span class="board-search">
						          <select name="searchType" id="searchPrcsNm" onchange="ucnSearch()">
						            	<option value="" hidden>공정명</option>
						          </select>
						    </span>

							<!-- ▼ 전체검색 영역 -->
							<span class="board-search company-search">
									<p>공정등록일조회</p>
									<input type="date" name="date" id="sDate" class="w180">
									<p class="ml10">~</p>
									<input type="date" name="date" id="nDate" class="w180" onkeyup="enterkey()">
									<input type="hidden" id="put_sDate">
									<input type="hidden" id="put_nDate">
									<button type="submit" id="btnSearch" onClick="btnSearch()">검색</button>
									
							</span>
							<!-- ▼ 버튼 영역 -->
					        <div class="btn_top">
					        	   <a href="javascript:void(0)" class="btn_round btn_reload btn_Tw" id="reloadBtn" onClick="reload()"><span>초기화</span></a>            
						           <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
						           <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
						           <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
						           <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
						           <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" onclick="printPage()" id="printBtn"><span>인쇄</span></a>
						 		   <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
						    </div>
						    <!-- ▼ 버튼 영역 -->
						</div>


						<table class="board-list">
							<colgroup>
								<col style="width: 30px">
								<col style="width: 40px">
								<col style="width: 120px">
								<col style="width: 96px">
								<col style="width: 96px">
								<col style="width: 110px">
<!-- 								<col style="width: 110px"> -->
								<col style="width: 70px">
							</colgroup>
							<thead>
								<tr>
									<th><input id="checkAll" type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>단위사업체</th>
									<th>공정명</th>
									<th>작업내용</th>
									<th>공정등록일</th>
									<th>상태</th>
								</tr>
							</thead>
							
							<!-- 리스트 영역 -->
							<tbody id="dataSection" name="tbody"></tbody>
							<!-- 리스트 영역 -->	
							
						</table>
							
						<!-- 페이징 -->
						<div id="paginationBox" class="paging"></div>
						<!-- 페이징 -->
						
						
						<div id="popData"></div>
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

	common.checkAll(); //체크박스기능 공통
	
	//var ajax_last_num = 0;	
	//var current_ajax_num = ajax_last_num;
	
	$(document).ready(function() {
		getPage();
		getUnitCoNm();
	})
	
	function reload(){
		location.reload(true)
	}
	//조회
	function btnSearch(){
		let sDate = $("#sDate").val();
		let nDate = $("#nDate").val();
		let unitCoNm = $("#searchUnitCoNm").val();
		$("#click_unitCoNm").val(unitCoNm);
		$("#put_sDate").val(sDate);
		$("#put_nDate").val(nDate);
		
		getPrcsNm();
		getPage();
	}
	
	//조회
	function ucnSearch(){
		let unitCoNm = $("#click_unitCoNm").val();
		getPage();
	}
	
	//검색 Enter Key
	function enterkey() {
		if (window.event.keyCode == 13) {
	    	$("#btnSearch").click();
	    }
	}
	
	//단위사업체명
	function getUnitCoNm(){
		$.ajax({
			url : "/page/KW10000/KW10000U2100UnitCoNm", //서비스 주소 
			success : function(res) {
				const unitCoNm = res['unitCoNm'];
				let lucn = "";
				//단위사업체명
				for(var i =0; i<unitCoNm.length; i++){
					lucn +='<option value="'+unitCoNm[i].searchUnitCoNm+'">'+unitCoNm[i].searchUnitCoNm+'</option>';			
				}
				$("#searchUnitCoNm").append(lucn);
				getPrcsNm();
			}
		});	
	}

	//공정명
	function getPrcsNm(){
		
		let PrcsNm = $("#click_unitCoNm").val();
		
		$.ajax({
			url : "/page/KW10000/KW10000U2100PrcsNm", //서비스 주소 
			data : {comSearchValC : PrcsNm},
			async : false,
			/*
			beforeSend:function(res){ 
				//ajax_last_num = ajax_last_num + 1; // 요청의 마지막 count 를 +1 
				//요청 전 실행되야할 코드 
			}, 
			*/
			success : function(res){ 
				//if(current_ajax_num == ajax_last_num - 1){ // 현 요청이 마지막 요청인지 확인
					let PrcsNm = res['PrcsNm'];
					
					let prcn = "";
					prcn +='<option value="" hidden>공정명</option>';
					prcn +='<option value="공정명전체">전체</option>';
					for (var i = 0; i < PrcsNm.length; i++) {
						prcn +='<option value="'+PrcsNm[i].searchPrcsNm+'">'+PrcsNm[i].searchPrcsNm+'</option>';
					}
					$("#searchPrcsNm").empty();
					$("#searchPrcsNm").append(prcn);
				//}	
			}
		
		});	
	}
	
	function getPage(page) {
		var comSearchValA = $("#put_sDate").val();
		var comSearchValB = $("#put_nDate").val();
		var comSearchValC = $("#searchUnitCoNm").val();
		var comSearchValD = $("#searchPrcsNm").val();
		
		
		$.ajax({
				url : "/page/KW10000/KW10000U2100selectList", //서비스 주소 
				data : {  //서비스 처리에 필요한 인자값
					comSearchValA : comSearchValA,
					comSearchValB : comSearchValB,
					comSearchValC : comSearchValC,
					comSearchValD : comSearchValD,
					page : page
				},
				
				success : function(res) {
					const list = res['resultList'];
					const pagination = res['pagination'];
					var totalCnt = "";
					var data = "";
					var block = "";
					var lucn = "";
					
					//페이지 번호 위치				
					totalCnt += '전체 <strong class="tc_point mr20">' + pagination['totalCount'] + '</strong>현재페이지 <strong class="tc_point"><span></span>' + pagination.cri['page'] + '/' + (Math.ceil(pagination['totalCount'] / pagination.cri['perPageNum'])) + '</strong>'
					//페이지 번호 위치
					
					// 테이블의 row를 삽입하는 부분
					if (list.length !== 0) {
						for (var i = 0; i < list.length; i++) {
							data += '<tr>';
							data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
							data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
							data += '<td class="rnum">' + list[i].rnum + '</td>';
							data += '<td class="unitCoNm">' + list[i].unitCoNm + '</td>';
							data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
							data += '<td class="wrkDtl">' + list[i].wrkDtl + '</td>';
							data += '<td class="prcsRgstDd">' + list[i].prcsRgstDd + '</td>';
							if(list[i].deleteTp === "N") data += '<td class="wrkPlcMgtUniqNo"><button style="pointer-events:none" type="button" class="btn_His2">가동중</button></td>';
							if(list[i].deleteTp === "Y")data += '<td class="wrkPlcMgtUniqNo"><button style="background:#f29886;pointer-events:none" type="button" class="btn_His2">가동중지</button></td>';
							data += '</tr>';
						}
					} else {
						data += "<tr id='el_delete'>";
						data += "<td colspan='7' style='color:blue'><span >등록된 게시글이 없습니다.</span></td>";
						data += "</tr>";	
					}
					
					// 이전버튼 활성화 여부를 결정하는 부분
					if (pagination['prev']) {
						block += "<a href='javascript:getPage(" + pagination['page'] + ")'> << </a>";
						block += "<a href='javascript:getPage(" + (pagination['startPage'] - 1) + ")'> < </a>";
					}
					
					// 번호를 표시하는 부분
					for (var i = pagination['startPage']; i < pagination['endPage'] + 1; i++) {
						block += "<a class='page-link' href='javascript:getPage(" + i + ")'>" + i + "</a>";
					}
	
					// 다음페이지 여부
					if (pagination['next'] && pagination['endPage'] > 0) {
						block += "<a href='javascript:getPage(" + (pagination['endPage'] + 1) + ")'> > </a>";
						block += "<a href='javascript:getPage(" + (Math.ceil(pagination['totalCount'] / pagination.cri['perPageNum'])) + ")'> >> </a>";
					}
											
					$("#totalCnt").html(totalCnt);						
					$("#dataSection").html(data);
					$("#paginationBox").html(block);
					$("tbody").html(data);
					$("#insertBtn").show();
					$("#deleteBtn").show();
					$("#updateBtn").show();
					$("#printBtn").show();
					$("#saveBtn").hide();
					$("#cancelBtn").hide();
					$("#sDate").empty();
					$("#nDate").empty();
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
			common.ajaxaa("/page/KW10000/KW10000U2100delete.do", param);
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
			html += '<td class="rnum"><input style="width:50px" type="text" value="'+$target.find('.rnum').text()+'" readonly></td>';
			html += '<td class="unitCoNm"><input style="width:170px" type="text" value="'+$target.find('.unitCoNm').text()+'"></td>';
			html += '<td class="prcsNm"><input style="width:140px" type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
			html += '<td class="wrkDtl"><input style="width:140px" type="text" value="'+$target.find('.wrkDtl').text()+'"></td>';
			html += '<td class="prcsRgstDd"><input type="date" name="date" style="width:150px;height:30px;" type="text" value="'+$target.find('.prcsRgstDd').text()+'"></td>';
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

	//추가 버튼 클릭시 tr생성
	$("#insertBtn").on("click",function() {
		let unitCoNm = document.getElementsByClassName('unitCoNm');
		let prcsNm = document.getElementsByClassName('prcsNm');
		let wrkDtl = document.getElementsByClassName('wrkDtl');
	
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="unitCoNm"><input style="width:170px" type="text"></td>';
		html += '<td class="prcsNm"><input style="width:140px" type="text"></td>';
		html += '<td class="wrkDtl"><input style="width:140px;" type="text"></td>';
		html += '<td class="prcsRgstDd"><input type="date" name="date" style="width:150px;" type="text"></td>';
		html += '<td></td>';
		html += '</tr>';
		
		$('#el_delete').remove();
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

	//저장(추가, 수정시 나오는 버튼) 버튼 클릭시 ajax호출 추가
	$("#saveBtn").on("click", function() {

		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
		
			arr.push({
				//seq클래스에 input유무가 추가, 수정인지 구분 가능(input없으면 추가)
				seq : $target.find('.seq input').val(),
				rnum : $target.find('.rnum input').val(),
				unitCoNm : $target.find('.unitCoNm input').val().trim(),
				prcsNm : $target.find('.prcsNm input').val().trim(),
				wrkDtl : $target.find('.wrkDtl input').val().trim(),
				prcsRgstDd : $target.find('.prcsRgstDd input').val(),
			});
		}

		var param = {
			"data" : JSON.stringify(arr)
		};
					
			
		if($target.find('.unitCoNm input').val() == "" ||  $target.find('.unitCoNm input').val() == null ){
			alert("단위사업체 명을 입력해주세요."); 	return false
		} 
		if($target.find('.prcsRgstDd input').val() == "" ||  $target.find('.prcsRgstDd input').val() == null ) {
			alert("공정 등록일을 입력해주세요."); 	return false
		} 		

		if (confirm("저장하시겠습니까?")) {
			common.ajaxaa("/page/KW10000/KW10000U2100save.do", param);
			getPage();
	    }
		
		$("#insertBtn").show();
		$("#deleteBtn").show();
		$("#updateBtn").show();
		$("#printBtn").show();
		$("#saveBtn").hide();
	});


  
  	//팝업 클릭
	function HisPopClick(obj) {
  		
		//팝업 사이즈 설정
	    var popupWidth = 600;
	    var popupHeight = 800;

	    var popupX = Math.ceil(( window.screen.width - popupWidth )/2);
	    var popupY = Math.ceil(( window.screen.height - popupHeight )/2); 
	
		//open한 새창을 변수 저장
		var winObj = "";
		
		var prcsNm = obj.getAttribute("data-prcsNm");
		var unitCoNm = obj.getAttribute("data-unitCoNm");
		
		var pop_settings ="'location=no, status=no, width=' + popupWidth + ',height=' + popupHeight + ',left=' + popupX+ ', top=' + popupY'";
		winObj = window.open("/page/KW10000/KW10000U2100Pop.do", "히스토리데이터", pop_settings);
	
		//자식창에 넘겨줄값들
		winObj.prcsNmVal = prcsNm;
		winObj.unitCoNmVal = unitCoNm;
					
	}
   	
	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	//인쇄버튼
	function printPage(){	 
		 window.print();
	}
		
</script>