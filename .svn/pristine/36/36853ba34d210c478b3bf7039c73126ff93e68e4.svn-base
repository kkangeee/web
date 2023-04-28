*<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <div class="pop_title">안전보건관리 > 안전보건관리체제 > 건강관리실관리 > 자동제세동기관리 > 점검표</div>
   <!-- ### HTML ###-->
	  <!-- #container -->
   	 <div id="container">
        <div class="inner">
          <!-- 하단여백 섹션으로 구분 -->
            <div class="con_area">       
       			 <div class="mt20">
					  	<section id="content">
					    	<div class="button-group top">
					    	<form id="popForm">
					    	<!-- 점검일자 -->
							      <span class="board-search company-search pr10">
							                    <p>점검일자</p>
							                  <input type="date" name="nsptDd" id="nsptDd" class="w180" value="" readonly>&nbsp;&nbsp;
							                  <p>점검자</p>
							                 <input type="text" name="nsptPrsnNm" id="nsptPrsnNm" value="" placeholder="" class="w180 mr10" readonly>&nbsp;&nbsp;
							                  <p>점검위치</p>
							                 <input type="text" name="nsptPos" id="nsptPos" value="" placeholder="" class="w180 mr10" readonly>&nbsp;
							                 <input type="text" name="mgtNo" id="mgtNo" value="" placeholder="" class="w180 mr10" readonly>&nbsp;
							      </span>
							  </form>
						      <br><br>
					 <!-- ▼ 버튼 영역 -->
					           <div class="btn_top">            
						            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn"><span>저장</span></a>
								</div>						      
					    	</div>
						   <table class="board-list">
						      <colgroup>
						        <col style="width: 100px">
						        <col style="width: 500px">
						        <col style="width: 400px">
						      </colgroup>
						      <thead>
						        <tr>
						          <th>NO</th>
						          <th>점검사항</th>
						          <th>점검</th>
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
var nsptDd = nsptDd;
var nsptPrsnNm = nsptPrsnNm;
var nsptPos = nsptPos;
var bzRgstNo = bzRgstNo;
var mgtNo = mgtNo;
//console.log("Parentseq ::: " + Parentseq);
console.log("::::" + mgtNo);
console.log("::::" + nsptDd);
$("#nsptDd").val(nsptDd);
$("#nsptPrsnNm").val(nsptPrsnNm);
$("#nsptPos").val(nsptPos);
//$("#Parentseq").val(Parentseq);

var seqNum =[];
var listLength = 0;
var cdDtlList = "";
$(document).ready(function() {
	getPage();
})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U1173chkPopList", //서비스 주소 
				data : {  //서비스 처리에 필요한 인자값
					page : page,
					searchType : searchType,
					keyword : search
				},
				success : function(res) {
					const list = res['resultList'];
					const popchkList = res['popchkList'];      // 점검사항
					const pagination = res['pagination'];      // 그 외 
					var totalCnt = "";
					var data = "";
					var block = "";
					//페이지 번호 위치	
					if(list.length !== 0){					
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < popchkList.length; i++) {
						data += '<tr id="myForm">';
						//data += '<td><input type="checkbox" name="agree2" value="'+ list[i].seq+ '"></td>';
						data += '<td style="display:none" class="nsptItemNo">' + list[i].nsptItemNo + '</td>';
						data += '<td style="display:none" class="bzRgstNo">' + list[i].bzRgstNo + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="cdDtl1">' + popchkList[i].cdDtl1 + '</td>';
						cdDtlList += (cdDtlList == "" ? "" : "|" )  + popchkList[i].cdDtl1;
						if(list[i].nsptRsltYn == "Y"){
							data +='<td><label><span class="input-checkbox"><input type="radio" name="nsptRsltYn\''+list[i].nsptItemNo+'\'" value="Y" checked><i></i></span>예</label><label><span class="input-checkbox"><input type="radio" name="nsptRsltYn\''+list[i].nsptItemNo+'\'" value="N"><i></i></span>아니요</label></td>';
						}else if(list[i].nsptRsltYn == "N")  {
							data +='<td><label><span class="input-checkbox"><input type="radio" name="nsptRsltYn\''+list[i].nsptItemNo+'\'" value="Y"><i></i></span>예</label><label><span class="input-checkbox"><input type="radio" name="nsptRsltYn\''+list[i].nsptItemNo+'\'" value="N" checked><i></i></span>아니요</label></td>';
						}else{
							data +='<td><label><span class="input-checkbox"><input type="radio" name="nsptRsltYn\''+list[i].nsptItemNo+'\'" value="Y"><i></i></span>예</label><label><span class="input-checkbox"><input type="radio" name="nsptRsltYn\''+list[i].nsptItemNo+'\'" value="N"><i></i></span>아니요</label></td>';
						}  
						data += '</tr>';
					}
					} else {
						data += "<tr>";
						data += "<td colspan='3'>등록된 게시글이 없습니다.</td>";
						data += "</tr>";						
					} 
					listLength = popchkList.length;
					$("#totalCnt").html(totalCnt);						
					$("#dataSection").html(data);
					$("#paginationBox").html(block);
					// 물어보기
					$("tbody").html(data);
					$("#saveBtn").show();
				}
			})
}

// 사용자입장에서 저장
	//저장(추가, 수정시 나오는 버튼) 버튼 클릭시 ajax호출 추가추가
	  $("#saveBtn").on("click", function() {
		/*   var formValues = $("#popForm").serialize();
		  console.log("ddddddddd" + decodeURI(formValues)); */
			let valueYN= [];
	  $("#myForm input[type=radio]:checked").each(function() {
	        valueYN += $(this).val();
	   });

	  console.log("AAAAAAAAAAAAAAAAAAA" + cdDtlList);
	  
	  $("#research_form").submit();
	  if(valueYN.length != listLength){
		  alert("점검 후 체크해주세요");
		  return
	  }
	
		var param = {
			"data" : JSON.stringify(cdDtlList),
			"radioData" : JSON.stringify(valueYN),
			"nsptDd" :$("#nsptDd").val(),
			"nsptPrsnNm" : $("#nsptPrsnNm").val(),
			"nsptPos" : $("#nsptPos").val(),
			"mgtNo" : $("#nsptPos").val()
		};
	  
		if (confirm("저장하시겠습니까?")) {
			common.ajaxaa("/page/KW30000/KW30000U1173popSave.do", param);
			 getPage();
	     }
	}); 



	
</script>