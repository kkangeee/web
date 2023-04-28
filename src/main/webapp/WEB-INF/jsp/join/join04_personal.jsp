<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>


<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
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
		<form id="boardForm" method="POST">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">
				<!-- ▼ 가입순서 영역 -->
				<ol class="join_step ">
					<li><p><span>01</span>회원유형선택</p></li>
					<li><p><span>02</span>약관동의</p></li>
					<li class="On"><p><span>03</span>정보입력</p></li>
					<li><p><span>04</span>가입완료</p></li>
				</ol>
				<!-- ▼ 안내 영역 -->
				<div class="con_section ">
					<h2 class="con_sectionTit">기업 개인회원 정보입력</h2>
					<div class="list_con">
						<ul class="icon_type1">
							<li>회원정보는 개인정보취급방침에 따라 안전하게 보호되며 회원님의 동의 없이 공개 또는 제3자에게 제공되지 않습니다.</li>
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
									<td><input type="text" name="bzRgstNo" id="bzRgstNo" placeholder="사업자등록번호 10자리" value="" class="w300"> <a href="javascript:fn_viewDuplMem();" class="btn_full btn_Gray_e4e w100" rel="layerPop_idCheck">검색</a>
										<p class="guide3">※신규등록시 "-"없이 입력해주시기 바랍니다.</p></td>
								</tr>
								<tr>
									<th><label for="id"><span class="must"><b>필수입력</b></span>사업자명</label></th>
									<td><input type="text" name="bzCoNm" id="bzCoNm"
										class="w300" value=""> <!--disabled="disabled"--></td>
								</tr>
								<tr>
									<th rowspan="3" class="tit"><label for="login"
										class="textCt">로그인<br>정보
									</label></th>
									<th>
										<label for="email" id="user_id" ><span class="must"><b>필수입력</b></span>아이디(E-mai)</label>
									</th>
									<td>
										<input type="email" name="mbrId" id="mbrId" class="w300" autocomplete="new-password"> 
										<a href="javascript:fn_viewDuplMem();" class="btn_full btn_Gray_e4e w140" rel="layerPop_idCheck">중복확인</a>
									</td>
								</tr>
								<tr>
									<th><label for="pw"><span class="must"><b>필수입력</b></span>비밀번호</label></th>
									<td>
										<input type="password" name="pswd" id="pswd" class="w300" autocomplete="new-password">
										<p class="guide3">
											※<span class="tc_point">숫자, 영문소문자, 특수문자(!@#%?&@*)세가지
												조합</span>으로 8자 이상입력(대문자 제외, 특수문자 한개 이상 사용)
										</p>
									</td>
								</tr>
								<tr>
									<th><label for="pw_confirm"><span class="must"><b>필수입력</b></span>비밀번호확인</label></th>
									<td><input type="password" name="pswd2" id="pswd2" class="w300"></td>
								</tr>
								<tr>
									<th rowspan="4" class="tit"><label for="name" class="textCt">회원<br>정보</label></th>
									<th><label for="myslfConfAns"><span class="must"><b>필수입력</b></span>성명</label></th>
									<td><input type="text" name="mbrNm" id="mbrNm" class="w300" value=""></td>
								</tr>
								<tr>
									<th><label for="date"><span class="must"><b>필수입력</b></span>생년월일</label></th>
									<td><input type="date" name="bdt" id="bdt" class="w300"></td>
								</tr>
								<tr>
									<th><span class="must"><b>필수입력</b></span>휴대전화번호</th>
									<td>
										<input type="hidden" name="fonNo" id="phoneNo" value="">
										<label for="mphonNo1" class="blind">휴대전화 앞번호 선택</label> 
										<select id="mphonNo1" class="w104" style="width: 92px; height: 40px;">
												<option value="">선택</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select> 
										<input type="text" id="mphonNo2" class="w95" value="">
										<label for="mphonNo2" class="blind">중간번호</label>
										<input type="text" id="mphonNo3" class="w95" value=""><label for="mphonNo3" class="blind">마직막번호</label>
									</td>
								</tr>
								<tr>
									<th><label for="gender"><span class="must"><b>필수입력</b></span></label>성별</th>
									<td>
										<span id="join_gndrTp" class="checkbox-group"> 
											<label> 
												<span class="input-checkbox"> <input type="radio" name="gndrTp" value="남"> <i></i> </span> 남
											</label> 
											<label> 
												<span class="input-checkbox"> <input type="radio" name="gndrTp" value="여"> <i></i> </span> 여
											</label>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
				
				</div>

				<!-- ▼ 버튼 영역 -->
				<div class="textCt pt60 pb100">
					<a href="javascript:location.href='/join/join02.do'" class="btn_round btn_Gray_ddd w180"><span>취소</span></a> 
					<button class="btn_round btn_Blue w180" type="button" onclick="agreeBtn()">등록</button>
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
	
<script>
	function fn_viewDuplMem(){
		
		if($("#mbrId").val() === '') {
			$("#mbrId").focus();
			alert("ID를 입력해 주세요."); 
			return;
		}  
		
		$.ajax({
			//요청할때
			url : "${pageContext.request.contextPath}/join/idCheck",    
			type : "get",
			data : {id : $("#mbrId").val()},
			success : function(res) {//json --> js로 변환되서 result에 담김
					if(res == true){
						alert("사용 가능한 ID입니다.");
					}else{
						alert("이미 사용중인 ID입니다.");
					}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	function agreeBtn() {
		
		if($("#bzRgstNo").val() === '') {
			$("#bzRgstNo").focus();
			alert("사업자등록 번호를 입력해 주세요."); 
			return;
		}  
		
		if($("#bzCoNm").val() === '') {
			$("#bzCoNm").focus();
			alert("사업자명을 입력해 주세요."); 
			return;
		} 
		
		if($("#mbrId").val() === '') {
			$("#mbrId").focus();
			alert("ID를 입력해 주세요."); 
			return;
		}  
		
		if($("#pswd").val() === '') {
			$("#pswd").focus();
			alert("비밀번호를 입력해 주세요."); 
			return;
		} 
		
		if($("#pswd2").val() === '') {
			$("#pswd2").focus();
			alert("비밀번호를 확인해 주세요."); 
			return;
		} 
		
		 var pw = $("#pswd").val();
		 var num = pw.search(/[0-9]/g);
		 var eng = pw.search(/[a-z]/ig);
		 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		 
	 	 if(pw.length < 8 || pw.length > 20){
		 	alert("8자리 ~ 20자리 이내로 입력해주세요."); return;
		 }else if(pw.search(/\s/) != -1){
		 	alert("비밀번호는 공백 없이 입력해주세요."); return;
		 }else if(num < 0 || eng < 0 || spe < 0 ){ 
			 alert("영문,숫자, 특수문자를 혼합하여 입력해주세요."); return;
		 }
		 
		if($("#pswd").val() != $("#scrtNoConfirm").val()){
			alert("비밀번호 확인을 다시 해주세요.");
			return;
		};
		
		if($("#mbrNm").val() === '') {
			$("#mbrNm").focus();
			alert("성명을 확인해 주세요."); 
			return;
		} 
		
		if($("#bdt").val() === '') {
			$("#bdt").focus();
			alert("생년월일을 확인해 주세요."); 
			return;
		} 
		
		if($("#mphonNo1").val() === '' || $("#mphonNo2").val() === '' || $("#mphonNo3").val() === '' ) {
			$("#mphonNo2").focus();
			alert("연락처를 확인해 주세요."); 
			return;
		} 
		
		if($('input[name=gndrTp]:checked').val() === undefined) {
			alert("성별을 선택해 주세요."); 
			return;
		} 
		
		$("#phoneNo").val($("#mphonNo1").val()+$("#mphonNo2").val()+$("#mphonNo3").val());
		
		action=""
		var form = document.getElementById("boardForm");
		var url = "<c:url value='${pageContext.request.contextPath}/join/personal'/>"
		form.action = url;
		form.submit();
		
	}
</script>
