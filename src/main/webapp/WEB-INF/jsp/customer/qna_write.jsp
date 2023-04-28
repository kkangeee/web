<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!-- ### HTML ###-->
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button
				onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">고객지원</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW50010/KW10000U1100.do">사업장관리</a></li>
				<li><a href="/page/KW50020/KW50020U010.do">유해인자관리</a></li>
				<li><a href="/page/KW50030/KW50030U010.do">보건관리</a></li>
				<li><a href="/page/KW50040//KW50040U010.do">내사업한눈에</a></li>
				<li><a href="/page/KW50050//KW50050U010.do">스케쥴관리</a></li>
				<li><a href="/page/KW50060//KW50060U010.do">정보마당</a></li>
				<li><a href="/customer/notice/notice.do">고객지원</a></li>
				<li><a href="#">마이페이지</a></li>

			</ul>
		</li>
		<li>

			<button
				onclick="$(this).toggleClass('active').next().slideToggle();">공지사항</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/customer/notice/notice.do">공지사항</a></li>
				<li><a href="/customer/faq/faq.do">자주하는문의</a></li>
				<li><a href="/customer/qna/qna.do">QnA</a></li>
			</ul>
		</li>
	</ul>
</div>
-->

	<!-- #container -->
	<div id="container">

		<div class="headline sub_headline sub_headline07">
			<div class="inner">
				<h1>고객지원</h1>
			</div>
		</div>
		
		<!-- .inner -->
		<div class="inner">
			<!-- #content section////////////////////////////// -->
			<section id="content">
				
				
				<!-- ▼ 타이틀 영역 -->	
				<form id="boardForm" method="POST">
				<!-- ▼ 타이틀 영역 -->
		        
				<!-- .indent -->
				<div class="indent">
				
				<div class="con_section ">
		            <h2 class="con_sectionTit" style="margin-bottom:10px;"><span class="subtit">Q&A</span></h2> 
		        </div>	
						<!-- <input type="hidden" name="boardId" value="2"> -->
						<!--<input type="hidden" name="boardFile"> <input type="hidden" name="boardFileName">-->
						<!-- .agreement-box -->
						<div class="agreement-box">
							<div class="title">
								<h2>개인정보 이용 동의에 대한 안내</h2>
								<label> <span class="input-checkbox"> <input id="ckBox" type="checkbox" name="agreement" value="Y"> <i></i>
								</span> 동의하기<em>(필수)</em>
								</label>
							</div>
							<div class="content">
								1. 개인정보의 수집 및 이용 목적(개인정보보호법 제15조)등 관계법령 등에서 정하는 소관 업무의 수행을 위하여
								다음과 같이 개인정보를 수집 및 이용합니다. 수집된 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며 수집
								목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다. 가. 제안/제보 시 포함된 개인정보는 제보 접수·처리 등
								소관 업무 수행을 위해 대한산업보건협회에서 이용합니다. 나. 제안/제보의 전자적 처리를 위해 내부적으로 타 시스템
								연계 및 이용 시 개인정보를 이용합니다. 다. 접수된 제안서는 대한산업보건협회의 내·외부 고객 서비스 향상 및
								정책평가를 위하여 관계 법령에 따라 분석·평가 및 처리결과의 사후관리를 시행합니다. <br>
								<br> 2. 수집하는 개인정보의 항목(개인정보 보호법 제15조, 제16조)가. 개인정보 항목 가. 수집
								필수 : 성명, 주소, 연락처, 휴대전화번호(진행상황 통지 등을 휴대전화로 받고 싶은 경우), 전자우편(진행상황이나
								처리결과 통지를 전자우편으로 받고 싶은 경우) 나. 부정한 방법으로 타인명의 사용 시, 주민등록법 제37조(벌칙)에
								의해 처벌 받을 수 있습니다. <br>
								<br> 3. 개인정보의 보유 및 이용기간(공공기록물 관리에 관한 법률 시행령 제26조) 대한산업보건협회
								사이버감사는 원칙적으로 개인정보 보존기간이 경과하거나, 처리목적이 달성된 경우에는 지체 없이 개인정보를 파기합니다.
								가. 회원정보 : 탈퇴 즉시 파기 나. 자동수집항목 중 IP주소 : 1년<br>
								<br> 4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 제안/제보시 (개인정보 보호법
								제16조) 수집하는 필요한 최소한의 정보 외의 개인정보 수집에 동의를 거부할 권리가 있으나 최소한의 개인정보
								수집동의 거부 시에는 익명제안/제보를 제외하고 서비스가 제한됩니다. <br>
								<br> 위 개인정보 필수항목 수집 및 이용안내에 동의합니다.
							</div>
						</div>
						<!-- //.agreement-box -->

						<table class="board-write">
							<colgroup>
								<col style="width: 240px">
								<col>
							</colgroup>
							<tbody id="tableB">
								<tr>
									<th>본인정보</th>
									<td><span class="checkbox-group"> 
										<label> 
											<span class="input-checkbox"><input id="nameSecretN" type="radio" name="nameSecretYn" value="Y" checked="checked"> 
											<i></i>
											</span> 실명
										</label> 
										<label> 
											<span class="input-checkbox"> <input id="nameSecretY" type="radio" name="nameSecretYn" value="N"> 
											<i></i>
											</span> 익명
										</label> 
										</span>
											<p class="guide1">익명으로 제보한 경우 조사가 진행되지 않거나 처리결과가 통보되지 않습니다.</p>
									</td>
								</tr>
								<tr>
									<th>구분</th>
									<td>
										<select style="width: 320px; height: 40px;" name="cate">
											<option value="건강검진">건강검진</option>
											<option value="보건위탁관리">보건위탁관리</option>
											<option value="환경위생">환경위생</option>
											<option value="교육">교육</option>
											<option value="기타">기타</option>
										</select>
									</td>
								</tr>
								<tr>
								<!--  
									<th>답변필요</th>
									<td>
										<span class="checkbox-group"> 
											<label> <span class="input-checkbox"> <input type="radio" name="answerYn" value="Y" checked="checked"> 
														<i></i>
												</span> Y
											</label> 
											<label> <span class="input-checkbox"> <input type="radio" name="answerYn" value="N"> 
													<i></i>
												</span> N
											</label>
										</span>
									</td>
									-->
								</tr>
									<!-- 이름 보이기 -->
								<tr id='user_Name'>		
									<th id='userN'>이름</th>
										<td ><input type="text" placeholder="이름을 입력해주세요." maxlength="15" style="width: 320px;" readonly="readonly" name="displayUser" value="${sessionScope.mbrId}">
									</td>							
								</tr>	
								<tr>
									<th>연락처</th>
									<td><input type="text" placeholder="'-' 빼고 입력해주세요." maxlength="20" style="width: 320px;" name="userPhone" value=""></td>

								<tr>
									<th>이메일</th>
									<td>
									<input style="width: 320px;" type="text" id="email_id" class="form_w200" value="" title="이메일 아이디" placeholder="이메일" maxlength="18" /> @ 
									<input type="text" id="email_domain" class="form_w200" value="" title="이메일 도메인" placeholder="이메일 도메인" maxlength="18"/>
									<input type="hidden" id="e_mail" name="email"/> 
									<select class="select" title="이메일 도메인 주소 선택" onchange="set_select_email(this.value)" style="height: 40px;">
									    <option value="이메일을 선택해 주세요.">-선택-</option>
									    <option value="naver.com">naver.com</option>
									    <option value="gmail.com">gmail.com</option>
									    <option value="hanmail.net">hanmail.net</option>
									    <option value="hotmail.com">hotmail.com</option>
									    <option value="korea.com">korea.com</option>
									    <option value="nate.com">nate.com</option>
									    <option value="yahoo.com">yahoo.com</option>
									    <option value="">직접입력</option>
									</select>
									</td>
								</tr>
								<tr>
									<th>제목</th>
									<td><input type="text" placeholder="제목을 입력해주세요."
										style="width: 100%" name="title" id="title"></td>
								</tr>
								<tr>
									<th style="padding-left: 90px;">문의 내용</th>
									<td><textarea placeholder="내용을 입력해주세요." style="height: 500px; white-space:pre;" id="text_content" name="content"></textarea></td>
								</tr>
								<tr id="trB">
									<th>공개여부</th>
									<td>
										<span class="checkbox-group"> 
											<label> <span class="input-checkbox"> <input type="radio" name="secretYn" value="Y" checked="checked"> 
														<i></i>
												</span> 공개
											</label> 
											<label> <span class="input-checkbox"> <input type="radio" name="secretYn" value="N"> 
													<i></i>
												</span> 비공개
											</label>
										</span>
									</td>
								</tr>
								<tr id="trB">
									<th>비밀번호</th>
									<td>
										<input type="text" placeholder="비밀번호를 입력해주세요." style="width: 100%" name="secretPw" id="secretPw">
									</td>
								</tr>
							</tbody>
						</table>

					
					<div class="button-group bottom">
						<button type="button" class="primary" onclick="btnSave()" id="save">확인</button>
						<button type="button" class="secondary" onclick="location.href='/customer/qna/qna.do'">취소</button>
					</div>
				</div>
				<!-- //.indent -->
				</form>
			</section>
			<!-- //////////////////////////////#content section -->
		</div>
		<!-- //.inner -->
	</div>
	<!-- 컨텐츠 -->

	<!-- //#container -->

	<div class="util-bottom">
		<div class="inner">
			<a class="btn-top" href="#wrap"
				onclick="$(window).scrollTop(0); return false;">위로</a>
		</div>
	</div>
<!-- ### HTML ###-->
<script>

/*익명 실명 체크*/
$('input[type=radio][name=nameSecretYn]').change(function() {
    if (this.value == 'Y') {
        $("#user_Name").attr('style', "display:none;");
    } else if (this.value == 'N') {
       $("#user_Name").attr('style', "display:block;");
       $("#userN").attr('style', "padding-right: 168px;");      
    }
});

//글쓰기 버튼
function btnSave(){
	let email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	if($('#ckBox').is(':checked') === false) {
		$('#ckBox').focus(); 
		alert("개인정보 이용 동의해주세요.");
		return;
	}
	if($("input[name=userPhone]").val() === ''){
		$("input[name=userPhone]").focus(); 
		alert("연락처를 확인해 주세요."); 
		return;
	} 
	if($("#email_id").val() === ''){
		$("#email_id").focus();
		alert("이메일을 확인해 주세요.");  
		return;
	} 
	if($("#email_domain").val() === '') {
		$("#email_domain").focus();
		alert("이메일 도메인을 확인해 주세요."); 
		return;
	}
	
	$("#e_mail").val($("#email_id").val() +"@"+ $("#email_domain").val());
	
	
	let mail = $("#e_mail").val();
	if(mail.match(email_rule) != null){
	} else {
		alert("형식을 바로 입력해주세요.");
		 return false;
	}
	
	
	if($("#title").val() === '') {
		$("#title").focus();
		alert("제목을 입력해주세요."); 
		return;
	}
	if($("#text_content").val() === '') {
		alert($("#text_content").val());
		$("#text_content").focus();
		alert("내용을 입력해주세요."); 
		return;
	}
	if($("input[name=secretPw]").val() === '') {
		$("input[name=secretPw]").focus();
		alert("비밀번호를 입력해 주세요."); 
		return;
	}
	
	action=""
	var form = document.getElementById("boardForm");
	var url = "<c:url value='/customer/qna/write'/>"
	form.action = url;
	form.submit();
}

//이메일 값 넣기
function set_select_email(obj){
	$("#email_domain").val(obj);
}

		 
</script>
