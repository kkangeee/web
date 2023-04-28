<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
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
            <h2 class="con_sectionTit">교육관리 > <span class="subtit">교육자료 다운</span></h2>            
        </div>
        
        <!-- ▼ 정보입력 영역 -->
        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
      <!-- ▼ 사업자명 사업자등록번호 검색 영역 -->
      <span class="board-search">
        <form>
          <input type="hidden" name="pageNum" value="1">
          <select name="searchType">
            <option value="">업종</option>
            <option value="">제조업</option>
            <option value="">건설</option>
            <option value="">반도체업</option>
            <option value="">서비스업</option>
            <option value="">기타</option>
          </select>
      </span>
      <span class="board-search">
          <input type="hidden" name="pageNum" value="1">
          <select name="searchType">
            <option value="">교육종류</option>
            <option value="">정기</option>
            <option value="">채용 시</option>
            <option value="">특별</option>
            <option value="">위험성평가</option>
            <option value="">기타</option>
          </select>
        </form>
      </span>
      <!-- ▼ 전체검색 영역 -->
    </div>
    <!-- 테이블01 --> 
      <!-- 항목선택 -->
    			 <form id="boardForm" name="boardForm" method="post">
                       <table class="board-list">
                            <colgroup>
                              	<col style="width: 160px">
                              	<col style="width: 160px">
                              	<col style="width: 160px">
						        <col style="width: 600px">
						        <col style="width: 160px">
						        <col style="width: 160px">
						        <col style="width: 160px">
                            </colgroup>
                            <thead>
                              <tr>
	                              <th>NO</th>
	                              <th>업종</th>
	                              <th>교육종류</th>
						          <th>교육주제</th>
						          <th>작성자</th>
						          <th>작성일</th>
						          <th>조회</th>
                              </tr>
                            </thead>
                            <tbody id="dataSection" name="tbody"></tbody>
                          </table>
					</form>
                          <!-- //테이블01 -->
                         <div id="paginationBox" class="paging"></div>
                         <div class="button-group bottom">
							<button type="button" class="primary" onclick="location.href='/page/KW30000/KW30000U5400_write.do'">글쓰기</button>
						 </div>	
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
    
    <!-- ### script ###-->
<script type="text/javascript">
	
	//페이지 로딩시 리스트 호출
	$(document).ready(function() {
		getPage();
	})

	//검색
	$("#btnSearch").click(function() {
		const searchType = $("#keywordType").val();
		const search = $("#keyword").val();
		
		$("#searchType").val(searchType);
		$("#searchInput").val(search);
		
		getPage();
	});
	
	//검색 Enter Key
	function enterkey() {
		if (window.event.keyCode == 13) {
	    	$("#btnSearch").click();
	    }
	}
	
	//페이지 리스트 출력
	function getPage(page) {
		var searchType = $("#searchType").val();
		var search = $("#searchInput").val();
		$.ajax({
					url : "/page/KW30000/KW30000U5400selectList", //서비스 주소   
					data : { //서비스 처리에 필요한 인자값
						page : page,
						searchType : searchType,
						async: false,
						keyword : search
					},
					success : function(res) {
						const list = res['resultList'];
						const pagination = res['pagination'];
						var totalCnt = "";
						var data = "";
						var block = "";
						 
						//페이지 번호 위치				
						totalCnt += '전체 <strong class="tc_point mr20">' +pagination['listCnt']+ '</strong>현재페이지 <strong class="tc_point"><span></span>' +pagination['page']+ '/' +pagination['pageCnt']+ '</strong>'
						
						if(totalCnt !== 0){
							// 테이블의 row를 삽입하는 부분
							for (var i = 0; i < list.length; i++) {
								data += "<tr>";
								data += "<td>" + list[i]['rnum'] + "</td>";																					
								data += "<td>" + list[i]['bzSctr'] + "</td>";																					
								data += "<td>" + list[i]['lrgClss'] + "</td>";																					
								data += "<td style='cursor: pointer;' onClick='fn_view("+ list[i]['contentId'] + ")'>" + list[i]['title'] + "</td>";
								data += "<td>" + list[i]['displayUser'] + "</td>";
								data += "<td>" + list[i]['createTimestamp'] + "</td>";
								data += "<td>" + list[i]['cnt'] + "</td>";
								data += "</tr>";
							}																							
						} else {
							data += "<tr>";
							data += "<td></td>";																					
							data += "<td>등록된 게시글이 없습니다.</td>";
							data += "<td></td>";
							data += "<td></td>";
							data += "<td></td>";
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
	
	//글 상세 보기
	function fn_view(contentId){
		  var form = document.getElementById("boardForm");
		  var url = "<c:url value='/page/KW30000/KW30000U5400view'/>?contentId=" + contentId;
		  console.log(url);
		   form.action = url;    
		   form.submit(); 
	}

</script>