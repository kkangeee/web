<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">유해인자관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW20000/KW20000U1100.do">유해인자관리</a></li>
			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">화학제품관리</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW20000/KW20000U1100.do">화학제품관리</a></li>
				<li><a href="/page/KW20000/KW20000U2100.do">유해인자정보관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">MSDS
				조회 및 등록</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW20000/KW20000U1100.do">MSDS 조회 및 등록</a></li>
				<li><a href="/page/KW20000/KW20000U1200.do">화학제품 현황</a></li>
				<li><a href="/page/KW20000/KW20000U1300.do">화학물질 입출고 현황</a></li>
				<li><a href="https://msds.kosha.or.kr/MSDSInfo/kcic/msds/msds.do?page=ghs02">경고표지 작성</a></li>
				<li><a href="/page/KW20000/KW20000U1500.do">경고표지 관리</a></li>
			</ul>
		</li>
	</ul>
</div>
-->


<!-- #container -->
<div id="container">

	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>유해인자관리</h1>
		</div>
	</div>

	<div class="inner">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">


				<!-- ▼ 타이틀 영역 -->
				<div class="con_section ">
					<h2 class="con_sectionTit">
						화학제품관리 > <span class="subtit">MSDS 조회 및 등록</span>
					</h2>
				</div>

				<!-- ▼ 정보입력 영역 -->
				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">

							<!-- ▼ 버튼 영역 -->
							<div class="btn_top">
								<!-- <a href="javascript:location.href='join01.php';" class="btn_round btn_plus btn_Tw"><span>새로운 물질 등록</span></a> -->
								<a href="https://msds.kosha.or.kr/MSDSInfo/kcic/msds/msds.do?page=msds04" target="_blank" class="btn_round btn_plus_bl"><span>새로운 물질 등록</span></a> 
<!-- 								<a href="javascript:location.href='join01.php';" class="btn_round btn_del"><span>내 사업장 화학제품 보기</span></a> -->
								<!-- 
            <a href="javascript:location.href='join05.php';" class="btn_round btn_modi btn_Tw"><span>수정</span></a> -->
<!-- 								<a href="javascript:location.href='join05.php';" class="btn_round btn_save"><span>내 사업장에 저장</span></a> -->
							</div>
						</div>

						<!-- 테이블01 -->
						<!-- 항목선택 -->
						<div class="table-double">
							<ul>
								<li class="p30">
									<!-- 테이블01 -->
									<span class="board_Ttxt">화학제품 명</span>
									<div>
										<table class="board-list">
											<thead>
												<tr>
													<th>NO</th>
													<th>제품명</th>
													<th></th>
												</tr>
											</thead>					
											                                                                                                                  												
										</table>
									</div>
									<div class="TBover2 mb50" style="height: 236px;">
											<table class="board-list2">
											<tbody>
												<tr>
													<td>01</td>
													<td></td>
													<td><button type="submit" id="search" class="btn_His2">삭제</button></td>
												</tr>
												<tr>
													<td>01</td>
													<td></td>
													<td><button type="submit" id="search" class="btn_His2">삭제</button></td>
												</tr>
												<tr>
													<td>01</td>
													<td></td>
													<td><button type="submit" id="search" class="btn_His2">삭제</button></td>
												</tr>
												<tr>
													<td>01</td>
													<td></td>
													<td><button type="submit" id="search" class="btn_His2">삭제</button></td>
												</tr>
												<tr>
													<td>01</td>
													<td></td>
													<td><button type="submit" id="search" class="btn_His2">삭제</button></td>
												</tr>
											</tbody>							
										</table>
									</div>
									<div>
										<table class="board-list">
											<thead>
												<tr>
													<th>개정일</th>
													<th>작성자</th>
													<th></th>
												</tr>
											</thead>					
										</table>
									</div>
									<div class="TBover2 mb50" style="height: 236px;">
											<table class="board-list2">
											<tbody>
												<tr>
													<td>2022-12-06</td>
													<td></td>
													<td><button type="submit" id="search" class="btn_His2">삭제</button></td>
												</tr>
												<tr>
													<td>2022-12-06</td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>2022-12-06</td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>2022-12-06</td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>2022-12-06</td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>2022-12-06</td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>2022-12-06</td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>2022-12-06</td>
													<td></td>
													<td></td>
												</tr>
											</tbody>							
										</table>
									</div>
								</li>
								<li class="p68">
									<!-- 테이블01 -->
									<div class="TBover mb50" style="height: 315px;">
										<span class="board_Ttxt">제품정보</span>
										<table class="board-list board-list_left">
											<colgroup>
												<col style="width: 100px;">
												<col style="width: 114px;">
												<col style="width: 94px;">
												<col style="width: 131px;">
												<col style="width: 95px;">
												<col style="width: auto;">
											</colgroup>
											<thead>
												<tr>
													<th>NO</th>
													<th><input type="text" class="input_bd_tit" name=""
														value="" placeholder=""></th>
													<th>제품명</th>
													<th><input type="text" class="input_bd_tit" name=""
														value="" placeholder=""></th>
													<th>개정일</th>
													<th><select class="select_bd_tit" name="searchType">
															<option value="">2022-01-20</option>
													</select></th>
												</tr>
												<tr>
													<th>회사정보</th>
													<th colspan="3"><input type="text"
														class="input_bd_tit w300" name="" value="" placeholder=""></th>
													<th>작성인</th>
													<th><input type="text" class="input_bd_tit w109"
														name="" value="" placeholder=""></th>
												</tr>
												<tr>
													<th>제품정보</th>
													<th colspan="3"><input type="text"
														class="input_bd_tit w300" name="" value="" placeholder=""></th>
													<th>파일저장</th>
													<th><input type="text" class="input_bd_tit w109"
														name="" value="" placeholder="">* MSDS 원본파일 업로드</th>
												</tr>
												<tr>
													<th>권고용도</th>
													<th colspan="3"><input type="text"
														class="input_bd_tit w300" name="" value="" placeholder=""></th>
													<th colspan="2"><button type="submit" id="search"
															class="btn_His2">제품정보 저장</button></th>
												</tr>
											</thead>
											<tbody>
												<!-- <tr> 
                                        <td>01</td>
                                        <td></td>
                                        <td><button type="submit" id="search" class="btn_His2">삭제</button></td>
                                      </tr> -->
											</tbody>
										</table>
									</div>
									<div>
									</div>
									<div class="TBover">
										<table class="board-list">
											<colgroup>
												<!-- <col style="width: 30px">
                                  <col style="width: 60px">
                                  <col style="width: auto"> -->
											</colgroup>
											<thead>
												<tr>
													<th>물질명</th>
													<th>CASNO</th>
													<th>최소</th>
													<th>최대</th>
													<th>비고</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
										</table>
									</div> <!-- //테이블01 -->
								</li>
							</ul>
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
		<a class="btn-top" href="#wrap"
			onclick="$(window).scrollTop(0); return false;">위로</a>
	</div>
</div>

<script>



</script>
