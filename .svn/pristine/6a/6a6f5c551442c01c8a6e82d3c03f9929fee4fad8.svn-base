<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="google-site-verification" content="1UHfgpjQEfNiKkVVY2OtrC1sUC0r4blqPYTa2q4RzLk" />
	<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
	<meta property="og:title" content="Health keeper" />
	<meta property="og:description" content="Health keeper" />
	<meta name="format-detection" content="telephone=no" />
	<title>통합보건시스템</title>
	
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap" rel="stylesheet">
	
	<link href="${pageContext.request.contextPath}/css/normalize.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/calendar.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/size.css" rel="stylesheet" type="text/css" />	
	<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
<!-- 	<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' /> -->

	<script type="text/javascript" language="javascript"  src="${pageContext.request.contextPath}/js/vendor/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" language="javascript"  src="${pageContext.request.contextPath}/js/vendor/modernizr.custom.min.js"></script>
	<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
	 <title>JavaScript Test</title>
</head>	

<c:if test="${not empty sessionScope.authUser}">
	<!-- #gnb -->
	<section id="gnb">
		<nav>
			<ul>
				<c:forEach var="roleName" items="${roleList}">
					<c:if test="${roleName.MENU_LVL == '1'}">
					<li class="${roleName.MENU_ID ==  act ? 'active' : ''}">
						<a href="${roleName.PGM_ID}">${roleName.MENU_NM}</a>
						<div class="gnb-spread">
							<ul>
								<c:set var="menuId" value="${roleName.MENU_ID}"/>
								<c:forEach var="roleName" items="${roleList}">
									<c:if test="${roleName.MENU_LVL == '2' && roleName.HG_RK_MENU_ID == menuId}">
										<li class="${roleName.MENU_ID ==  act2 ? 'active' : ''}">
											<a href="${roleName.PGM_ID}">${roleName.MENU_NM}</a>
											<ul>
												<c:set var="menuId2" value="${roleName.MENU_ID}"/>
												<c:forEach var="roleName" items="${roleList}">
													<c:if test="${roleName.MENU_LVL == '3'}">
														<c:if test="${roleName.MENU_LVL == '3' && roleName.HG_RK_MENU_ID == menuId2}">
															<li class="${roleName.MENU_ID ==  act3 ? 'active' : ''}">
																<a target="${roleName.MENU_ID == 'KW20000U1400' ? '_blink' : ''}" href="${roleName.PGM_ID}">${roleName.MENU_NM}</a>
															</li>
														</c:if>
													</c:if>
												</c:forEach>
											</ul>
										</li>
									</c:if>
								</c:forEach>	
							</ul>
						</div>
					</li>
					</c:if>
				</c:forEach>
			</ul>
			<ul class="util">
				<li class="search">
					<button type="button" onclick="$(this).next('.search-wrap').addClass('opened'); $('body').addClass('modal-opened');">검색</button>
					<div class="search-wrap">
						<div class="search-box">
							<span class="search-bar">
								<form action="/board/search/list">
									<input type="text" name="searchKeyword"
										placeholder="무엇을 찾고 계신가요?" />
									<button type="submit">검색</button>
								</form>
							</span>
							<button type="button" class="close" onclick="$(this).closest('.search-wrap').removeClass('opened'); $('body').removeClass('modal-opened');">닫기</button>
						</div>
					</div> 
				</li>				
			</ul>
		</nav>
	</section>	
<!-- //#gnb -->
</c:if>
<script>

$("#switch").click(function(){
    $("#switch").addClass("active");
});

function openModal() {
	document.getElementById('m_nav').style.display = 'block'; 
	document.getElementById('fade').style.display = 'block'
}

</script>