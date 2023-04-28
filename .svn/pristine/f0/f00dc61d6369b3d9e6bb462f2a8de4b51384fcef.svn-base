<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- #location -->
<div id="location" class="">
	<ul>
		<li><a href="/">홈</a></li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">마이페이지</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/mypage/MY80000U1100.do">마이페이지</a></li>
			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">서비스관리</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/mypage/MY80000U1100.do">서비스관리</a></li>
				<li><a href="/mypage/MY80000U2100.do">내정보관리</a></li>
				<li><a href="/mypage/MY80000U3100.do">견적요청 및 예약하기</a></li>
				<li><a href="/mypage/MY80000U4100.do">계산서관리</a></li>
			</ul>
		</li>
	</ul>
</div>
<!-- #location -->

    
    <!-- #container -->
    <div id="container">
            
        <div class="headline sub_headline sub_headline01">
          <div class="inner">
              <h1>마이페이지</h1>
          </div>
        </div>      
    
        <div class="inner">
          <!-- 하단여백 섹션으로 구분 -->
          <section id="content">
            <div class="con_area">       
        
        
        <!-- ▼ 타이틀 영역 -->
        <div class="con_section ">
            <h2 class="con_sectionTit">회원승인</h2>  
                      <!-- 통합보건프로그램 검진에서 구현할 통계 기능으로 구현(사업 프로그램 구축 시 반영) -->
        </div>
        
        <!-- ▼ 정보입력 영역 -->           
        <div class="mt20">
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
      <!-- ▼ 사업자명 사업자등록번호 검색 영역 -->
      
      <span class="board-search company-search">
        <form name="form" id="form" action="?" onsubmit="return page.search(this)">
          <input type="hidden" name="pageNum" value="1">
           <span class="checkbox-group">
              <label>
                <span class="input-checkbox">
                  <input type="radio" name="man" value="Y" checked="checked">
                  <i></i>
                </span>
               사업자명
              </label>
              <label>
                <span class="input-checkbox">
                  <input type="radio" name="woman" value="N">
                  <i></i>
                </span>
                사업자등록번호
              </label>
            </span>

          <input type="text" name="searchKeyword" value="" placeholder="">
          <button type="submit" id="search">검색</button>
        </form>
      </span>


      <!-- ▼ 버튼 영역 -->
        <div class="btn_top"> <!--            
            <a href="javascript:location.href='join01.php';" class="btn_round btn_plus btn_Tw"><span>추가</span></a>
            <a href="javascript:location.href='join01.php';" class="btn_round btn_del btn_Tw"><span>삭제</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_modi btn_Tw"><span>수정</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_save btn_Tw"><span>저장</span></a> -->
            <a href="javascript:location.href='join05.php';" class="btn_round btn_prt btn_Tw"><span>승인</span></a>
        </div>
    </div>
     
    <!-- 테이블01 -->   
    <!-- 대상자 명단은 평가항목이 완료된 대상자(수검자)리스트를 보여주고 그 대상자를 클릭하면 평가 원본을 확인 할 수 있는 기능 구현 -->
    <table class="board-list">
      <colgroup>
        <col style="width: 30px">
        <col style="width: 60px">
      </colgroup>
      <thead>
        <tr>
          <th><input type="checkbox" name="agree1" value="Y"></th>
          <th>NO</th>
          <th>회원ID</th>
          <th>비밀번호</th>
          <th>회원이름</th>
          <th>생년월일</th>
          <th>연락처</th>
          <th>남여구분</th>
          <th>역할권한ID</th>
          <th>회원구분</th>
          <th>회원승인여부</th>
          

      </thead>
      <tbody>
        <tr>          
          <td><input type="checkbox" name="agree1" value="Y"></td>
          <td>01</td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
        
      </tbody>
    </table>

    <!-- //테이블01 -->

   

    
  <div class="paging">
  
  
  
    <a href="#n" onclick="return page.goPage(this, 1)" class="current">1</a>
  
    <a href="#n" onclick="return page.goPage(this, 2)">2</a>
  
    <a href="#n" onclick="return page.goPage(this, 3)">3</a>
  
    <a href="#n" onclick="return page.goPage(this, 4)">4</a>
  
    <a href="#n" onclick="return page.goPage(this, 5)">5</a>
  
    <a href="#n" onclick="return page.goPage(this, 6)">6</a>
  
    <a href="#n" onclick="return page.goPage(this, 7)">7</a>
  
    <a href="#n" onclick="return page.goPage(this, 8)">8</a>
  
    <a href="#n" onclick="return page.goPage(this, 9)">9</a>
  
    <a href="#n" onclick="return page.goPage(this, 10)">10</a>
  
  <a href="#n" class="next" onclick="return page.goPage(this, 11)">다음</a>
  <a href="#n" class="last" onclick="return page.goPage(this, 20)">끝</a>
</div>

  </section>
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
