<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">���ǰ���</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">���ǰ���</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">��������</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">��������</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">�������հ���</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">�������հ���</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">�ܺα�������</a></li>
				<li><a href="/page/KW30000/KW30000U5310.do">������ȹ/�ǽõ��</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">�����ڷ� �ٿ�</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">����</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">�����</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">����</a></li>
			</ul>
		</li>
	</ul>
</div>
-->


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
					<h2 class="con_sectionTit">
						�������� > <span class="subtit">�������հ���</span>
					</h2>
				</div>

				<!-- �� �����Է� ���� -->
				<div id="ninfo" class="tab_wrap mt20">
					<ul class="tab_base N2">
						<li><a href="/page/KW30000/KW30000U5110.do" target="blank"><span>�����</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U5120.do"><span>����</span></a></li>
					</ul>
				</div>

				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div id="searchbox" class="button-group top">
							<!-- �� ����ڸ� ����ڵ�Ϲ�ȣ �˻� ���� -->

							<!-- �� ��ü�˻� ���� -->
							<span class="board-search">
								<form name="form" id="form" action="?" onsubmit="return page.search(this)">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchType">
										<option value="">��ü</option>
										<option value="">����</option>
										<option value="">�����Ⱓ</option>
									</select> <input type="text" name="searchKeyword" value="" placeholder="�˻�� �Է��ϼ���.">
									<button type="submit" id="search">�˻�</button>
								</form>
							</span>
							<!-- �� ��ü�˻� ���� -->
							<!-- �� ��ư ���� -->
							<div class="btn_top">
								<a href="javascript:void(0)"
									class="btn_round btn_prt btn_Tw print-button"
									onclick="printPage()" id="printBtn"><span>�μ�</span></a>
							</div>
							<!-- �� ��ư ���� -->
						</div>

						<!-- ���̺�01 -->
						<!-- �׸��� -->
						<!--page totalCnt -->
						<p id="totalCnt" class="allNB"></p>
						<!--page totalCnt -->

						<table id="tablePrint" class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
								<col style="width: 50px">
								<col style="width: 100px">
								<col style="width: 50px">
								<col style="width: 80px">
								<col style="width: 80px">
								<col style="width: 150px">
								<col style="width: 60px">
								<col style="width: 80px">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>����</th>
									<th>���</th>
									<th>�̸�</th>
									<th>�������� <select class="select_bd_tit" name="searchType">
											<option value="">����</option>
											<option value="">ä���</option>
											<option value="">�۾�����</option>
									</select>
									</th>
									<th>������� <select class="select_bd_tit" name="searchType">
											<option value="">��ü����</option>
											<option value="">�¶���</option>
											<option value="">���̳�</option>
											<option value="">��Ÿ</option>
									</select>
									</th>
									<th>�����Ⱓ</th>
									<th>�����ð�</th>
									<th>�ܺα��� �̼���</th>
								</tr>

							</thead>
							<!-- ����Ʈ -->
							<tbody id="dataSection" name="tbody"></tbody>
							<!-- ����Ʈ -->
						</table>

						<!-- //���̺�01 -->

						<!-- ����¡ -->
						<div id="paginationBox" class="paging"></div>
						<!-- ����¡ -->
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
		<a class="btn-top" href="#wrap"
			onclick="$(window).scrollTop(0); return false;">����</a>
	</div>
</div>

<script>
	$(document).ready(function() {
		getPage();
	})

	function getPage(page) {
		var searchType = $("#searchType").val();
		var search = $("#searchInput").val();
		$
				.ajax({
					url : "/page/KW30000/KW30000U5120selectList", //���� �ּ� 
					data : { //���� ó���� �ʿ��� ���ڰ�
						page : page,
						searchType : searchType,
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

						// ���̺��� row�� �����ϴ� �κ�
						for (var i = 0; i < list.length; i++) {
							data += '<tr>';
							data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
							data += '<td style="display:none" class="seq">'+ list[i].seq + '</td>';
							data += '<td class="rNum">' + list[i].rNum+ '</td>';
							data += '<td class="prcsNm">' + list[i].prcsNm+ '</td>';
							data += '<td class="tgtPplEmpeNo">' + list[i].tgtPplEmpeNo+ '</td>';
							data += '<td class="tgtPplNm">' + list[i].tgtPplNm+ '</td>';
							data += '<td class="eduKnd">'+ list[i].eduKnd + '</td>';
							data += '<td class="eduMth">' + list[i].eduMth+ '</td>';
							data += '<td class="eduImplStrDd">'+ list[i].eduImplStrDd + '</td>';
							data += '<td class="eduTm">'+ list[i].eduTm + '</td>';
							data += '<td class="cmpltnYn"><button type="button" id="search" OnClick="newPopClick();" class="btn_His2">�̼���</button></td>';
							data += '</tr>';
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
						// �����
						$("tbody").html(data);
						$("#insertBtn").show();
						$("#deleteBtn").show();
						$("#updateBtn").show();
						$("#printBtn").show();
						$("#saveBtn").hide();
						$("#cancelBtn").hide();
					}
				})
	}
	//�μ��ư
	function printPage() {
		window.print();
	}
</script>
