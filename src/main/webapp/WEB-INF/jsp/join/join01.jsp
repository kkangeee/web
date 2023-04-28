<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
        <ul>
          <li><a href="/">홈 c01 c0103 c010301 </a></li>
          <li>
              <button onclick="$(this).toggleClass('active').next().slideToggle();">회원가입</button>
              <ul class="dropdown-list clear-able">
                <li>
                  <a href="/join/join01.do">회원가입</a>
                </li>
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
          <!-- 하단여백 섹션으로 구분 -->
          <section id="content">
            <!-- ▼ 가입순서 영역 -->
            <ol class="join_step">
                <li class="On"><p><span>01</span>회원유형선택</p></li>
                <li><p><span>02</span>약관동의</p></li>
                <!-- <li><p><span>03</span>본인인증</p></li> -->
                <li><p><span>03</span>정보입력</p></li>
                <li><p><span>04</span>가입완료</p></li>
            </ol>
            
            <ul class="member_box">
             <!--     <li class="member_boxL">
                    <h2>기업 개인회원</h2>
                    <a href="/join/join02.do" class="btn_round btn_Blue w150"><span>회원가입</span></a>
                    <p>기업 개인회원 가입을 원하시면 선택해주세요.</p>
                    
                </li>-->
                <li class="member_boxR">
                    <h2>기업 관리자 회원</h2>
                    <a href="/join/join02_company.do" class="btn_round btn_Green w150"><span>회원가입</span></a>
                    <p>기업 관리자 회원 가입을 원하시면 선택해주세요.</p>                    
                </li>
            </ul>
            
            <!-- ▼ 회원관련 메뉴 모듬 영역 -->
            <div class="textCt">
              <span class="ft_GR_01">
                      * 회원 유형에 따라 가입 절차에 차이가 있으니 개인회원 또는 기업회원을 선택해 주세요.
                      <a href="javascript:history.back();" class="btn_round btn_Gray_ddd btn_side">이전화면가기</a>
              </span>
            </div>
          </section>
        </div>
<!-- 컨텐츠 -->
    <!-- //#container -->

    <div class="util-bottom">
  <div class="inner">
    <a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">위로</a>
  </div>
</div>