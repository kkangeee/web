<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
        <ul>
          <li>
              <button onclick="$(this).toggleClass('active').next().slideToggle();" class="">사업장관리</button>
           <ul class="dropdown-list clear-able" style="display: none;">
              <li>
                <a href="/page/KW10000/KW10000U1100.do">사업장관리</a>
              </li>
            </ul>
          </li>
          <li>
              <button onclick="$(this).toggleClass('active').next().slideToggle();">근로자정보관리</button>
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
		            <h2 class="con_sectionTit"><span class="subtit">근로자정보관리</span></h2> 
		        </div>
		        
				<!-- ▼ 정보입력 영역 -->
				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
							<!-- ▼ 전체검색 영역 -->
							<span class="board-search company-search">
								<form name="form" id="form" action="?" onsubmit="return page.search(this)">
									<p>기준일자조회</p>
									<input type="date" name="date" id="date" class="w180">
									<button type="submit" id="search">검색</button>
								</form>
							</span>
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
						<table class="board-list">
							<colgroup>
								<col style="width: 30px">
								<col style="width: 43px">
								<col style="width: 105px">
								<col style="width: 100px">
								<col style="width: 80px">
								<col style="width: 90px">
								<col style="width: 75px">
								<col style="width: 50px">
								<col style="width: 130px">
								<col style="width: 130px">
								<col style="width: 80px">
								<col style="width: 80px">
								<col style="width: 120px">
								<col style="width: 120px">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>단위사업체</th>
									<th>공정명</th>
									<th>직무역할</th>
									<th>사번</th>
									<th>근로자명</th>
									<th>성별</th>
									<th>생년원일</th>
									<th>전화번호</th>
									<th>고용형태</th>
									<th>근무형태</th>
									<th>등록일자</th>
									<th>종료일자</th>
								</tr>
							</thead>
							<!-- 리스트 영역 -->
							<tbody id="dataSection" name="tbody"></tbody>
							<!-- 리스트 영역 -->	
						</table>
						
						<!-- 페이징 -->
						<div id="paginationBox" class="paging"></div>
						<!-- 페이징 -->
						
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

$(document).ready(function() {
	getPage();
})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW10000/KW10000U3100selectList", //서비스 주소 
				data : {  //서비스 처리에 필요한 인자값
					page : page,
					searchType : searchType,
					keyword : search,
					async: false
				},
				success : function(res) {
					const list = res['resultList'];
					const pagination = res['pagination'];
					var totalCnt = "";
					var data = "";
					var block = "";
					
					//페이지 번호 위치				
					totalCnt += '전체 <strong class="tc_point mr20">' + pagination['totalCount'] + '</strong>현재페이지 <strong class="tc_point"><span></span>' + pagination.cri['page'] + '/' + (Math.ceil(pagination['totalCount'] / pagination.cri['perPageNum'])) + '</strong>'
					//페이지 번호 위치
									
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < list.length; i++) {
						data += '<tr>';
						data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="unitCoNm">' + list[i].unitCoNm + '</td>';
						data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
						data += '<td class="roleNm">' + list[i].roleNm + '</td>';
						data += '<td class="empeNo">' + list[i].empeNo + '</td>';
						data += '<td class="nm">' + list[i].nm + '</td>';
						data += '<td class="gndr">' + list[i].gndr + '</td>';
						data += '<td class="bdt">' + list[i].bdt + '</td>';
						data += '<td class="fonNo">' + list[i].fonNo + '</td>';
						data += '<td class="empForm">' + list[i].empForm + '</td>';
						data += '<td class="srvForm">' + list[i].srvForm + '</td>';
						data += '<td class="trsfInDd">' + list[i].trsfInDd + '</td>';
						data += '<td class="endDd">' + list[i].endDd + '</td>';
						data += '</tr>';
					}
					
					// 이전버튼 활성화 여부를 결정하는 부분
					if (pagination['prev']) {
						block += "<a href='javascript:getPage(" + pagination['page'] + ")'> << </a>";
						block += "<a href='javascript:getPage(" + (pagination['startPage'] - 1) + ")'> < </a>";
						// 시작 페이지 > 처리
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
					$("#addprcsBtn").show();
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
		common.ajaxaa("/page/KW10000/KW10000U3100delete.do", param);
		 getPage();
     }
});

//단위사업체 선택시 공정명 가져오기
function changePrcsNm(){
    var itemidSelect = document.getElementById("searchUnitCoNm");
    // select element에서 선택된 option의 value
    var UnitCoNm = itemidSelect.options[itemidSelect.selectedIndex].value;
	
    $.ajax({
		url : "/page/KW10000/KW10000U3100selectNmList", //서비스 주소 
		data : {  //서비스 처리에 필요한 인자값
			comSearchValA : UnitCoNm,		
		},
		success : function(res) {
			const listPrcsNm = res['resultPrcsNm'];
			var lpn = "";
			if(listPrcsNm?.length){
				for (var i = 0; i < listPrcsNm.length; i++) {
					lpn +='<option value="'+listPrcsNm[i].searchPrcsNm+'">'+listPrcsNm[i].searchPrcsNm+'</option>';
				}
			} else {
				lpn +='<option value="-">-</option>';
			}
	
			$("#searchPrcsNm").empty();
			$("#searchPrcsNm").append(lpn);
		}
	})
}	


//수정 버튼 클릭시  .class text 값 찾기
$("#updateBtn").on("click", function() {
	if($("input[name=agree1]:checked").length == 0){
		alert("수정하실 데이터을 선택해주세요");
		return
	};
	
	for (i = 0; i < $("input[name=agree1]:checked").length; i++) {
		$target = $("input[name=agree1]:checked").eq(i).closest('tr');
		var html = "";
		
		html += '<tr>';
		html += '<td><input style="width:20px;" type="checkbox" name="agree1" value="new" class="new"></td>';
		html += '<td class="rnum"><input style="width:35px;" type="text" value="'+$target.find('.rnum').text()+'" readonly></td>';
		html += '<td class="unitCoNm"><select style="width:102px;" onchange="changePrcsNm()" id="searchUnitCoNm" class="select_bd_tit_A"><option hidden value="'+$target.find('.unitCoNm').text()+'">'+$target.find('.unitCoNm').text()+'</option></select></td>';
		html += '<td class="prcsNm"><select style="width:80px" id="searchPrcsNm" class="select_bd_tit_A"><option value="'+$target.find('.prcsNm').text()+'">'+$target.find('.prcsNm').text()+'</option></select></td>';
		html += '<td class="roleNm"><select style="width:80px" id"searchRoleNm" class="select_bd_tit_A"><option hidden value="'+$target.find('.roleNm').text()+'">'+$target.find('.roleNm').text()+'</option><option value="일반">일반</option><option value="안전보건총괄책임자">안전보건총괄책임자</option><option value="안전보건관리책임자">안전보건관리책임자</option><option value="관리감독자">관리감독자</option><option value="보건관리자">보건관리자</option><option value="안전관리자">안전관리자</option></select></td>';
		html += '<td class="empeNo" readonly><input style="width:90px;" type="text" value="'+$target.find('.empeNo').text()+'" readonly></td>';
		html += '<td class="nm"><input type="text" style="width:70px;" value="'+$target.find('.nm').text()+'"></td>';
		html += '<td class="gndr"><input type="text" style="width:50px;" value="'+$target.find('.gndr').text()+'"></td>';
		html += '<td class="bdt"><input type="text" style="width:130px;" value="'+$target.find('.bdt').text()+'"></td>';
		html += '<td class="fonNo"><input type="text" style="width:130px;" value="'+$target.find('.fonNo').text()+'"></td>';
		html += '<td class="empForm"><input type="text" style="width:80px;" value="'+$target.find('.empForm').text()+'"></td>';
		html += '<td class="srvForm"><input type="text" style="width:80px;" value="'+$target.find('.srvForm').text()+'"></td>';
		html += '<td class="trsfInDd"><input type="date" name="date" style="width:120px;height:30px;padding:0px 5px" value="'+$target.find('.trsfInDd').text()+'"></td>';
		html += '<td class="endDd"><input type="date" name="date" style="width:120px;height:30px;padding:0px 5px" value="'+$target.find('.endDd').text()+'"></td>';
		html += '<td style="display:none" class="seq"><input type="text" value="'+$target.find('.seq').text()+'" readonly></td>';
		html += '</tr>';
		
		$target.before(html);
		$target.hide();
		
	}
		
	$.ajax({
		url : "/page/KW10000/KW10000U3100selectNmList", //서비스 주소 
		success : function(res){
			const listUnitCoNm = res['resultUnitCoNm'];
			var lucn = "";
			for (var i = 0; i < listUnitCoNm.length; i++) {   
				lucn +='<option value="'+listUnitCoNm[i].searchUnitCoNm+'">'+listUnitCoNm[i].searchUnitCoNm+'</option>';
			}
			
			$("#searchUnitCoNm").append(lucn);
			//changePrcsNm()
		}
	})
			
		
		$(".new").prop("checked",true);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#addprcsBtn").hide();
		$("#cancelBtn").show();
});


	//추가 버튼 클릭시 tr생성만(ajax안간다.)
	$("#insertBtn").on("click",function() {
		
		$.ajax({
			url : "/page/KW10000/KW10000U3100selectNmList", //서비스 주소 

			success : function(res) {
				const listPrcsNm = res['resultPrcsNm'];
				const listUnitCoNm = res['resultUnitCoNm'];

				var html = "";
				var lpn = "";
				var lucn = "";
				html += '<tr>';
				html += '<td><input style="width:20px;" type="checkbox" name="agree1" checked="checked" value="new"></td>';
				html += '<td class="rnum"></td>';
				html += '<td class="unitCoNm"><select style="width:102px;" onchange="changePrcsNm()" id="searchUnitCoNm" class="select_bd_tit_A"><option value="-">-</option></select></td>';
				for (var i = 0; i < listUnitCoNm.length; i++) {
					lucn +='<option value="'+listUnitCoNm[i].searchUnitCoNm+'">'+listUnitCoNm[i].searchUnitCoNm+'</option>';
				}
				html += '<td class="prcsNm"><select style="width:100px" id="searchPrcsNm" class="select_bd_tit_A"></select></td>';
				html += '<td class="roleNm"><select style="width:80px" class="select_bd_tit_A"><option value="일반">일반</option><option value="안전보건관리책임자">안전보건관리책임자</option><option value="안전보건총괄책임자">안전보건총괄책임자</option><option value="관리감독자">관리감독자</option><option value="<option value="보건관리자">보건관리자</option>"><option value="안전관리자">안전관리자</option></select></td>';
				html += '<td class="empeNo"><input style="width:90px;" type="text"></td>';
				html += '<td class="nm"><input style="width:70px;" type="text"></td>';
				html += '<td class="gndr"><input style="width:40px;" type="text"></td>';
				html += '<td class="bdt"><input style="width:130px;" type="text"></td>';
				html += '<td class="fonNo"><input style="width:130px;" type="text"></td>';
				html += '<td class="empForm"><input style="width:80px;" type="text"></td>';
				html += '<td class="srvForm"><input style="width:80px;" type="text"></td>';
				html += '<td class="trsfInDd"><input type="date" name="date" style="width:120px;height:30px;padding:0px 5px"></td>';
				html += '<td class="endDd"><input type="date" name="date" style="width:120px;height:30px;padding:0px 5px"></td>';
				html += '</tr>';
				$("tbody").prepend(html);
				$("#searchUnitCoNm").append(lucn);
				changePrcsNm();
			}
		})
		
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
				empeNo : $target.find('.empeNo input').val(),
				nm : $target.find('.nm input').val(),
				gndr : $target.find('.gndr input').val(),
				bdt : $target.find('.bdt input').val(),
				fonNo : $target.find('.fonNo input').val(),
				prcsNm : $target.find('.prcsNm select').val(),
				unitCoNm : $target.find('.unitCoNm select').val(),
				roleNm : $target.find('.roleNm select').val(),
				empForm : $target.find('.empForm input').val(),
				srvForm : $target.find('.srvForm input').val(),
				trsfInDd : $target.find('.trsfInDd input').val(),
				endDd : $target.find('.endDd input').val(),
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
		$("#cancelBtn").show();
		
		if (confirm("저장하시겠습니까?")) {
			common.ajaxaa("/page/KW10000/KW10000U3100save.do", param);
			getPage();//페이지 다시 출력
	     }
	});

  	//취소버튼
	$("#cancelBtn").on('click',function() {
		getPage();
	});
  		
</script>