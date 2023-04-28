<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">정보마당</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW60000/KW60000U1100.do">정보마당</a></li>
			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">관련법령</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW60000/KW60000U1100.do">관련법령</a></li>
				<li><a href="/page/KW60000/KW60000U2100.do">공단지침</a></li>
				<li><a href="/page/KW60000/KW60000U3100.do">산안법 핸드북</a></li>
				<li><a href="/page/KW60000/KW60000U4100.do">관련서식</a></li>
				<li><a href="/page/KW60000/KW60000U5100.do">관련정보</a></li>
			</ul>
		</li>
	</ul>
</div>
-->
    
<!-- #container -->
<div id="container">
	<!-- head title -->    
	<div class="headline sub_headline sub_headline01">
	  <div class="inner">
	      <h1>정보마당</h1>
	  </div>
	</div>      
    
    <div class="inner">
        <!-- #content section////////////////////////////// -->
		<section id="content">
			<!-- ▼ 타이틀 영역 -->
			<div class="con_section ">
		            <h2 class="con_sectionTit"><span class="subtit">관련정보</span></h2> 
		    </div>
			<!--타이틀 영역 -->
			<div class="button-group top" style="justify-content: flex-end;margin:0px">
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
						<input type="text" class="form-control form-control-sm" name="keyword" id="keyword" onkeyup="enterkey()" placeholder="검색어를 입력하세요.">
						<button type="submit" id="btnSearch" name="btnSearch">검색</button>
						<input type="hidden" id="searchInput" value="" />
				<!-- </form> -->
				</span>
			</div>
	
		    <!-- 테이블01 -->   
		     <form id="boardForm" name="boardForm" method="post">
		     
		     	<!--page totalCnt -->
				<p id="totalCnt" class="allNB"></p>
				<!--page totalCnt -->
		     
			    <table class="board-list">
			      <colgroup>
			        <col style="width: 160px">
			        <col style="width: 740px">
			        <col style="width: 50">
			        <col style="width: 50">
			        <col style="width: 50">
			      </colgroup>
			      <thead>
			        <tr>
			          <th>NO</th>
			          <th>제목</th>
			          <th>작성자</th>
			          <th>작성일</th>
			          <th>조회</th>
			        </tr>
			
			      </thead>
			      	<!-- 리스트 내용 영역 -->
					<tbody id="dataSection"></tbody>
					<!-- 리스트 내용 영역 -->
			    </table>
			</form>
		    <!-- //테이블01 -->
		    
		  	<!-- 페이징 -->
			<div id="paginationBox" class="paging"></div>
			<!-- 페이징 -->
			
			<!-- 글쓰기 버튼 처리 -->
			<div class="button-group bottom">
				<c:if test="${sessionScope.mbrId eq 'admin'}">
						<button type="button" class="primary" onclick="location.href='/page/KW60000/KW60000U5100_write.do'">정보등록</button>
				</c:if>
			</div>	
			<!-- 하단box -->
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
			<!-- 하단box -->
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
					url : "/page/KW60000/kw60000U5100List.do", //서비스 주소 
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
						totalCnt += '전체 <strong class="tc_point mr20">'
								+ pagination['totalCount']
								+ '</strong>현재페이지 <strong class="tc_point"><span></span>'
								+ pagination.cri['page']
								+ '/'
								+ (Math.ceil(pagination['totalCount']
										/ pagination.cri['perPageNum']))
								+ '</strong>'
						//페이지 번호 위치
						
						if(totalCnt !== 0){
							// 테이블의 row를 삽입하는 부분
							for (var i = 0; i < list.length; i++) {
								data += "<tr>";
								data += "<td>" + list[i]['rNum'] + "</td>";																					
								data += "<td style='cursor: pointer;' onClick='fn_view("+ list[i]['contentId'] + ")'>" + list[i]['title'] + "</td>";
								data += "<td>" + list[i]['displayUser'] + "</td>";
								data += "<td>" + list[i]['regDt'] + "</td>";
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
		  var url = "<c:url value='/page/KW60000/KW60000U5100view.do'/>?contentId=" + contentId;
		   form.action = url;    
		   form.submit(); 
	}

</script>
<!-- ### script ###-->