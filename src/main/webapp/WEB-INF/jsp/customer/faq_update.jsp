<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>


<!-- 20220914 송성빈-->
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
		<!-- head title -->
		<div class="headline sub_headline sub_headline07">
			<div class="inner">
				<h1>고객지원</h1>
			</div>
		</div>
		<!-- head title -->
		<!-- .inner -->
		<div class="inner">

			<!-- #content section////////////////////////////// -->
			<section id="content">
				
				<!-- ▼ 타이틀 영역 -->
				<div class="con_section ">
					<h2 class="con_sectionTit" style="margin-bottom: 10px;"><span class="subtit">자주하는 문의</span>
					</h2>
				</div>
				<!-- ▼ 타이틀 영역 -->
				
				<!-- .board-view -->
				<form action="${pageContext.request.contextPath}/customer/faq/update">
					<table class="board-write">
						<colgroup>
							<col style="width: 240px">
							<col>
						</colgroup>
						<tbody id="tableB">
							<tr>
								<th>게시판</th>
								<td>자주하는 문의</td>
							</tr>
							<tr>
								<th>제목</th>
								<td><input type="text" style="width: 100%" name="title" id="title" value="${resultView1.title}"></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><textarea style="height: 400px; width: 100%; white-space:pre;" name="content">${resultView1.content}</textarea></td>
							</tr>
			<!-- 		
            <tr>          
            <th>첨부파일</th>
              <td>
                <span class="input-file">
                  <button type="button">파일 선택</button>
                  <input type="file" name="boardFilePath">
                </span>
                <span class="attached-files">
                </span>
              </td>
            </tr>
            -->

						</tbody>
					</table>
					<input type="hidden" value="${resultView1.contentId}"  name="contentId">
					<!-- //.board-view -->
					<div class="button-group bottom">
						<button class="primary" type="submit" class="secondary">수정</button>
						<button type="button" class="secondary"
							onclick="location.href='/customer/faq/faq.do'">취소</button>
					</div>
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