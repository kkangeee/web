<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
<!-- #location -->
<div id="location" class="">
	<ul>
		<li><a href="/">Ȩ</a></li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">���ǰ���</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">���ǰ���</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">������ذ���</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U6100.do">������ذ���</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">������� ���</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U6100.do">������� ���</a></li>
				<li><a href="/page/KW30000/KW30000U6200.do">������� ���</a></li>
				<li><a href="/page/KW30000/KW30000U6300.do">������ ���</a></li>
				<li><a href="/page/KW30000/KW30000U6400.do">������ ���ü���</a></li>
			</ul>
		</li>
	</ul>
</div>
<!-- #location -->

    
    <!-- #container -->
    <div id="container">
            
        <div class="headline sub_headline sub_headline01">
          <div class="inner">
              <h1>���ǰ���</h1>
          </div>
        </div>      
    
        <div class="inner">
          <!-- �ϴܿ��� �������� ���� -->
          <section id="content">
            <div class="con_area">       
        
        
        <!-- �� Ÿ��Ʋ ���� -->
        <div class="con_section ">
            <h2 class="con_sectionTit">������ذ��� / <span class="subtit">������ ���ü���</span></h2>            
        </div>
        
        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
	<!-- �� ��ü�˻� ���� -->
      <span class="board-search">
        <form name="form" id="form" action="?" onsubmit="return page.search(this)">
          <input type="hidden" name="pageNum" value="1">
          <select name="searchType">
            <option value="">��ü</option>
            <option value="">����</option>
            <option value="">����</option>
            <option value="">�ۼ���</option>
          </select>
          <input type="text" name="searchKeyword" value="" placeholder="�˻�� �Է��ϼ���.">
          <button type="submit" id="search">�˻�</button>
        </form>
      </span>
      <!-- �� ��ư ���� -->
          <div class="btn_top">            
	            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>�μ�</span></a>
          </div> 

    </div>
    <!-- ���̺�01 --> 
      <!-- �׸��� -->
    			 <form id="boardForm" name="boardForm" method="post">
                       <table class="board-list">
                            <colgroup>
                              	<col style="width: 160px">
						        <col style="width: 720px">
						        <col style="width: 160px">
                            </colgroup>
                            <thead>
                              <tr>
	                              <th>NO</th>
						          <th>���ĸ�</th>
						          <th>�����</th>
                              </tr>
                            </thead>
                            <tbody id="dataSection" name="tbody"></tbody>
                          </table>
					</form>
                          <!-- //���̺�01 -->
                         <div id="paginationBox" class="paging"></div>
  			</section>
        </div>
    </div>
          </section>
        </div>
      </div>

<!-- ������ -->      
    <!-- //#container -->

    <div class="util-bottom">
      <div class="inner">
        <a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">����</a>
      </div>
    </div>
    
    <!-- ### script ###-->
<script type="text/javascript">
	
	//������ �ε��� ����Ʈ ȣ��
	$(document).ready(function() {
		getPage();
	})

	//�˻�
	$("#btnSearch").click(function() {
		const searchType = $("#keywordType").val();
		const search = $("#keyword").val();
		
		$("#searchType").val(searchType);
		$("#searchInput").val(search);
		
		getPage();
	});
	
	//�˻� Enter Key
	function enterkey() {
		if (window.event.keyCode == 13) {
	    	$("#btnSearch").click();
	    }
	}
	
	//������ ����Ʈ ���
	function getPage(page) {
		var searchType = $("#searchType").val();
		var search = $("#searchInput").val();
		$.ajax({
					url : "/page/KW30000/KW30000U6400selectList", //���� �ּ�   
					data : { //���� ó���� �ʿ��� ���ڰ�
						page : page,
						searchType : searchType,
						async: false,
						keyword : search
					},
					success : function(res) {
						const list = res['resultList'];
						const pagination = res['pagination'];
						var totalCnt = "";
						var data = "";
						var block = "";
						 
						//������ ��ȣ ��ġ				
						totalCnt += '��ü <strong class="tc_point mr20">' +pagination['listCnt']+ '</strong>���������� <strong class="tc_point"><span></span>' +pagination['page']+ '/' +pagination['pageCnt']+ '</strong>'
						
						if(list.length !== 0){
							// ���̺��� row�� �����ϴ� �κ�
							for (var i = 0; i < list.length; i++) {
								data += "<tr>";
								data += "<td>" + list[i]['rnum'] + "</td>";																					
								data += "<td>" + list[i]['title'] + "</td>";																					
								data += "<td>" + list[i]['createTimestamp'] + "</td>";
								data += "</tr>";
							}																							
						} else {
							data += "<tr>";
							data += "<td colspan='3'>��ϵ� �Խñ��� �����ϴ�.</td>";
							data += "</tr>";						
						}
						
						// ������ư Ȱ��ȭ ���θ� �����ϴ� �κ�
						if (pagination['prev']) {
							block += "<a href='javascript:getPage("
									+ pagination['page'] + ")'> << </a>";
							block += "<a href='javascript:getPage("
									+ (pagination['startPage'] - 1)
									+ ")'> < </a>";
							// ���� ������ > ó��
						}
						// ��ȣ�� ǥ���ϴ� �κ�
						for (var i = pagination['startPage']; i < pagination['endPage'] + 1; i++) {
							block += "<a class='page-link' href='javascript:getPage("
									+ i + ")'>" + i + "</a>";
						}

						// ���������� ����
						if (pagination['next'] && pagination['endPage'] > 0) {
							block += "<a href='javascript:getPage("
									+ (pagination['endPage'] + 1)
									+ ")'> > </a>";
							block += "<a href='javascript:getPage("
									+ (Math.ceil(pagination['totalCount']
											/ pagination.cri['perPageNum']))
									+ ")'> >> </a>";
						}
							
						$("#totalCnt").html(totalCnt);						
						$("#dataSection").html(data);
						$("#paginationBox").html(block);
					}
				})
	}
	

</script>