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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">작업환경관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U4100.do">작업환경관리</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">작업환경측정결과표 관리</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U4100.do">작업환경측정결과표 관리</a></li>
				<li><a href="/page/KW30000/KW30000U4210.do">작업환경측정결과 통계</a></li>
				<li><a href="/page/KW30000/KW30000U4310.do">국소배기검사</a></li>
				<li><a href="/page/KW30000/KW30000U4400.do">체크리스트</a></li>
				<li><a href="/page/KW30000/KW30000U4510.do">보호구 관리 및 안전보건표지</a></li>
				<li><a href="/page/KW30000/KW30000U4610.do">작업장 순회점검</a></li>
				<li><a href="/page/KW30000/KW30000U4710.do">위험성 평가</a></li>
				<li><a href="/page/KW30000/KW30000U4800.do">위험성 평가 교육관리</a></li>
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
            <h2 class="con_sectionTit">작업환경관리 / <span class="subtit">체크리스트</span></h2>            
        </div>
        
        <!-- ▼ 정보입력 영역 -->

        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
      <!-- ▼ 사업자명 사업자등록번호 검색 영역 -->
      <!-- 
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
      </span> -->

  <!-- ▼ 전체검색 영역 -->
      <span class="board-search">
        <form name="form" id="form" action="?" onsubmit="return page.search(this)">
          <input type="hidden" name="pageNum" value="1">
          <select name="searchType">
            <option value="">전체</option>
            <option value="">제목</option>
            <option value="">내용</option>
            <option value="">작성자</option>
          </select>
          <input type="text" name="searchKeyword" value="" placeholder="검색어를 입력하세요.">
          <button type="submit" id="search">검색</button>
        </form>
      </span>

      <!-- ▼ 버튼 영역 -->
        <div class="btn_top">            
            <a href="javascript:location.href='join01.php';" class="btn_round btn_plus btn_Tw"><span>추가</span></a>
            <a href="javascript:location.href='join01.php';" class="btn_round btn_del btn_Tw"><span>삭제</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_modi btn_Tw"><span>수정</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_save btn_Tw"><span>저장</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_plus_bl btn_Tw10"><span>내 사업장 등록</span></a>
        </div>
    </div>
     
    <!-- 테이블01 --> 
    <span class="board_Ttxt">
    업종에 맞는 체크리스트 가져오기, 즉시 개선 항목 선택시 담당자 To do list에 연동 및 알람 </span>
      <!-- 항목선택 -->
                      <div  class="table-double">
                        <ul>
                          <li>
                            <!-- 테이블01 -->
                            <table class="board-list">
                                <colgroup>
                                  <col style="width: 30px">
                                  <col style="width: 60px">
                                  <col style="width: auto">
                                </colgroup>
                                <thead>
                                  <tr>
                                    <th><input type="checkbox" name="agree1" value="Y"></th>
                                    <th>NO</th>
                                    <th>보건업</th>
                                    <th>체크리스트명</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>          
                                    <td><input type="checkbox" name="agree1" value="Y"></td>
                                    <td>01</td>
                                    <td></td>
                                    <td></td>
                                  </tr>                              
                                </tbody>
                              </table>
                              <!-- //테이블01 -->
                            </li>
                            <li>
                            <!-- 테이블01 -->
                            <table class="board-list">
                                <colgroup>
                                  <col style="width: 30px">
                                  <col style="width: 60px">
                                  <col style="width: auto">
                                </colgroup>
                                <thead>
                                  <tr>
                                    <th><input type="checkbox" name="agree1" value="Y"></th>
                                    <th>NO</th>
                                    <th>체크리스트명</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>          
                                    <td><input type="checkbox" name="agree1" value="Y"></td>
                                    <td>01</td>
                                    <td></td>
                                  </tr>                              
                                </tbody>
                              </table>
                              <!-- //테이블01 -->
                            </li>
                          </ul>
                        </div>  

                         

                          
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
      </div>

<!-- 컨텐츠 -->      
    <!-- //#container -->

    <div class="util-bottom">
      <div class="inner">
        <a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">위로</a>
      </div>
    </div>