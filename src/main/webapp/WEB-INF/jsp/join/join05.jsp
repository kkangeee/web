<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                <li><p><span>01</span>회원유형선택</p></li>
                <li><p><span>02</span>약관동의</p></li>
               <!--  <li><p><span>03</span>본인인증</p></li> -->
                <li><p><span>03</span>정보입력</p></li>
                <li class="On"><p><span>04</span>가입완료</p></li>
            </ol>
            
            <div class="member_ok"> 
                    <h2>가입완료</h2>                   
                    <p>회원정보 입력이 완료 되었습니다.<br><span class="tc_point">관리자 승인 후 사용이 가능 하십니다.</span></p>   
                     <div class="textCt">
						<span class="ft_GR_01">   
							<a href="/login/login.do" class="btn_round btn_Gray_ddd btn_side">홈</a> 					
						</span>
					</div>
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