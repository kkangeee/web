<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">��������</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW60000/KW60000U1100.do">��������</a></li>
			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">���ù���</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW60000/KW60000U1100.do">���ù���</a></li>
				<li><a href="/page/KW60000/KW60000U2100.do">������ħ</a></li>
				<li><a href="/page/KW60000/KW60000U3100.do">��ȹ� �ڵ��</a></li>
				<li><a href="/page/KW60000/KW60000U4100.do">���ü���</a></li>
				<li><a href="/page/KW60000/KW60000U5100.do">��������</a></li>
			</ul>
		</li>
	</ul>
</div>
-->
    
<!-- #container -->
<div id="container">
	<!-- head title -->    
	<div class="headline sub_headline sub_headline01">
	  <div class="inner">
	      <h1>��������</h1>
	  </div>
	</div>      
    
    <div class="inner">
        <!-- #content section////////////////////////////// -->
		<section id="content">
			<!-- �� Ÿ��Ʋ ���� -->
			<div class="con_section ">
		            <h2 class="con_sectionTit"><span class="subtit">��������</span></h2> 
		    </div>
			<!--Ÿ��Ʋ ���� -->
			<div class="button-group top" style="justify-content: flex-end;margin:0px">
				<!-- �˻����� -->
				<span class="board-search">
				<!-- <form name="form" id="form" action="#" onsubmit="return page.search(this)"> -->
						<input type="hidden" name="pageNum" value="1"> 
						<select name="searchType" id="keywordType">
							<option value="all">��ü</option> 
							<option value="title">����</option>
							<option value="content">����</option>  
							<option value="displayUser">�ۼ���</option>
						</select> 
						<input type="hidden" id="searchType" value="" />
						<!-- �˻��� -->
						<input type="text" class="form-control form-control-sm" name="keyword" id="keyword" onkeyup="enterkey()" placeholder="�˻�� �Է��ϼ���.">
						<button type="submit" id="btnSearch" name="btnSearch">�˻�</button>
						<input type="hidden" id="searchInput" value="" />
				<!-- </form> -->
				</span>
			</div>
	
		    <!-- ���̺�01 -->   
		     <form id="boardForm" name="boardForm" method="post">
		     
		     	<!--page totalCnt -->
				<p id="totalCnt" class="allNB"></p>
				<!--page totalCnt -->
		     
			    <table class="board-list">
			      <colgroup>
			        <col style="width: 160px">
			        <col style="width: 740px">
			        <col style="width: 50">
			        <col style="width: 50">
			        <col style="width: 50">
			      </colgroup>
			      <thead>
			        <tr>
			          <th>NO</th>
			          <th>����</th>
			          <th>�ۼ���</th>
			          <th>�ۼ���</th>
			          <th>��ȸ</th>
			        </tr>
			
			      </thead>
			      	<!-- ����Ʈ ���� ���� -->
					<tbody id="dataSection"></tbody>
					<!-- ����Ʈ ���� ���� -->
			    </table>
			</form>
		    <!-- //���̺�01 -->
		    
		  	<!-- ����¡ -->
			<div id="paginationBox" class="paging"></div>
			<!-- ����¡ -->
			
			<!-- �۾��� ��ư ó�� -->
			<div class="button-group bottom">
				<c:if test="${sessionScope.mbrId eq 'admin'}">
						<button type="button" class="primary" onclick="location.href='/page/KW60000/KW60000U5100_write.do'">�������</button>
				</c:if>
			</div>	
			<!-- �ϴ�box -->
			<div class="km500">
			  <span>
			      <span class="km500tit">[ �ǰ����� �ǽñٰ� ]</span><br>
			      <b>�Ϲݰǰ�����(����������ǹ� ��129��)</b> <br>
			      - ��ñٷ����� �ǰ������� ���Ͽ� �ֱ������� �ǽ��ϴ� �ǰ�����<br>
			       - �繫���ٷ��� 2�⿡ 1ȸ, �� �� �ٷ��� 1�⿡ 1ȸ<br>
			       -(���·�) �ǰ����� ��� �ٷ��� 1��� 10����(1��), 20����(2��), 30����(3���̻�)
			      <br><br>
			      <b>Ư���ǰ�����(����������ǹ� ��130��)</b> <br>
			       - <b class="tc_point2">�� �����Ģ ��ǥ22</b> ���� ���� �������ڿ� ����Ǵ� �ٷ����� �ǰ������� ���Ͽ� �ǽ��ϴ� �ǰ�����<br>
			       - (���·�)�ǰ����� ��� �ٷ��� 1��� 10����(1��), 20����(2��), 30����(3���̻�)<br><br>
			
			      <p class="point_box">�� Ư���ǰ����� ��� ��������(����������ǹ� �����Ģ ��ǥ22)</p><br>
			      1. ȭ���� ���ڰ�. ����ȭ�չ�(109��)<br>
			      <p> 1) ���ָ�(Gasoline; 8006-61-9)<br>
			          <span class="gtext">�����ֱ� : ��ġ��/Ư�� : 6����/12����<br>
			          �˻��׸� : ����(GOT, GPT, r-GPT)/�Һ��˻�</span><br>
			
			          2) �۷�Ÿ���˵�����(Gultaraldehyde; 111-30-8)<br>
			          3) ��-����ƿ�ƹ�(��-Naphthylamine; 91-59-8)<br>
			          4) ��Ʈ�α۸�����(Nitroglycerin; 55-63-0)<br>
			          5) ��Ʈ�θ�ź(Nitromethane; 75-52-5)<br>
			          6) ��Ʈ�κ���(Nitrobenzene; 98-95-3)<br>
			          7) p-��Ʈ�ξƴҸ�(p-Nitroaniline; 100-01-6)<br>
			          8) p-��Ʈ��Ŭ�ηκ���(p-Nitrochlorobenzene; 100-00-5)<br>
			          9) ���Ʈ����翣(Dinitrotoluene; 25321-14-6 ��)<br>
			          10) N,N-���ƿ�ƴҸ�(N,N-Dimethylaniline; 121-69-7)<br></p>
			    </span>
			</div>
			<!-- �ϴ�box -->
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
					url : "/page/KW60000/kw60000U5100List.do", //���� �ּ� 
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
						totalCnt += '��ü <strong class="tc_point mr20">'
								+ pagination['totalCount']
								+ '</strong>���������� <strong class="tc_point"><span></span>'
								+ pagination.cri['page']
								+ '/'
								+ (Math.ceil(pagination['totalCount']
										/ pagination.cri['perPageNum']))
								+ '</strong>'
						//������ ��ȣ ��ġ
						
						if(totalCnt !== 0){
							// ���̺��� row�� �����ϴ� �κ�
							for (var i = 0; i < list.length; i++) {
								data += "<tr>";
								data += "<td>" + list[i]['rNum'] + "</td>";																					
								data += "<td style='cursor: pointer;' onClick='fn_view("+ list[i]['contentId'] + ")'>" + list[i]['title'] + "</td>";
								data += "<td>" + list[i]['displayUser'] + "</td>";
								data += "<td>" + list[i]['regDt'] + "</td>";
								data += "<td>" + list[i]['cnt'] + "</td>";
								data += "</tr>";
							}																							
						} else {
							data += "<tr>";
							data += "<td></td>";																					
							data += "<td>��ϵ� �Խñ��� �����ϴ�.</td>";
							data += "<td></td>";
							data += "<td></td>";
							data += "<td></td>";
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
	
	//�� �� ����
	function fn_view(contentId){
		  var form = document.getElementById("boardForm");
		  var url = "<c:url value='/page/KW60000/KW60000U5100view.do'/>?contentId=" + contentId;
		   form.action = url;    
		   form.submit(); 
	}

</script>
<!-- ### script ###-->