<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li> 
			<button class="locationbtn_h_no">사업장관리</button>
		</li>
		<li> 
			<button class="locationbtn_h_no">기본정보관리</button>
		</li>
		<li class="location_li">
			<button onclick="$(this).toggleClass('active').next().slideToggle();">사업자정보</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW10000/KW10000U1100.do">사업자정보</a></li>
				<li><a href="/page/KW10000/KW10000U2100.do">사업장정보</a></li>
				<li><a href="/page/KW10000/KW10000U3100.do">협력사정보</a></li>
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
		            <h2 class="con_sectionTit"><span class="subtit">기본정보관리</span></h2> 
		        </div>
				
				<!-- ▼ 정보입력 영역 -->
				<div class="tab_wrap mt20">
					<ul class="tab_base N2">
						<li class="On"><a href="/page/KW10000/KW10000U1100.do"><span>사업자정보</span></a></li>
						<li><a href="/page/KW10000/KW10000U1200.do"><span>사업장정보</span></a></li>
						<li><a href="/page/KW10000/KW10000U1300.do"><span>협력사정보</span></a></li>
					</ul>
				</div>
				<div class="mt20">
					<table class="board-list board-list_left" summary="회원가입을 위한 사업자정보 로그인정보 회원정보 입력">
						<caption>기본정보관리</caption>
						<colgroup>
							<col width="80px">
							<col width="150px">
							<col width="auto">
						</colgroup>
						<tbody>
							<c:choose>
								<c:when test="${empty sessionScope.authUser}">
									<tr>
										<th colspan="2" class="tit"><label for="entsrNo">사업자명</label></th>
										<td><input type="text" name="entsrNo" id="entsrNo"
											value="" class="w600"></td>
									</tr>
									<tr>
										<th rowspan="3" class="tit"><label for="entsrNo"
											class="textCt">사업자<br>주소
										</label></th>
										<th class="tit"><label for="entsrNo">우편번호</label></th>
										<td><input type="text" name="entsrNo" id="entsrNo"
											value="" class="w300">
										</td>
									</tr>
									<tr>
										<th class="tit"><label for="entsrNo">도로명 주소</label></th>
										<td><input type="text" name="entsrNo" id="entsrNo"
											value="" class="w600"></td>
									</tr>
									<tr>
										<th class="tit"><label for="entsrNo">도로명 상세주소</label></th>
										<td><input type="text" name="entsrNo" id="entsrNo"
											value="" class="w600"></td>
									</tr>
									<tr>
										<th colspan="2" class="tit"><label for="entsrNo">사업자등록번호</label></th>
										<td><input type="text" name="entsrNo" id="entsrNo"
											value="" class="w600"></td>
									</tr>
									<tr>
										<th colspan="2" class="tit"><label for="entsrNo">대표자명</label></th>
										<td><input type="text" name="entsrNo" id="entsrNo"
											value="" class="w600"></td>
									</tr>
									<tr>
										<th colspan="2" class="tit"><label for="entsrNo">업종/업태/종목</label></th>
										<td><input type="text" name="entsrNo" id="entsrNo"
											value="" class="w600"></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="resultList1" items="${resultList1}">
										<tr>
											<th colspan="2" class="tit">
												<label for="entsrNo">사업자명</label>
											</th>
											<td>
												<input type="text" name="bzCoNm" id="entsrNo" value="${resultList1.bzCoNm}" class="w600">
											</td>
										</tr>
										<tr>
											<th rowspan="3" class="tit"><label for="entsrNo" class="textCt">사업자<br>주소
											</label></th>
											<th class="tit"><label for="entsrNo">우편번호</label></th>
											<td><input type="text" name="zipCd" id="entsrNo"
												value="${resultList1.zipCd}" class="w300"> 
											</td>
										</tr>
										<tr>
											<th class="tit"><label for="entsrNo">도로명 주소</label></th>
											<td><input type="text" name="entsrNo" id="entsrNo"
												value="${resultList1.strtNmAdd}" class="w600"></td>
										</tr>
										<tr>
											<th class="tit"><label for="entsrNo">도로명 상세주소</label></th>
											<td><input type="text" name="entsrNo" id="entsrNo"
												value="${resultList1.strtNmDtlAdd}" class="w600"></td>
										</tr>
										<tr>
											<th colspan="2" class="tit"><label for="entsrNo">사업자등록번호</label></th>
											<td><input type="text" name="entsrNo" id="entsrNo"
												value="${resultList1.bzRgstNo}" class="w600"></td>
										</tr>
										<tr>
											<th colspan="2" class="tit"><label for="entsrNo">대표자명</label></th>
											<td><input type="text" name="entsrNo" id="entsrNo"
												value="${resultList1.headNm}" class="w600"></td>
										</tr>
										<tr>
											<th colspan="2" class="tit"><label for="entsrNo">업종/업태/종목</label></th>
											<td><input type="text" name="entsrNo" id="entsrNo"
												value="${resultList1.bzItem}" class="w600"></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
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
<!-- ### HTML ###-->

<!-- ### script ###-->
<script>

</script>
<!-- ### script ###-->