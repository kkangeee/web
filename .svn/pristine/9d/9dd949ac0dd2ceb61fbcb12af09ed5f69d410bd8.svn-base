<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>	

<!-- ### HTML ###-->
<!DOCTYPE html>

<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
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

			<button onclick="$(this).toggleClass('active').next().slideToggle();">공지사항</button>

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
			
			<!-- .board-view -->
			<div class="board-view">
				<div class="head">
					<span class="title">
						<h2>${resultView1.title}</h2>
						<dl>
							<dt>본인정보</dt>
							<dd>
								<span> 
									<label class="mt0 mb0"> 
									<input type="hidden" id="nameSecretYN" value="${resultView1.nameSecretYn}">
										<span class="input-checkbox"> 
											<input type="radio" id="nameSecretY" value="" disabled="disabled"><i></i>
										</span> 실명 
									</label> 
									
									<label class="mt0 mb0"> 
										<span class="input-checkbox">
											<input type="radio" id="nameSecretN" value="" disabled="disabled"><i></i> 
										</span> 
									</label> 익명
								</span>
							</dd>
							<dt>구분</dt>
							<dd>${resultView1.cate}</dd>
							<dt>성명</dt>
							<dd>${resultView1.displayUser}</dd>
							<dt>작성일</dt>
							<dd>${resultView1.regDt}</dd>
							<dt>연락처</dt>
							<c:if test="${!empty resultView1.userPhone}">
							<dd>${resultView1.userPhone}</dd>
							</c:if>
							<c:if test="${empty resultView1.userPhone}">
							<dd>비공개</dd>
							</c:if>
							<dt>이메일</dt>
							<dd>${resultView1.email}</dd>
							<dt>조회수</dt>
							<dd>${resultView1.cnt}</dd>
						</dl>
					</span>
				</div>

				<div class="body">
					<table class="board-write board-bottom2">
						<colgroup>
							<col style="width: 240px; height: 500px;">
						</colgroup>
						<tbody id="tableB">
							<tr>
								<th style="padding-left: 90px;">문의 내용</th>
								<td><div style="height:450px; white-space:pre;">${resultView1.content}</div></td>
							</tr>																					
						</tbody>
					</table>
				</div>
				
				<div class="body">
					<table class="board-write board-bottom2" style="border-top: 0px solid #444 !important">
						<colgroup>
							<col style="width: 150px;">
						</colgroup>		
						
						<!-- 댓글 리스트 -->				
						<tbody id="dataSection">		
						</tbody>
						<!-- 댓글 리스트 -->	
					</table>
				</div>				
				<div class="body">
					<table class="board-write" style="border-top: 0px solid #444 !important">
						<colgroup>
							<col style="width: 240px;">
						</colgroup>		
							<tbody id="tableB">		
								<c:if test="${sessionScope.roleAuthId eq 'ADMIN'}">																				
								<tr>		
									<th colspan="2" class="pad_left250">
										<textarea id='rplyContent' name="rplyContent" placeholder="답변을 입력해 주세요." class="h200 p70" style="white-space:pre;"></textarea>
										<button id="btn_rplyWrite" type="button" class="secondary h200 p13">답변등록</button>
									</th>											
								</tr>
								</c:if>
							</tbody>
					</table>
				</div>				
			</div>
			<div class="button-group bottom">
			<c:choose>
				<c:when test="${sessionScope.roleAuthId eq 'ADMIN'}">
					<button type="button" class="secondary" onclick="location.href='/customer/qna/qna.do'">목록</button>
					<button class="primary" type="button" onclick="location.href='/customer/qna/update.do/${resultView1.contentId}'">수정</button>
					<button type="button" id="btn_delete" onclick="btn_delete_modal()" class="secondary">삭제</button>
				</c:when>
				<c:when test="${sessionScope.mbrId eq resultView1.displayUser}">
					<button type="button" class="secondary" onclick="location.href='/customer/qna/qna.do'">목록</button>
					<button class="primary" type="button" onclick="location.href='/customer/qna/update.do/${resultView1.contentId}'">수정</button>
					<button type="button" id="btn_delete" onclick="btn_delete_modal()" class="secondary">삭제</button>
				</c:when>
				<c:otherwise>
					<button type="button" class="secondary" onclick="location.href='/customer/qna/qna.do'">목록</button>
				</c:otherwise>
			</c:choose>
			</div>
			<!-- //.board-view -->
		<input id="rePw" type="hidden" value="${rePw}">
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

<!-- ### script ###-->

<script>

const urlParams = new URL(location.href).searchParams;
const contentId = urlParams.get('contentId'); 

//시간 포맷
const date = new Date();
const year = date.getFullYear();
const month = ('0' + (date.getMonth() + 1)).slice(-2);
const day = ('0' + date.getDate()).slice(-2);
const dateStr = year + '-' + month + '-' + day + '\n';

const hours = ('0' + date.getHours()).slice(-2);
const minutes = ('0' + date.getMinutes()).slice(-2);
const seconds = ('0' + date.getSeconds()).slice(-2);
const timeStr = hours + ':' + minutes + ':' + seconds;

if($("#rePw").val() == '0') alert("비밀번호가 틀렸습니다.");	
var nameSecretYN = $("#nameSecretYN").val();
if (nameSecretYN === 'Y') {
	$("#nameSecretY").attr('checked', 'checked');
} else {
	$("#nameSecretN").attr('checked', 'checked');
}
	//게시글 삭제 모달
	function btn_delete_modal(){
		var modal = document.getElementById('myModal').style.display = "block";
	}
	
	//게시글 닫기 
	function modal_close(){
		var modal = document.getElementById('myModal').style.display = "none";
	}
	
	function modal_insert(){
		$("#boardForm").submit();
	}
	
	//페이지 로딩
	$(document).ready(function() {
		getPage();
	})

	//댓글 리스트 그리기 호출 
	function getPage() {
		$.ajax({
			url : "/customer/qna/qnaListRply?contentId=" + contentId, //서비스 주소 	
			success : function(req) {
				const rplyList = req['rplyList'];
				var data = "";
				// 테이블의 row를 삽입하는 부분
				for (var i = 0; i < rplyList.length; i++) {
					
					data += "<tr>";
					data += "<td style='font-size:15px;padding-left:80px;'>" + rplyList[i].rplyUser + "</td>";
					data += "<td style='width:600px;padding-left:55px;font-size:16px;white-space:pre;'>" + rplyList[i].rplyContent + "</td>";
					data += "<td style='width:100px;font-size:13px;'>" + rplyList[i].rplyRegDt + "</td>";
					data += "<td style='width:10px;font-size:13px;'><a data-rplyId="+ rplyList[i].rplyId +" data-rplyContentId="+ rplyList[i].rplyContentId +" style='cursor:pointer;' onclick='rplyDelete(this)'>삭제<a/></td>";
					data += "</tr>";
				}			
				$("#dataSection").html(data);
				
			}
		})
	}
	
	//댓글 쓰기
	$(document).on('click', '#btn_rplyWrite', function(e) {
		var contentId = urlParams.get('contentId');		
		var rplyUser = "<%=(String)session.getAttribute("mbrNm")%>"
		var rplyRegDt = (dateStr) + (timeStr);
		var rplyContent = $("#rplyContent").val().trim();

		if (rplyContent.trim() == '') {
			alert('내용을 입력해주세요.');
			return;
		}
		
		var customerVO = {
				contentId : contentId,
				rplyContent : rplyContent,
				rplyRegDt : rplyRegDt,
				rplyUser : rplyUser
		};
		
		$.ajax({					
			url : "${pageContext.request.contextPath}/customer/qna/rplywrite",
			contentType : "application/json",
			data : JSON.stringify(customerVO),
			type : "POST",
			async: false,
		}).done(function (data) {
			$("#rplyContent").val("");	
			alert('등록 완료');	
			getPage();
	      })
	});
	
	//댓글 삭제
	function rplyDelete(obj) {
		if (confirm("정말 삭제하시겠습니까 ?")) {
						
			let rplyId = obj.getAttribute("data-rplyid");
			let rplyContentId = obj.getAttribute("data-rplyContentId");
			
			var customerVO = {
					rplyId : rplyId,
					rplyContentId : rplyContentId,
			};
			
			$.ajax({
				url : "${pageContext.request.contextPath}/customer/qna/rplydelete",
				contentType : "application/json",
				data : JSON.stringify(customerVO),
				type : "POST",
				cache : false,
				async: false,
				processData : false,
			}).done(function (data) {
				alert('삭제 완료');	
				getPage();
		      })
		}
	}
</script>
<!-- ### script ###-->