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
	        <div class="con_section ">
	            <h2 class="con_sectionTit" style="margin-bottom:10px;"><span class="subtit">Q&A</span></h2> 
	        </div>
			<!-- ▼ 타이틀 영역 -->	
			<form id="viewForm" method="POST" action="/customer/qna/update">
			<input type="hidden" value="${resultView1.contentId}" name="contentId">
			<!-- .board-view -->
			<div class="board-view">
				<div class="head">
					<span class="title">
						<h2><input type="text" name="title" value="${resultView1.title}" class="p100"></h2>
						<dl>
							<dt>본인정보</dt>
							<dd>
								<span> 
									<label class="mt0 mb0"> 
										<span class="input-checkbox"> 
											<input type="text" id="nameSecretYN" value="${resultView1.nameSecretYn}">
											<input type="radio" id="nameSecretY" name="nameSecretYn" value="Y"><i></i>
										</span> 실명 
									</label> 
									
									<label class="mt0 mb0"> 
										<span class="input-checkbox">
											<input type="radio" id="nameSecretN" name="nameSecretYn"  value="N"><i></i> 
										</span> 
									</label> 익명
								</span>
							</dd>
							<dt>구분</dt>
							<dd>
								<select class="h30 w110 qnapt0" name="cate">
										<option value="건강검진">건강검진</option>
										<option value="보건위탁관리">보건위탁관리</option>
										<option value="환경위생">환경위생</option>
										<option value="교육">교육</option>
										<option value="기타">기타</option>
								</select>
							</dd>
							<dt>성명</dt>
							<dd><input type="text" class="h30 w70 qnapt0" name="displayUser" value="${resultView1.displayUser}"></dd>
							<dt>작성일</dt>
							<dd>${resultView1.regDt}</dd>
							<dt>연락처</dt>
							<c:if test="${!empty resultView1.userPhone}">
							<dd><input type="text" class="h30 w120 qnapt0" name="userPhone" value="${resultView1.userPhone}"></dd>
							</c:if>
							<c:if test="${empty resultView1.userPhone}">
							<dd><input type="text" class="h30 w120 qnapt0" name="userPhone" value="비공개"></dd>
							</c:if>
							<dt>이메일</dt>
							<dd><input type="text" class="h30 w220 qnapt0" name="email" id="e_mail" value="${resultView1.email}"></dd>
							<dt>조회수</dt>
							<dd>${resultView1.cnt}</dd>
						</dl>
					</span>
				</div>

				<div class="body">
					<table class="board-write">
						<colgroup>
							<col style="width: 240px; height: 500px;">
						</colgroup>
						<tbody id="tableB">
							<tr>
								<th style="padding-left: 90px;">문의 내용</th>
								<td>
								 	<textarea style="white-space:pre; height:450px; width: 100%" id="contents" name="content">${resultView1.content}</textarea>	
								</td>
							</tr>	
							<tr id="trB">
								<th>공개여부</th>
								<td>
									<span class="checkbox-group"> 
									<input type="hidden" id="secretYN" value="${resultView1.secretYn}">
										<label> <span class="input-checkbox"> <input type="radio" id="secretY" name="secretYn" value="Y"> 
													<i></i>
											</span> 공개
										</label> 
										<label> <span class="input-checkbox"> <input type="radio" id="secretN" name="secretYn" value="N"> 
												<i></i>
											</span> 비공개
										</label>
									</span>
								</td>
							</tr>
							<tr id="trB">
								<th>비밀번호</th>
								<td>
									<input type="password" placeholder="비밀번호를 입력해주세요." autocomplete="new-password" style="width: 100%" name="secretPw" id="secretPw" value="">
								</td>
							</tr>																			
						</tbody>
					</table>
				</div>				
			</div>
			</form>
			<div class="button-group bottom">
					<button type="button" class="secondary" onclick="location.href='/customer/qna/qna.do'">목록</button>
					<button class="primary" onClick="btn_modify()" type="submit">확인</button>
					
					<button type="button" id="btn_delete" onclick="location.href='/customer/qna/view.do?contentId=${resultView1.contentId}'" class="secondary">취소</button>
			</div>
			<!-- //.board-view -->
		</section>
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

<!-- ### script ###-->
<script>
	
	//익명여부
	var secretYn = $("#secretYN").val();
	if(secretYn == 'Y'){
	   $("#secretY").attr('checked', 'checked');
	}else{
	   $("#secretN").attr('checked', 'checked');
	}
		
	//익명여부
	var nameSecretYn = $("#nameSecretYN").val();
	
    if(nameSecretYn == 'Y'){
       $("#nameSecretY").attr('checked', 'checked');
    }else{
       $("#nameSecretN").attr('checked', 'checked');
    }
        
	//게시글 수정 확인
	function btn_modify(){
		
		let secretPw = $("#secretPw").val();
		let contentId = $("input[name=contentId]").val();
		
		var param = {
			"secretPw" : secretPw,
			"contentId" :  contentId,
			callBackFunc : 'callBack'
		};
		
		common.ajaxaa("${pageContext.request.contextPath}/customer/qna/PwChk", param);

	};
	
	function callBack(res){ 
		 	if(res === true){
		 		let email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
				let mail = $("#e_mail").val();
				if(mail.match(email_rule) != null){
				} else {
					alert("이메일 형식을 확인해 주세요.");
					 return false;
				}
				
				if (confirm("정말 수정하시겠습니까 ?") == true) {
					$("#viewForm").submit();
				} else {
					return;
				}
		 	} else {
		 		alert("비밀번호를 확인해 주세요");
		 	}
	 }	

</script>
