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
</head>
<body>
 <section >
    	<div class="pop_title">공정정보관리</div>
   <!-- ### HTML ###-->
			<!-- ▼ 정보입력 영역 -->
			<div class="mt20">
				<!-- #content section////////////////////////////// -->
				<section id="content">
	
					<table class="board-list">
						<colgroup>
							<col style="width: 40px">
							<col style="width: 120px">
							<col style="width: 96px">
							<col style="width: 80px">
							<col style="width: 96px">
							<col style="width: 120px">		
						</colgroup>
						<thead>
							<tr>
								<th>NO</th>
								<th>단위사업체</th>
								<th>공정명</th>
								<th>작업내용</th>
								<th>공정등록일</th>
								<th>공정수정일</th>
							</tr>
						</thead>
	
						<!-- 리스트 영역 -->
						<tbody id="pop_dataSection" name="tbody"></tbody>
						<!-- 리스트 영역 -->
					</table>
	
					<!-- 페이징 -->
					<div id="paginationBox" class="paging"></div>
					<!-- 페이징 -->

				</section>
			</div>
		</div>
  </section>
</body>
<!-- ### HTML ###-->
<!-- ### script ###-->
<script>

//부모창 값 받기
var prcsNmVal = prcsNmVal;
var unitCoNmVal = unitCoNmVal;

//팝청 페이지 로딩
$(document).ready(function() {
	getPage();
})
	
function getPage(page) {
	
	$.ajax({
			url : "/page/KW10000/KW10000U2100popList", //서비스 주소 
		data : {  //서비스 처리에 필요한 인자값
			comSearchValC : prcsNmVal,
			comSearchValD : unitCoNmVal,
		},
		success : function(res) {
			const list = res['resultList'];
			
			var popData = "";
			
			if(list.length !== 0){	
				for (var i = 0; i < list.length; i++) {
					popData += '<tr id="hisList">';
					popData += '<td class="rnum">' + list[i].rnum + '</td>';
					popData += '<td class="unitCoNm">' + list[i].unitCoNm + '</td>';
					popData += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
					popData += '<td class="wrkDtl">' + list[i].wrkDtl + '</td>';
					popData += '<td class="prcsRgstDd">' + list[i].prcsRgstDd + '</td>';
					popData += '<td class="prcsModiDd">' + list[i].prcsModiDd + '</td>';				
					popData += '</tr>';
				}
			} else {
				popData += "<tr>";
				popData += "<td colspan='4'>등록된 게시글이 없습니다.</td>";
				popData += "</tr>";	
			}
			
			$("#pop_dataSection").html(popData); 
			
		}
	})
}	

</script>
<!-- ### script ###-->

</html>