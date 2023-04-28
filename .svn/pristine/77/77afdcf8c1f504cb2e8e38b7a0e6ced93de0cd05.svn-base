<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li><a href="/">홈</a></li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">보건관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">보건관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">교육관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">교육관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">교육종합관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">교육종합관리</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">외부교육승인</a></li>
				<li><a href="/page/KW30000/KW30000U5310.do">교육계획/실시등록</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">교육자료 다운</a></li>
			</ul>
		</li>
	</ul>
</div>
-->


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
					<h2 class="con_sectionTit">
						교육관리 > 교육계획 > <span class="subtit">실시 등록</span>
					</h2>
				</div>

				<!-- ▼ 정보입력 영역 -->
				<div>
					<ul class="tab_base N2">
						<li><a href="/page/KW30000/KW30000U5310.do" target="blank"><span>교육조회</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U5320.do"><span>교육생
									등록</span></a></li>
					</ul>
				</div>

				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
							<!-- ▼ 전체검색 영역 -->
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
							<!-- ▼ 전체검색 영역 -->

							<!-- ▼ 버튼 영역 -->
					        <div class="btn_top">            
						            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>인쇄</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
							</div>
							<!-- ▼ 버튼 영역 -->
						</div>

						<!-- 테이블01 -->
						<span class="board_Ttxt">기본은 공정 선택 등록-공정 선택 시 해당 공정 소속 근로자
							목록 생성 / 개별근로자 삭제, 등록 기능 추가 / 명단(엑셀) 업로드 기능 </span>
						<!-- 항목선택 -->

						<table class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
								<!--  <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: 280px">
                              <col style="width: auto"> -->
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>
									<select class="select_bd_tit" name="searchType">
											<option value="">단위사업체 </option>
											<option value="">공장1</option>
											<option value="">안성공장2</option>
									</select>
									</th>
									<th>
									<select class="select_bd_tit" name="searchType">
											<option value="">공정 </option>
											<option value="">용접</option>
											<option value="">사출</option>
									</select>
									</th>
									<th>사번</th>
									<th>성명</th>
									<th>이수확인</th>
								</tr>

							</thead>
							<!-- 리스트 -->
							<tbody id="dataSection" name="tbody"></tbody>
							<!-- 리스트 -->
						</table>

						<!-- //테이블01 -->

						<!-- 페이징 -->
						<div id="paginationBox" class="paging"></div>
						<!-- 페이징 -->

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
	
	//인쇄버튼
	function printPage() {
		window.print();
	}
	
	//페이지 리스트 가져오기
	function getPage(page) {
		var searchType = $("#searchType").val();
		var search = $("#searchInput").val();
		$
				.ajax({
					url : "/page/KW30000/KW30000U5320selectList", //서비스 주소 
					data : { //서비스 처리에 필요한 인자값
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
						totalCnt += '전체 <strong class="tc_point mr20">'+ pagination['listCnt']+ '</strong>현재페이지 <strong class="tc_point"><span></span>'+ pagination['page'] + '/'+ pagination['listCnt'] + '</strong>'

						// 테이블의 row를 삽입하는 부분
						for (var i = 0; i < list.length; i++) {
							data += '<tr>';
							data += '<td style="text-align:center;"><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
							data += '<td style="display:none" class="seq">'+ list[i].seq + '</td>';
							data += '<td style="text-align:center;" class="rNum">' + list[i].rNum+ '</td>';
							data += '<td style="text-align:center;" class="wrkPlcMgtUniqNm">' + list[i].wrkPlcMgtUniqNm+ '</td>';
							data += '<td style="text-align:center;" class="prcsNm">' + list[i].prcsNm+ '</td>';
							data += '<td style="text-align:center;" class="tgtPplEmpeNo">' + list[i].tgtPplEmpeNo+ '</td>';
							data += '<td style="text-align:center;" class="tgtPplNm">'+ list[i].tgtPplNm + '</td>';
							data += '<td id="bzRgstNo" style="display:none" class="bzRgstNo">'+ list[i].bzRgstNo + '</td>';
							data += '<td><button type="button" OnClick="newPopClick();" class="btn_His2">이수확인</button></td>';
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
				 seq : $("input[name=agree1]:checked").eq(i).val()
			 });
		}
		var param = {
			"data" : JSON.stringify(arr)
		};
		
		 if (confirm("삭제하시겠습니까?")) {
			common.ajaxaa("/page/KW30000/KW30000U5320delete.do", param);
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
			html += '<td class="rNum"><input type="text" value="'+$target.find('.rNum').text()+'" disabled></td>';
			html += '<td class="wrkPlcMgtUniqNm" ><input style="text-align:center;" type="text" value="'+$target.find('.wrkPlcMgtUniqNm').text()+'" disabled></td>';
			html += '<td class="prcsNm"><input style="text-align:center;" type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
			html += '<td class="tgtPplEmpeNo"><input style="text-align:center;" type="text" value="'+$target.find('.tgtPplEmpeNo').text()+'"></td>';
			html += '<td class="tgtPplNm"><input style="text-align:center;" type="text" value="'+$target.find('.tgtPplNm').text()+'"></td>';
			html += '<td style="display:none" class="seq"><input style="text-align:center;" type="text" value="'+$target.find('.seq').text()+'" readonly></td>';
			html += '<td class="fileUp"><input type="file" name="uploadFile" multiple="multiple"></td>';
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
			html += '<td class="rNum"></td>';
			html += '<td class="wrkPlcMgtUniqNm"></td>';
			html += '<td class="prcsNm"><input  style="text-align:center;" type="text"></td>';
			html += '<td class="tgtPplEmpeNo"><input  style="text-align:center;" type="text"></td>';
			html += '<td class="tgtPplNm"><input  style="text-align:center;" type="text"></td>';
			html += '<td class="fileUp"><input type="file" name="uploadFile" multiple="multiple"></td>';
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
					prcsNm : $target.find('.prcsNm input').val(),
					tgtPplEmpeNo : $target.find('.tgtPplEmpeNo input').val(),
					tgtPplNm : $target.find('.tgtPplNm input').val(),
					fileUp : $target.find('.fileUp input').val(),
				});
			}
			
			var param = {
				"data" : JSON.stringify(arr)
			};
			
			console.log(param);
			$("#insertBtn").show();
			$("#deleteBtn").show();
			$("#updateBtn").show();
			$("#printBtn").show();
			$("#saveBtn").hide();
			
			if (confirm("저장하시겠습니까?")) {
				common.ajaxaa("/page/KW30000/KW30000U5320save.do", param);
				 getPage();
		     }
		});
		
		$("#cancelBtn").on('click',function() {
			getPage();
		});
	
</script>
