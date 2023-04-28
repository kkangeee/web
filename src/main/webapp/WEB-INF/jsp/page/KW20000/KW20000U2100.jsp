<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>

<!-- #location
<div id="location" class="">
	<ul>
		<li><a href="/">홈</a></li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">유해인자관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW20000/KW20000U1100.do">유해인자관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">유해인자정보관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW20000/KW20000U1100.do">화학제품관리</a></li>
				<li><a href="/page/KW20000/KW20000U2100.do">유해인자정보관리</a></li>
			</ul>
		</li>
		<!-- 
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">MSDS
				조회 및 등록</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW20000/KW20000U1100.do">MSDS 조회 및 등록</a></li>
				<li><a href="/page/KW20000/KW20000U1200.do">화학제품 현황</a></li>
				<li><a href="/page/KW20000/KW20000U1300.do">화학물질 입출고 현황</a></li>
			</ul>
		</li>
	</ul>
</div>
-->

<!-- #container -->
    <div id="container">
            
        <div class="headline sub_headline sub_headline01">
          <div class="inner">
              <h1>유해인자 관리</h1>
          </div>
        </div>      
    
        <div class="inner">
          <!-- 하단여백 섹션으로 구분 -->
          <section id="content">
           <div class="con_area">       
        
        
        <!-- ▼ 타이틀 영역 -->
        <div class="con_section ">
            <h2 class="con_sectionTit"><span class="subtit">유해인자정보관리</span></h2>            
        </div>
        
        <!-- ▼ 정보입력 영역 -->           
        <div class="mt20">
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">

      <!-- ▼ 버튼 영역 -->
        <div class="btn_top">   
            <a href="javascript:location.href='join05.php';" class="btn_round btn_save btn_prt"><span>인쇄</span></a>
        </div>
    </div>
     

    <table class="board-list">
      <colgroup>
        <col style="width: 4%">
        <col style="width: 5%">
        <col style="width: 50px">
        <col style="width: 100px">
        <col style="width: 100px">
        <col style="width: 100px">
        <col style="width: 100px">
        <col style="width: 100px">
      </colgroup>
      <thead>
        <tr>
          <th><input type="checkbox" name="agree1" value="Y"></th>
          <th>NO</th>
          <th>
            <select class="select_bd_tit"  name="searchType">
                <option value="">단위사업체</option>
                <option value="">단위사업체01</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit"  name="searchType">
                <option value="">공정명</option>
                <option value="">공정명01</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit"  name="searchType">
                <option value="">유해인자구분</option>
                <option value="">유해인자구분01</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit"  name="searchType">
                <option value="">유해인자명</option>
                <option value="">유해인자명체01</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit"  name="searchType">
                <option value="">작업환경측정대상</option>
                <option value="">작업환경측정대상01</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit"  name="searchType">
                <option value="">특수건강진단대상</option>
                <option value="">특수건강진단대상01</option>
            </select>
          </th>
          
        </tr>
      </thead>
      <tbody>
        
        

        <tr>          
          <td>
            <input type="checkbox" name="agree1" value="Y">
          </td>
          <td>01</td>
          <td>제1공장</td>
          <td>원자재 입고<button type="submit" id="search" class="btn_His2 btn_plus2">+</button></td>
          <td>화학적인자</td>
          <td>규산염나트륨</td>
          <td>-</td>
           <td>-</td>
        </tr>     

        
      </tbody>
    </table>

    
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