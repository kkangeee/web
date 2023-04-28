<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- #location -->
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">보건관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">보건관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">안전보건관리</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U2100.do">건강관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">연간계획수립</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U2100.do">건강검진결과표관리</a></li>
				<li><a href="/page/KW30000/KW30000U2200.do">건강검진현황</a></li>
				<li><a href="/page/KW30000/KW30000U2310.do">건강검진결과통계</a></li>
				<li><a href="/page/KW30000/KW30000U2400.do">근로자건강상담</a></li>
				<li><a href="/page/KW30000/KW30000U2510.do">직업건강평가</a></li>
			</ul>
		</li>
	</ul>
</div>
<!-- #location -->
    
    <!-- #container -->
    <div id="container">
            
        <div class="headline sub_headline sub_headline01">
          <div class="inner">
              <h1>보건관리</h1>
          </div>
        </div>      
    
        <div class="inner">
          <!-- 하단여백 섹션으로 구분 -->
          <section id="content">
            <div class="con_area">       
        
        
        <!-- ▼ 타이틀 영역 -->
        <div class="con_section ">
            <h2 class="con_sectionTit">건강관리 / <span class="subtit">직업건강 평가</span></h2>  
                      <!-- 통합보건프로그램 검진에서 구현할 통계 기능으로 구현(사업 프로그램 구축 시 반영) -->
        </div>
        
         <!-- ▼ 정보입력 영역 --> 
        <div class="tab_wrap mt20">
            <ul class="tab_base N5">
              <li><a href="/page/KW30000/KW30000U2510.do"><span>직업건강 평가 결과 관리</span></a></li>
              <li><a href="/page/KW30000/KW30000U2520.do"><span>뇌심혈관계 질환 발병위험도 평가</span></a></li>
              <li><a href="/page/KW30000/KW30000U2530.do"><span>직무스트레스 평가</span></a></li>
              <li class="On"><a href="/page/KW30000/KW30000U2540.do"><span>감정노동 평가</span></a></li>
              <li><a href="/page/KW30000/KW30000U2550.do"><span>근골격계 질환 평가</span></a></li>
            </ul>
        </div>  
                  
        <div class="mt20">
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">

      <!-- ▼ 전체검색 영역 -->
      <span class="board-search company-search">
                <form name="form" id="form" action="?" onsubmit="return page.search(this)">
                    <p>평가기간</p>
                  <input type="date" name="date" id="date" class="w180"><p class="ml10"> ~ </p> <input type="date" name="date" id="date" class="w180">
                  <button type="submit" id="search">검색</button>
                </form>
      </span>

      <span class="board-search">
        <form name="form" id="form" action="?" onsubmit="return page.search(this)">
          <input type="hidden" name="pageNum" value="1">
          <select name="searchType">
            <option value="">담당자</option>
          </select>
          <input type="text" name="searchKeyword" value="" placeholder="">
          <button type="submit" id="search">검색</button>
        </form>
      </span>

      <!-- ▼ 버튼 영역 -->
        <div class="btn_top">            
            <a href="javascript:location.href='join05.php';" class="btn_round btn_plus_bl btn_Tw10"><span>전자설문 요청</span></a>
        </div>
    </div>
    <div class="btn_top mb5">            
            <a href="javascript:location.href='join01.php';" class="btn_round btn_plus btn_Tw"><span>추가</span></a>
            <a href="javascript:location.href='join01.php';" class="btn_round btn_del btn_Tw"><span>삭제</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_modi btn_Tw"><span>수정</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_save btn_Tw"><span>저장</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_prt btn_Tw"><span>인쇄</span></a>
        </div>
     
    <!-- 테이블01 --> 
    <div class="TBover">
    <table class="board-list" style="width:5000px">
     <colgroup>
        <col style="width: 40px">
        <col style="width: 60px">
        <col style="width: 100px">
        <col style="width: ">
        <col style="width: 80px">
        <col style="width: 80px">
        <col style="width: 80px">
        <col style="width: 80px">
        <col style="width: ">
        <!--  <col style="width: ">
        <col style="width: auto">
      </colgroup> -->
      <thead>
        <tr>
          <th><input type="checkbox" name="agree1" value="Y"></th>
          <th>NO</th>
          <th>검진일자</th>
          <th>단위사업체</th>
          <th>공정</th>
          <th>성명</th>
          <th>성별</th>
          <th>나이</th> 
          <th>폐경유무</th>
          <th>자궁절제술유무</th>
          <th>가족력유무</th>
          <th>흡연유무</th>
          <th>당뇨유무</th>
          <th>신사구체여과율</th>
          <th>키</th>
          <th>몸무게</th>
          <th>체질량지수</th>
          <th>허리둘레</th>
          <th>혈압(수축기)</th>
          <th>혈압(이완기)</th>
          <th>혈색소</th>
          <th>공복혈당</th>
          <th>당화혈색소</th>
          <th>총콜레스테롤</th>
          <th>고밀도콜레스테롤</th>
          <th>중성지방</th>
          <th>저밀도콜레스테롤</th>
          <th>좌심실비대</th>
          <th>요단백</th>
          <th>죽상동맥경화증</th>        
          <th>고혈압성망막증</th>
          <th>당뇨</th>
          <th>뇌졸중</th>
          <th>뇌출혈</th>
          <th>일과성허혈발작</th>
          <th>심장질환</th>
          <th>심근경색증</th>
          <th>협심증</th>
          <th>관상동맥재건술</th>
          <th>심부전증</th>
          <th>말초혈관질환</th>

      </thead>
      <tbody>
        <tr>          
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
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
    </div>
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
<div class="km500">
  <span>
      <span class="km500tit">[ 건강관리 실시근거 ]</span><br>
      <b>일반건강진단(산업안전보건법 제129조)</b> <br>
      - 상시근로자의 건강관리를 위하여 주기적으로 실시하는 건강진단<br>
       - 사무직근로자 2년에 1회, 그 외 근로자 1년에 1회<br>
       -(과태료) 건강진단 대상 근로자 1명당 10만원(1차), 20만원(2차), 30만원(3차이상)
      <br><br>
      <b>특수건강진단(산업안전보건법 제130조)</b> <br>
       - <b class="tc_point2">★ 시행규칙 별표22</b> 에서 정한 유해인자에 노출되는 근로자의 건강관리를 위하여 실시하는 건강진단<br>
       - (과태료)건강진단 대상 근로자 1명당 10만원(1차), 20만원(2차), 30만원(3차이상)<br><br>

      <p class="point_box">★ 특수건강진단 대상 유해인자(산업안전보건법 시행규칙 별표22)</p><br>
      1. 화학적 인자가. 유기화합물(109종)<br>
      <p> 1) 가솔린(Gasoline; 8006-61-9)<br>
          <span class="gtext">검진주기 : 배치후/특수 : 6개월/12개월<br>
          검사항목 : 혈액(GOT, GPT, r-GPT)/소변검사</span><br>

          2) 글루타르알데히드(Gultaraldehyde; 111-30-8)<br>
          3) β-나프틸아민(β-Naphthylamine; 91-59-8)<br>
          4) 니트로글리세린(Nitroglycerin; 55-63-0)<br>
          5) 니트로메탄(Nitromethane; 75-52-5)<br>
          6) 니트로벤젠(Nitrobenzene; 98-95-3)<br>
          7) p-니트로아닐린(p-Nitroaniline; 100-01-6)<br>
          8) p-니트로클로로벤젠(p-Nitrochlorobenzene; 100-00-5)<br>
          9) 디니트로톨루엔(Dinitrotoluene; 25321-14-6 등)<br>
          10) N,N-디메틸아닐린(N,N-Dimethylaniline; 121-69-7)<br></p>
    </span>
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