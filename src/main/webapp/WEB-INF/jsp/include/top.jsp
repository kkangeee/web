<%
/************************************************************
*   @ 화면명		: Top 메뉴
*   @ JSP NAME	: /jsp/include/top.jsp
*   @ JSP작성자	: 손우정
*   @ 작성일		: 2022.08.22
*   @ 작업이력	: 
*************************************************************
1		2022.08.22 	  		신규작성
*************************************************************/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
 <section id="top_main" class="inner">
   <span class="logo">
     <a href="/">대한산업보건협회</a>
   </span>

   <ul class="join">
     <li class="company_name"><span>주식회사 아토스</span></li>
     <li><a href="http://testh.kiha21.or.kr" target="blank">대한산업보건협회홈</a></li>
     <li><a href="/join/join01.do">회원가입</a></li>
     <li><a href="/login/login.do">로그인</a></li>
     <li><a href="#">사이트맵</a></li>
   </ul>
 </section>