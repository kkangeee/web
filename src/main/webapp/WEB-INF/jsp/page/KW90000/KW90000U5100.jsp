<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
<style>
/* @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');

body{
  font-family:poppins;
  font-size:20px;
}
.outer{
  position:absolute;
  top:30%;
  left:40%;
}
ul{
  list-style:none;
}
#ul{
  margin:0;
  padding:0;
} */
.caret{
  cursor:pointer;
  user-select:none;
}
.caret::before {
  content: "\25B6";
  color: black;
  display: inline-block;
  margin-right: 5px;
} 
.caret-down::before {
  transform: rotate(90deg);  
}
.nested{
  display:none;
}
.active{
  display: block;
} 

</style>
<div id="container">
	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>시스템관리</h1>
		</div>
	</div>
	<div class="inner">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">
				<!-- ▼ 타이틀 영역 -->
				<div class="con_section ">
					<h2 class="con_sectionTit"><span class="subtit">권한별 메뉴관리</span>
					</h2>
				</div>
				<!-- ▼ 정보입력 영역 -->
				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
							<!-- ▼ 전체검색 영역 -->
							<span class="board-search">
								<form name="form" id="form" action="?" onsubmit="return page.search(this)">
									<input type="hidden" name="pageNum" value="1"> 
									 <select class="w150" id="searchOption">
							            <option value="">권한</option>
							            <option value="ADMIN">협회관리자</option>
							            <option value="COM000">고객관리자</option>
							            <option value="COM030">고객일반회원</option>
							          </select>	 
								</form>
							</span> 
							<!-- ▼ 버튼 영역 -->
							<div class="btn_top">
								<a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn"><span>저장</span></a> 
							</div>
						</div>
						
						
						
						
						<!-- 강은혜 ajax호출전 -->
						 <div class="outer">
						  <c:forEach var="resultList" items="${resultList}"> <!--c:forEach 1번 -->
						  <ul id="ul"> <!--ul 1번 -->
							<c:if test="${resultList.MENU_LVL == '1'}"> <!--c:if 1번 -->
							  	<li style="font-size: 30px"><span class="caret">${resultList.MENU_NM}</span>  <!--li 1번 -->
							  	<c:set var="menuId" value="${resultList.MENU_ID}"></c:set>
							  	<input type="checkbox" class="category-1" name="category_id" value="MA1503B010201">
											  	<ul class="nested">
											  	<c:forEach var="resultList1" items="${resultList1}">
											  		<c:if test="${resultList1.HG_RK_MENU_ID == menuId}">
														<li style="font-size: 20px"><span class="caret">${resultList1.MENU_NM}</span>
														<c:set var="menuId2" value="${resultList1.MENU_ID}"></c:set>
														<input type="checkbox" class="category-1-1" name="category_id1" value="1-1">
																<ul class="nested">
															  	<c:forEach var="resultList2" items="${resultList2}">
															  		<c:if test="${resultList2.HG_RK_MENU_ID == menuId2}">
																		<li style="font-size: 10px"><span class="caret">${resultList2.MENU_NM}</span>
																			<input type="checkbox" class="category-1-1-1" name="category_id2" value="1-1-1">
																		</li> 
																	</c:if> 
																</c:forEach>								
														      	</ul>
														  </li>
													</c:if> 
												</c:forEach>								
										      	</ul>
							    </li> <!--li 1번 끝 -->
						    </c:if> <!--c:if 1번 끝 -->
						  </ul> <!--ul 1번 끝 -->
						  </c:forEach> <!--c:forEach 1번 끝 -->
						</div>   
						
						
						
						
						
<!-- 강은혜 추가 		 -->				
<!-- <div class="outer">
  <ul id="ul">
    <li><span class="caret">1번</span>
      <ul class="nested">
        <li>2번</li>
        <li>2번</li>
        <li><span class="caret">Item 3</span>
          <ul class="nested">
            <li>Item 3.1</li>
            <li>Item 3.2</li>
            <li><span class="caret">Item 3.3</span>
              <ul class="nested">
                <li>Item 3.3.1</li>
                <li>Item 3.3.2</li>
                <li>Item 3.3.3</li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </li>
  </ul>
</div> -->

<!--  

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <title>Tree</title>
 </head>
 <body>
  <ul>
  	<li>
		<span> 카테고리 1
			<input type="checkbox" class="category-1" name="category_id" value="MA1503B010201">
		</span>
		<ul>
			<li>
				<span> 카테고리 1-1
					<input type="checkbox" class="category-1-1" name="category_id" value="1-1">
				</span>
				<ul>
		            <li>
		                <span> 카테고리 1-1-1
		                    <input type="checkbox" class="category-1-1-1" name="category_id" value="1-1-1">
		                </span>
		            </li>
		            <li>
		                <span> 카테고리 1-1-2
		                    <input type="checkbox" class="category-1-1-2" name="category_id" value="1-1-2">
		                </span>
		            </li>
		            <li>
		                <span> 카테고리 1-1-3
		                    <input type="checkbox" class="category-1-1-3" name="category_id" value="1-1-3">
		                </span>
		            </li>
				</ul>
			</li>
			<li>
				<span> 카테고리 1-2
					<input type="checkbox" class="category-1-2" name="category_id" value="1-2">
				</span>
			</li>
			<li>
				<span> 카테고리 1-3
					<input type="checkbox" class="category-1-3" name="category_id" value="1-3">
				</span>
			</li>
			<li>
				<span> 카테고리 1-4
					<input type="checkbox" class="category-1-4" name="category_id" value="1-4">
				</span>
			</li>
		</ul>
	</li>
  </ul>
 </body>
</html>
-->
						
					</section>
				</div>
			</div>
			
		</section>
	</div>
	
</div>

<script>
$('.category-1').change(function () {
	this.childrenElement.querySelector(".category-1-1").prop('disabled', !this.checked).trigger('change');
})


var toggler = document.getElementsByClassName("caret");
var i;
for (i = 0; i < toggler.length; i++) {
  toggler[i].addEventListener("click", function() {
    this.parentElement.querySelector(".nested").classList.toggle("active");
    this.classList.toggle("caret-down");
  });
}

	
</script>