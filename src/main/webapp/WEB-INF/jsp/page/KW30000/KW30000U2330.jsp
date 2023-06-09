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
            <h2 class="con_sectionTit">건강관리 / <span class="subtit">건강검진결과 통계</span></h2>  
                      <!-- 통합보건프로그램 검진에서 구현할 통계 기능으로 구현(사업 프로그램 구축 시 반영) -->
        </div>
        
         <!-- ▼ 정보입력 영역 --> 
        <div class="tab_wrap mt20">
            <ul class="tab_base N3">
              <li><a href="/page/KW30000/KW30000U2310.do"><span>건강진단결과 통계</span></a></li>
              <li><a href="/page/KW30000/KW30000U2320.do"><span>문진내역결과 통계</span></a></li>
              <li class="On"><a href="/page/KW30000/KW30000U2330.do"><span>요관찰자 유소견자결과 통계</span></a></li>
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
            <option value="">성명</option>
            <option value="">검진구분</option>
          </select>
          <input type="text" name="searchKeyword" value="" placeholder="성명, 검진구분별 조회">
          <button type="submit" id="search">검색</button>
        </form>
      </span>

      <span class="board-search company-search">
                <form name="form" id="form" action="?" onsubmit="return page.search(this)">
                    <p>기준일자조회</p>
                  <input type="date" name="date" id="date" class="w180"><p class="ml10"> ~ </p> <input type="date" name="date" id="date" class="w180">
                  <button type="submit" id="search">검색</button>
                </form>
      </span>

      <!-- ▼ 버튼 영역 -->
        <div class="btn_top">            
            <a href="javascript:location.href='join05.php';" class="btn_round btn_save btn_prt"><span>인쇄</span></a>
        </div>
    </div>
    <!-- 테이블01 -->   
    
    <table class="board-list">
      <colgroup>
        <col style="width: 60px">
        <col style="width: 160px">
        <col style="width: 150px">
        <col style="width: 100px">
        <col style="width: 100px">
        <col style="width: 100px">
        <col style="width: 150px">
        <col style="width: 100px">
        <col style="width: 170px">
        <col style="width: auto">
      </colgroup>
      <thead>
        <tr>
          <th>NO</th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">단위사업체</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">공정<br>(부서)</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">성명</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">성별</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">연령</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">근무년수</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">판정</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">업무수행적합여부</option>
            </select>
          </th>
          <th>보고서작성</th>
        </tr>

      </thead>
      <tbody id="dataSection" name="tbody"></tbody>
	</table>
	<!-- 페이징 -->
	<div id="paginationBox" class="paging"></div>
<div class="km500">
  <span>
      <span class="km500tit">[ 건강관리 실시근거 ]</span><br>
      <b>일반건강진단(산업안전보건법 제129조)</b> <br>
      - 상시근로자의 건강관리를 위하여 주기적으로 실시하는 건강진단<br>
       - 사무직근로자 2년에 1회, 그 외 근로자 1년에 1회<br>
       -(과태료) 건강진단 대상 근로자 1명당 10만원(1차), 20만원(2차), 30만원(3차이상)
      <br><br>
      <b>특수건강진단(산업안전보건법 제130조)</b> <br>
       - <b class="tc_point2">★ 시행규칙 별표22</b> 에서 정한 유해인자에 노출되는 근로자의 건강관리를 위하여 실시하는 건강진단<br>
       - (과태료)건강진단 대상 근로자 1명당 10만원(1차), 20만원(2차), 30만원(3차이상)<br><br>

      <p class="point_box">★ 특수건강진단 대상 유해인자(산업안전보건법 시행규칙 별표22)</p><br>
      1. 화학적 인자가. 유기화합물(109종)<br>
      <p> 1) 가솔린(Gasoline; 8006-61-9)<br>
          <span class="gtext">검진주기 : 배치후/특수 : 6개월/12개월<br>
          검사항목 : 혈액(GOT, GPT, r-GPT)/소변검사</span><br>

          2) 글루타르알데히드(Gultaraldehyde; 111-30-8)<br>
          3) β-나프틸아민(β-Naphthylamine; 91-59-8)<br>
          4) 니트로글리세린(Nitroglycerin; 55-63-0)<br>
          5) 니트로메탄(Nitromethane; 75-52-5)<br>
          6) 니트로벤젠(Nitrobenzene; 98-95-3)<br>
          7) p-니트로아닐린(p-Nitroaniline; 100-01-6)<br>
          8) p-니트로클로로벤젠(p-Nitrochlorobenzene; 100-00-5)<br>
          9) 디니트로톨루엔(Dinitrotoluene; 25321-14-6 등)<br>
          10) N,N-디메틸아닐린(N,N-Dimethylaniline; 121-69-7)<br></p>
    </span>
</div>

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
				url : "/page/KW30000/KW30000U2330selectList", //서비스 주소 
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
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="unitCoNm">' + list[i].unitCoNm + '</td>';
						data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
						data += '<td class="nm">' + list[i].nm + '</td>';
						data += '<td class="gndr">' + list[i].gndr + '</td>';
						data += '<td class="age">' + list[i].age + '</td>';
						data += '<td class="srvIndctnCrs">' + list[i].srvIndctnCrs + '</td>';
						data += '<td class="jdg">' + list[i].jdg + '</td>';
						data += '<td class="wrkFflSuitYn">' + list[i].wrkFflSuitYn + '</td>';
						data += '<td><button>보고서</button></td>';
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
				}
			})
}

</script>