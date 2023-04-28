<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!--탭메뉴스크립트-->
   <!-- #container -->
    <div id="container">
            
        <div class="headline main_headline">
          <div class="inner">
              <h1>사람과 일터를 잇고 세상을 밝히는<br>더 좋은 가치를 실현하겠습니다. </h1>
              <ul class="quick">
                <li>
                  <a href="#" class="ic1"><em>화학제품관리</em></a>
                </li>
                <li>
                  <a href="#" class="ic2"><em>유해인자등록</em></a>
                </li>
                <li>
                  <a href="#" class="ic3"><em>건강관리</em></a>
                </li>
                <li>
                  <a href="#" class="ic4"><em>작업환경관리</em></a>
                </li>
                <li>
                  <a href="#" class="ic5"><em>산업재해관리 </em></a>
                </li>
                <li>
                  <a href="#" class="ic6"><em>교육관리</em></a>
                </li>
                <li>
                  <a href="#" class="ic7"><em>도급관리 </em></a>
                </li>
                <li>
                  <a href="#" class="ic8"><em>법정관리항목    </em></a>
                </li>
            </ul>
          </div>
        </div>
	 <input id="mainPopOpen" type="hidden" value="${popOpen}">
      <!-- .inner -->
      <div class="inner2">  
        <div class="inner"> 
          <section >
            <div class="banners">
              <h2 class="main_h2">자주찾는 메뉴</h2>
              <ul>
                <li class="icon01">                  
                  <span>커뮤니티</span><br>
                  커뮤니티를 이용 하실 수<br>있습니다.<br><br>
                  <button class="blue" onclick="location.href='http://www.atos.co.kr/kiha.iohp/customer/notice.do'">더보기</button>                
                </li>
                <li class="icon02">
                  <span>헬스키퍼</span><br>
                  검진결과를 볼 수<br>있습니다.<br><br>
                  <button class="green"  onclick="window.open('https://health.kiha21.or.kr/main/main.do');">더보기</button>
                </li>
                <li class="icon03">
                  <span>에듀센터</span><br>
                  교육신청과 결과를<br>볼 수 있습니다.<br><br>
                  <button class="yellow" onclick="window.open('https://edu.kiha21.or.kr/');">더보기</button>
                </li>
              </ul>
            </div>            
          </section>
      </div>
    </div>
      <div class="inner">  
          <!-- #content section////////////////////////////// -->
          <section id="content">
            <div class="csbanners">
              <h2 class="main_h2">고객지원 센터</h2>
              <ul >
                <li class="">
                  <span>공지사항</span><br>
                 이곳은 통합산업보건 프로그램 공지사항 부분입니다.<br><br>
                  <p>2022.07.07</p>
                </li>
                <li class="">
                  <span>공지사항</span><br>
                 이곳은 통합산업보건 프로그램 공지사항 부분입니다.<br><br>
                  <p>2022.07.07</p>
                </li>
                <li class="">
                  <span>공지사항</span><br>
                 이곳은 통합산업보건 프로그램 공지사항 부분입니다.<br><br>
                  <p>2022.07.07</p>
                </li>
                <li class="">
                  <span>자주하는문의</span><br>
                 이곳은 통합산업보건 프로그램 공지사항 부분입니다.<br><br>
                  <p>2022.07.07</p>
                </li>
              </ul>
            </div>            
          </section>
          <!-- //////////////////////////////#content section -->
      </div>
      <!-- //.inner -->
    </div>
    <!-- //#container -->

    <div class="util-bottom">
  <div class="inner">
    <a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">위로</a>
  </div>
  
<script>

function getCookie(name){
    var nameOfCookie = name + "=";
    var x = 0;
    while ( x <= document.cookie.length )
    {
            var y = (x+nameOfCookie.length);
            if ( document.cookie.substring( x, y ) == nameOfCookie ) {
                    if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
                            endOfCookie = document.cookie.length;
                    return unescape( document.cookie.substring( y, endOfCookie ) );
            }
            x = document.cookie.indexOf( " ", x ) + 1;
            if ( x == 0 )
                    break;
    }
    return "";
}

//팝청 페이지 로딩
$(document).ready(function() {
	if($("#mainPopOpen").val() == 1){
		
		$.ajax({
			url : "/main/mainPopList", //서비스 주소 
			success : function(res) {
				const list = res['popList'];
			}
		})
		
		if(getCookie("mainPop") != "1"){
			window.open('/main/mainpop.do', 'xyy', 'toolbar=no, width=400, height=434, status=yes, menubar=no, scrollbars=no');
		}
	}
})


</script>  
  