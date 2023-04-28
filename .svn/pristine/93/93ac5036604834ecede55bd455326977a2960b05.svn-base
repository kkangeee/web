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

<body style="overflow: hidden;">
<!-- ### HTML ###-->
    <section >
    	<div class="pop_title">사업자 정보 검색</div>
    <div class="pop_body">
      <!-- ▼ 사업자명 사업자등록번호 검색 영역 -->
      <span class="pop_sc">
       <!-- <form name="form" id="form" action="?" onsubmit="return page.search(this)"> -->
           <span class="">
              <label>
                <span class="input-checkbox">
                 <input type="radio" id="searchType" class="stp1" name="searchType" value="1" checked="checked">
                  <i></i>
                </span>
         		      사업자명
              </label>
              <label>
                <span class="input-checkbox">
                  <input type="radio" id="searchType" class="stp2" name="searchType" value="2">
                  <i></i>
                </span>
               	 사업자등록번호
              </label>
            </span>

          <input type="text" id="pupSearchKeyword" name="searchKeyword" value="" OnClick="enterkey()" placeholder="" style="width: 160px !important; height: 35px;">
          <a id="btnSearch" class="btn_round btn_modi btn_Tw" style='cursor: pointer;'><span>검색</span></a>
      <!--  </form> -->
      </span>   
    
     
    <!-- 테이블01 -->   
    <div class="TBover" style="height: 500px;">
	    <table class="board-list" style="border-top: none;">
	      <colgroup>
	       <col style="width: 300px">
	        <col style="width: auto">
	        <col style="width: 200px">
	      </colgroup>
	      <thead>
	        <tr>
	          <th>사업자등록번호</th>
	          <th>사업자명</th>
	          <th>대표자이름</th>
	        </tr>
	      </thead>
	      
	      <tbody id="pop_dataSection">
	      </tbody>
	      
	    </table>
	   </div> 
	  </div>
    <!-- //테이블01 -->
  </section>
</body>
<!-- ### HTML ###-->
<!-- ### script ###-->
<script>

	//부모페이지 인자값 받아오기
	var parent_searchKeyword = opener.$("#searchKeyword").val(); //부모값
    $("#pupSearchKeyword").val(parent_searchKeyword);            //자식창
    
    var searchType = opener.$('input[name=searchType]:checked').val();
    
    var parent_searchType = searchType;    
    if(parent_searchType === '1'){
    	$('.stp1').prop('checked', true);
    }else if(parent_searchType === '2'){
    	$('.stp2').prop('checked', true);
    }
           
    //페이지 로딩시 리스트 호출
   	$(document).ready(function() {
   		getPage();
   		
        $("#pupSearchKeyword").keydown(function(key) {
	          if (key.keyCode == 13) {
	       	   $("#btnSearch").click();
	          }
	      });
   	})
  	
   	//검색
   	$("#btnSearch").click(function() {
   		const searchType = $("#searchType");
   		const search = $("#pupSearchKeyword").val();
   		
   		$("#pupSearchKeyword").val(search);
   		
   		getPage();
   	});
    /*
   	//검색 Enter Key
	 $(document).ready(function() {
	
     });
   	*/
   	
   	//페이지 리스트 출력
   	function getPage(page) {
   		//검색 값
   		var searchType = $('input:radio[name="searchType"]:checked').val();
   		//var searchType = $("#searchType").val();
   		var search = $("#pupSearchKeyword").val();
   		
   		$.ajax({
   					url : "/common/pop/popList.do", //서비스 주소 
   					data : { //서비스 처리에 필요한 인자값
   						page : page,
   						searchType : searchType,
   						keyword : search,
   					},
   					success : function(res) {
   						const list = res['resultList'];
   						const pagination = res['pagination'];
   						var data = "";
   						var block = "";
   						console.log(list);
   						
   						if(Array.isArray(list) && list.length === 0){
	   							data += "<tr>";
	  							data += "<td></td>";
	  							data += "<td>입력하신 검색에 대한 결과가 없습니다.</td>";
	  							data += "<td></td>";
	  							data += "</tr>";
   						} else {
   							for (var i = 0; i < list.length; i++) {
	   							data += "<tr style='cursor: pointer;' onclick='PlcNmClick(this)' data-bzCoNm="+ list[i]['bzCoNm'] +" data-bzRgstNo="+ list[i]['bzRgstNo'] +">";
	   							data += "<td>" + list[i]['bzRgstNo'] + "</td>";
	   							data += "<td>" + list[i]['bzCoNm'] + "</td>";
	   							data += "<td>" + list[i]['headNm'] + "</td>";
	   							data += "</tr>";
	   							console.log(list.length);
	   						} 
   						}
   						
   						$("#pop_dataSection").html(data);
						
   					}
   				})
   	}

	//사업장명 버튼 클릭  
	function PlcNmClick(obj) {
		//부모창의 id가 id인 input 이라는 문자열 저장하기   
		let searchType = $('input:radio[name="searchType"]:checked').val();
		let bzRgstNo = obj.getAttribute("data-bzRgstNo");
		let bzCoNm = obj.getAttribute("data-bzCoNm");

			$.ajax({
				url : "${pageContext.request.contextPath}/common/pop/popList2.do",
				data : { //서비스 처리에 필요한 인자값
					bzRgstNo : bzRgstNo,
					bzCoNm : bzCoNm
				}
			});

		opener.location.reload();
		self.close();
	}
</script>
<!-- ### script ###-->


</html>