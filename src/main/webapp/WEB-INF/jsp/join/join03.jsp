<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
        <ul>
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
        <div class="headline sub_headline sub_headline01">
          <div class="inner">
              <h1>회원가입</h1>
          </div>
        </div>      
    
        <div class="inner">
          <!-- 하단여백 섹션으로 구분 -->
          <section id="content">
            <!-- ▼ 가입순서 영역 -->
            <ol class="join_step">
                <li><p><span>01</span>회원유형선택</p></li>
                <li><p><span>02</span>약관동의</p></li>
                <li class="On"><p><span>03</span>본인인증</p></li>
                <li><p><span>04</span>정보입력</p></li>
                <li><p><span>05</span>가입완료</p></li>
            </ol>
            <h2>인증방법 선택</h2>
            <span class="ft_GR_01">
                    * 대한산업보건협회 홈페이지에서는 안전한 인터넷 서비스를 위해 본인인증을 받고 있습니다.<br>
                    * 아래의 인증방식 중 하나를 선택하여 본인인증 절차를 진행해 주시기 바랍니다. <br><br>
            </span>        

            <ul class="member_box">
                <li class="member_boxL">
                    <h2>휴대폰인증</h2>
                    <a href="join02.html" class="btn_round btn_Blue"><span>휴대폰 인증</span></a>
                    <p>본인명 의의 휴대전화를 통하여 본인인증을 받으실 수 있습니다. <br>
                    통신사의 사정으로 휴대폰 인증을 위한 메시지를 받지 못하는 경우도 있습니다.<br><br></p>
                    
                </li>
                <li class="member_boxR">
                    <h2>아이핀(i-pin)인증</h2>
                    <a href="#" class="btn_round btn_Green"><span>아이핀 인증</span></a>
                    <p>i-pin은 Internet Personal Identification Number의 약자로, 인터넷상 개인 식별번호를 의미하며 홈페이지에서 회원가입, 글쓰기 시 주민등록번호를 사용하지 않고도 본인임을 확인할 수 있는 개인정보보호 서비스입니다.</p>                    
                </li>
            </ul>
            
            
            
          </section>
        </div>
<!-- 컨텐츠 -->

      
    <!-- //#container -->

    <div class="util-bottom">
  <div class="inner">
    <a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">위로</a>
  </div>
</div>