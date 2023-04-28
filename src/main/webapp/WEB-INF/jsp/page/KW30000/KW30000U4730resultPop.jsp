<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <!-- meta -->
    <title>통합산업보건 | 대한산업보건협회</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=1190" />

    <meta name="_csrf_header" id="_csrf_header" content="X-XSRF-TOKEN">
    <meta name="_csrf" id="_csrf" content="52cb9d18-460c-4580-b26b-e373cd889eb0">
    <meta property="og:image" content="http://www.atos.co.kr/kiha.iohp/images/logo.png">
  

	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" /><!-- 노토산 굵은 폰트 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/size.css" />
	<script src="https://cdn.jsdelivr.net/npm/css-vars-ponyfill@2"></script>
	<script src="http://testh.kiha21.or.kr/assets/js/commons/stickyfill.min.js"></script>
	<script src="http://testh.kiha21.or.kr/assets/js/commons/jquery-1.12.4.min.js"></script>
	<script src="http://testh.kiha21.or.kr/assets/js/commons/common.js?1"></script>
	<script src="http://testh.kiha21.or.kr/public/moment/moment-with-locales.min.js"></script> 
	<script src="${pageContext.request.contextPath}/js/common.js"></script> 
</head>
<body>
 <section>
    <div class="pop_title">작업환경관리 > 위험성 평가 > 화학물질위험성평가 결과 관리 > 결과 관리 </div>
   <!-- ### HTML ###-->
	  <!-- #container -->
   	 <div id="container">
        <div class="inner">
          <!-- 하단여백 섹션으로 구분 -->
            <div class="con_area">       
       			 <div class="mt20">
					  	<section id="content">
					  	<div class="button-group top">
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
					 <!-- ▼ 버튼 영역 -->
					        <div class="btn_top">            
					            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>추가</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>삭제</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>수정</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>저장</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw print-button" onclick="printPage()" id="printBtn"><span>인쇄</span></a>
					            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>취소</span></a>
							</div>
					    </div>
					    	<div class="button-group top">
					    	</div>
						   <table class="board-list" id="viewSmryTb">
						        <col style="width: 30px">
		                             <col style="width: 60px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
		                             <col style="width: 100px">
						      </colgroup>
						      <thead>
						        <tr>
					          	   <th><input type="checkbox" name="agree1" value="Y" id="checkAll"></th>
	                               <th>NO</th>
	                               <th>공정명</th>
	                               <th>세부작업명</th>
	                               <th>위험분류</th>
	                               <th>위험발생 상황 및 결과</th>
	                               <th>현재의 안전보건조치</th>
	                               <th>현재위험성</th>
	                               <th>감소대책</th>
	                               <th>개선후위험성 </th>
	                               <th>개선예정일 </th>
	                               <th>완료일</th>
	                               <th>담당자</th>
						        </tr>
						      </thead>
						      <tbody id="dataSection" name="tbody"></tbody>
						    </table>
					  </section>
			        </div>
			    </div>
        	</div>
		</div>
	</section>
<script>
//부모창 값 받기
var bzRgstNo = bzRgstNo;
var seq = seq;

console.log("bzRgstNo :::::" + bzRgstNo);
console.log("seq :::::" + seq);

$(document).ready(function() {
	getPage();
})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U4730PopList", //서비스 주소 
				data : {  //서비스 처리에 필요한 인자값
					page : page,
					searchType : searchType,
					keyword : search,
					comSearchValA : bzRgstNo,
					comSearchValB : seq
				},
				success : function(res) {
					const list = res['excelList'];
					const pagination = res['pagination'];
					var totalCnt = "";
					var data = "";
					var block = "";
					//페이지 번호 위치				
					console.log("list ::::::" + list);
					if(list.length !== 0){					
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < list.length; i++) {
						data += '<tr>';
						data += '<td><input type="checkbox" name="agree2" value="'+ list[i].seq+ '"></td>';
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td style="display:none" class="bzRgstNo">' + list[i].bzRgstNo + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="medExamDd">' + list[i].medExamDd + '</td>';
						data += '<td class="unitCoNm">' + list[i].unitCoNm + '</td>';
						data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
						data += '<td class="wrkrNm">' + list[i].wrkrNm + '</td>';
						data += '<td class="gndr">' + list[i].gndr + '</td>';
						data += '<td class="srvIndctnCrs">' + list[i].srvIndctnCrs + '</td>';
						data += '<td class="examTp">' + list[i].examTp + '</td>';
						data += '<td class="jdgRslt">' + list[i].jdgRslt + '</td>';
						data += '<td class="wrkSuit">' + list[i].wrkSuit + '</td>';
						if(viewSmryYN != 'Y'){
							data += '<td class="hgt">' + list[i].hgt + '</td>';
							data += '<td class="wgt">' + list[i].wgt + '</td>';
							data += '<td class="bmi">' + list[i].bmi + '</td>';
							data += '<td class="wstCrcm">' + list[i].wstCrcm + '</td>';
							data += '<td class="sbp">' + list[i].sbp + '</td>';
							data += '<td class="dbp">' + list[i].dbp + '</td>';
							data += '<td class="hemo">' + list[i].hemo + '</td>';
							data += '<td class="fastGluco">' + list[i].fastGluco + '</td>';
							data += '<td class="totChol">' + list[i].totChol + '</td>';
							data += '<td class="hdl">' + list[i].hdl + '</td>';
							data += '<td class="nf">' + list[i].nf + '</td>';
							data += '<td class="ldl">' + list[i].ldl + '</td>';
							data += '<td class="scr">' + list[i].scr + '</td>';
							data += '<td class="egfr">' + list[i].egfr + '</td>';
							data += '<td class="ast">' + list[i].ast + '</td>';
							data += '<td class="art">' + list[i].art + '</td>';
							data += '<td class="gamaGtp">' + list[i].gamaGtp + '</td>';
							data += '<td class="urne">' + list[i].urne + '</td>';
							data += '<td class="chstFoto">' + list[i].chstFoto + '</td>';
							data += '<td class="pstMedCaseHst">' + list[i].pstMedCaseHst + '</td>';
							data += '<td class="mdCure">' + list[i].mdCure + '</td>';
							data += '<td class="othr">' + list[i].othr + '</td>'; 
						}
						data += '</tr>';
					}
					
					} else {
						data += "<tr>";
						if(viewSmryYN == 'Y'){
							data += "<td colspan='11'>등록된 게시글이 없습니다.</td>";
						}else {
							data += "<td colspan='30'>등록된 게시글이 없습니다.</td>";
						}
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




	
</script>