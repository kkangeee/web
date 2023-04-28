<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li><a href="/">홈 c01 c0103 c010301 </a></li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">회원가입</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/join/join01.do">회원가입</a></li>
			</ul>
		</li>
	</ul>
</div>
-->

<!-- #container -->
<div id="container">

	<div class="headline sub_headline sub_headline00">
		<div class="inner">
			<h1>회원가입</h1>
		</div>
	</div>

	<div class="inner">
		<form action="${pageContext.request.contextPath}/join/company">
			<!-- 하단여백 섹션으로 구분 -->
			<section id="content">
				<div class="con_area">
					<!-- ▼ 가입순서 영역 -->
					<ol class="join_step ">
						<li><p>
								<span>01</span>회원유형선택
							</p></li>
						<li><p>
								<span>02</span>약관동의
							</p></li>
						<li class="On"><p>
								<span>03</span>정보입력
							</p></li>
						<li><p>
								<span>04</span>가입완료
							</p></li>
					</ol>

					<!-- ▼ 안내 영역 -->
					<div class="con_section ">
						<h2 class="con_sectionTit">기업 관리자 회원 정보입력</h2>
						<div class="list_con">
							<ul class="icon_type1">
								<li>회원정보는 개인정보취급방침에 따라 안전하게 보호되며 회원님의 동의 없이 공개 또는 제3자에게
									제공되지 않습니다.</li>
							</ul>
						</div>
					</div>

					<!-- ▼ 정보입력 영역 -->
					<div class="mt20">
						<table class="board-list board-list_left"
							summary="회원가입을 위한 사업자정보 로그인정보 회원정보 입력">
							<caption>회원가입을 위한 정보입력표</caption>
							<colgroup>
								<col width="80px">
								<col width="150px">
								<col width="auto">
							</colgroup>
							<tbody>
								<tr>
									<th rowspan="2" class="tit"><label for="entsrNo"
										class="textCt">사업자<br>정보
									</label></th>
									<th><label for="entsrNo"><span class="must"><b>필수입력</b></span>사업자등록번호</label></th>
									<td><input type="text" name="bzRgstNo" id="bzRgstNo" placeholder="사업자등록번호 10자리" value="" class="w300"> <a href="javascript:fn_viewDuplMem();"
										class="btn_full btn_Gray_e4e w100" rel="layerPop_idCheck">검색</a>
										<p class="guide3">※신규등록시 "-"없이 입력해주시기 바랍니다.</p></td>
								</tr>
								<tr>
									<th><label for="id"><span class="must"><b>필수입력</b></span>사업자명</label></th>
									<td>
										<input type="text" name="bzCoNm" id="bzCoNm" class="w300" value=""> <!--disabled="disabled"-->
									</td>
								</tr>
								</tr>

								<tr>
									<th colspan="2"><label for="admin"><span
											class="must"><b>필수입력</b></span>담당자정보 </label></th>
									<td><select name="admin" id="admin" class="w300">
											<option value="">선택</option>
											<option value="안전보건관리책임자">안전보건관리책임자</option>
											<option value="안전보건총괄책임자">안전보건총괄책임자</option>
											<option value="관리감독자">관리감독자</option>
											<option value="보건관리자">보건관리자</option>
											<option value="안전관리자">안전관리자</option>
									</select></td>
								</tr>

								<tr>
									<th rowspan="3" class="tit">
										<label for="login" class="textCt">로그인<br>정보</label>
									</th>
									<th>
										<label for="email"><span class="must"><b>필수입력</b></span>아이디(E-mai)</label>
									</th>
									<td>
										<input type="email" name="mbrId" id="mbrId" class="w300"> <a href="javascript:fn_viewDuplMem();" class="btn_full btn_Gray_e4e w140" rel="layerPop_idCheck">중복확인</a>
									</td>
								</tr>
								<tr>

									<th><label for="pw"><span class="must"><b>필수입력</b></span>비밀번호</label></th>
									<td><input type="password" name="pswd" id="pswd" class="w300">
										<p class="guide3">
											※<span class="tc_point">숫자, 영문소문자, 특수문자(!@#%?&@*)세가지
												조합</span>으로 8자 이상입력(대문자 제외, 특수문자 한개 이상 사용)
										</p></td>
								</tr>
								<tr>
									<th><label for="pw_confirm"><span class="must"><b>필수입력</b></span>비밀번호확인</label></th>
									<td><input type="password" name="pswd2" id="pswd2" class="w300"></td>
								</tr>
								<tr>
									<th rowspan="4" class="tit"><label for="name"
										class="textCt">회원<br>정보
									</label></th>
									<th><label for="myslfConfAns"><span class="must"><b>필수입력</b></span>성명</label></th>
									<td><input type="text" name="mbrNm" id="mbrNm"
										class="w300" value=""></td>
								</tr>
								<tr>
									<th><label for="date"><span class="must"><b>필수입력</b></span>생년월일</label></th>
									<td><input type="date" name="bdt" id="bdt" class="w300">
									</td>
								</tr>

								<tr>
									<th><span class="must"><b>필수입력</b></span>휴대전화번호</th>
									<td><input type="hidden" name="fonNo" id="fonNo"
										value="01012345678"> <label for="mphonNo1"
										class="blind">휴대전화 앞번호 선택</label> <select name="fonNo"
										id="mphonNo1" class="w104">
											<option value="">선택</option>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
									</select> <input type="text" name="fonNo" id="mphonNo2" class="w95"
										value=""><label for="mphonNo2" class="blind">중간번호</label>
										<input type="text" name="fonNo" id="mphonNo3" class="w95"
										value=""><label for="mphonNo3" class="blind">마직막번호</label>
									</td>
								</tr>
								<tr>
									<th><label for="gender"><span class="must"><b>필수입력</b></span></label>성별</th>
									<td><span class="checkbox-group"> <label> <span
												class="input-checkbox"> <input type="radio"
													name="gndrTp" value="1" checked="checked"> <i></i>
											</span> 남
										</label> <label> <span class="input-checkbox"> <input
													type="radio" name="gndrTp" value="2"> <i></i>
											</span> 여
										</label>
									</span></td>
								</tr>

							</tbody>
						</table>
					</div>

					<!-- ▼ 버튼 영역 -->
					<div class="textCt pt60 pb100">
						<a href="javascript:location.href='/join/join01.do';" class="btn_round btn_Gray_ddd w180"><span>취소</span></a>
						<button class="btn_round btn_Blue w180" type="submit">등록</button>
					</div>
				</div>
			</section>
		</form>
	</div>
	<!-- 컨텐츠 -->
	<!-- //#container -->

	<div class="util-bottom">
		<div class="inner">
			<a class="btn-top" href="#wrap"
				onclick="$(window).scrollTop(0); return false;">위로</a>
		</div>
	</div>