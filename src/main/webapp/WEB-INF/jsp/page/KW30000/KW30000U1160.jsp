<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!DOCTYPE html>
<!-- #location -->
<!-- <div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">���ǰ���</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">���ǰ���</a></li>
			</ul>
		</li> 
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">�������ǰ���</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U1110.do">�������ǰ���</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">�������ǰ���ü��</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U1110.do">�������ǰ���ü��</a></li>
				<li><a href="/page/KW30000/KW30000U1210.do">������ȹ����</a></li>
				<li><a href="/page/KW30000/KW30000U1310.do">��������</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">�����Ƿ�ü��</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U1110.do">����������������</a></li>
				<li><a href="/page/KW30000/KW30000U1120.do">����������������������</a></li>
				<li><a href="/page/KW30000/KW30000U1130.do">���������������ȸ����</a></li>
				<li><a href="/page/KW30000/KW30000U1140.do">���������������ȸ������</a></li>
				<li><a href="/page/KW30000/KW30000U1150.do">���������������ȸȸ�Ƿ�</a></li>
				<li><a href="/page/KW30000/KW30000U1160.do">�����Ƿ�ü��</a></li>
				<li><a href="/page/KW30000/KW30000U1171.do">�ǰ������ǰ���</a></li>
			</ul>
		</li>
	</ul>
</div> -->
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
					<h2 class="con_sectionTit">
						�������ǰ��� > <span class="subtit">�������ǰ���ü��</span>
					</h2>
				</div>

				<!-- �� �����Է� ���� -->
				<div class="tab_wrap mt20">
					<ul class="tab_base N7">
						<li><a href="/page/KW30000/KW30000U1110.do"><span>����������������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1120.do"><span>����������������������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1130.do"><span>���������������ȸ����</span></a></li>
						<li><a href="/page/KW30000/KW30000U1140.do"><span>���������������ȸ������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1150.do"><span>���������������ȸȸ�Ƿ�</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1160.do"><span>�����Ƿ�ü��</span></a></li>
						<li><a href="/page/KW30000/KW30000U1171.do"><span>�ǰ������ǰ���</span></a></li>
					</ul>
				</div>
				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
							<!-- �� ��ü�˻� ���� -->
							<span class="board-search">
								<form name="form" id="form" action="?"
									onsubmit="return page.search(this)">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchType">
										<option value="">��ü</option>
										<option value="">����</option>
										<option value="">����</option>
										<option value="">�ۼ���</option>
									</select> <input type="text" name="searchKeyword" value=""
										placeholder="�˻�� �Է��ϼ���.">
									<button type="submit" id="search">�˻�</button>
								</form>
							</span>

							<!-- �� ��ư ���� -->
						<div class="btn_top">            
				            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>�߰�</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>����</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>����</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>����</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw print-button" onclick="printPage()" id="printBtn"><span>�μ�</span></a>
				            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>���</span></a>
						</div>
						</div>

						<table class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
								<col style="width: 100px">
							</colgroup>
							<thead>
								<tr>
									<th rowspan="2" class="tit"><input type="checkbox" name="agree1" value="Y" id="checkAll"></th>
									<th rowspan="2" class="tit">NO</th>
									<th rowspan="2" class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">����</option>
										</select>
									</th class="tit">
									<th rowspan="2" class="tit">�����</th>
									<th rowspan="2" class="tit">������</th>
									<th rowspan="2" class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">�̵��Ÿ�</option>
										</select>
									</th>
									<th rowspan="2" class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">�ҿ�ð�</option>
										</select>
									</th>
									<th colspan="5" class="tit">���޻�Ȳ ó������ ����</th>
									<th rowspan="2" class="tit">����ó</th>
								</tr>
								<tr>
									<th class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">����</option>
										</select>
									</th>
									<th class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">�ߵ�</option>
										</select>
									</th>
									<th class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">ȭ��</option>
										</select>
									</th>
									<th class="tit">
										<select class="select_bd_tit" name="searchType">
												<option value="">ȭ�й���</option>
										</select>
									</th>
									<th class="tit">��Ÿ</th>
							</thead>
							
							<tbody id="dataSection" name="tbody">
							</tbody>
								</table>

				<!-- ����¡ -->
			<div id="paginationBox" class="paging"></div>
			</div>
		</section>
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
	common.checkAll();

	$(document).ready(function() {
		getPage();
	})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U1160selectList", //���� �ּ� 
				data : {  //���� ó���� �ʿ��� ���ڰ�
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
					totalCnt += '��ü <strong class="tc_point mr20">' +pagination['listCnt']+ '</strong>���������� <strong class="tc_point"><span></span>' +pagination['page']+ '/' +pagination['listCnt']+ '</strong>'
					
					if(list.length !== 0){	
					// ���̺��� row�� �����ϴ� �κ�
					for (var i = 0; i < list.length; i++) {
						data += '<tr>';
						data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="frstSysTp">' + list[i].frstSysTp + '</td>';
						data += '<td class="instNm">' + list[i].instNm + '</td>';
						data += '<td class="location">' + list[i].location + '</td>';
						data += '<td class="mvngDstnc">' + list[i].mvngDstnc + '</td>';
						data += '<td class="reqmnTmMm">' + list[i].reqmnTmMm + '</td>';
						data += '<td class="frctCanYn">' + list[i].frctCanYn + '</td>';
						data += '<td class="adctCanYn">' + list[i].adctCanYn + '</td>';
						data += '<td class="burnCanYn">' + list[i].burnCanYn + '</td>';
						data += '<td class="chemMtrlCanYn">' + list[i].chemMtrlCanYn + '</td>';
						data += '<td class="othrCanYn">' + list[i].othrCanYn + '</td>';
						data += '<td class="fonNo">' + list[i].fonNo.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3") + '</td>';
						data += '</tr>';
					}
					} else {
						data += "<tr id='deleteCol'>";
						data += "<td colspan='13'>��ϵ� �Խñ��� �����ϴ�.</td>";
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


//res�� obj  (�ݹ��Լ�, ajaxȣ�� ����� ���� ��°�, ��ȸ�Ǵ� �׸���)
/* function grid(obj) {
	console.log(obj);

	var html = "";
	for (i in obj) {
		console.log(obj[i]);
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" value="'+ obj[i].seq+ '"></td>';
		html += '<td>' + obj[i].seq + '</td>';
		html += '<td>' + obj[i].empeNo + '</td>';
		html += '<td>' + obj[i].empeNm + '</td>';
		html += '<td>' + obj[i].deptNm + '</td>';
		html += '<td>' + obj[i].prcsNm + '</td>';
		html += '<td>' + obj[i].pstn + '</td>';
		html += '<td>' + obj[i].cmsnrTp + '</td>';
		html += '<td>' + obj[i].rgstDd + '</td>';
		html += '<td><button type="submit" id="search" class="btn_His2">����</button></td>';
		html += '</tr>';
	}
	$("tbody").html(html);
	$("#insertBtn").show();
	$("#deleteBtn").show();
	$("#updateBtn").show();
	$("#printBtn").show();
	$("#saveBtn").hide();
} */

	//���� ��ư Ŭ���� ajaxȣ��
$("#deleteBtn").on("click",function(){
	if($("input[name=agree1]:checked").length == 0){
		alert("�����Ͻ� �������� �������ּ���");
		return
	};
	var arr =[];
	for ( i=0;i<$("input[name=agree1]:checked").length;i++ ){
		 arr.push({
			 seq : $("input[name=agree1]:checked").eq(i).val()
		 });
	}
	var param = {
		"data" : JSON.stringify(arr)
	};
	
	 if (confirm("�����Ͻðڽ��ϱ�?")) {
		common.ajaxaa("/page/KW30000/KW30000U1160delete.do", param);
		 getPage();
     }
});


	//���� ��ư Ŭ���� ajaxȣ��
$("#updateBtn").on("click", function() {
	if($("input[name=agree1]:checked").length == 0){
		alert("�����Ͻ� �������� �������ּ���");
		return
	};
	for (i = 0; i < $("input[name=agree1]:checked").length; i++) {
		$target = $("input[name=agree1]:checked").eq(i).closest('tr');
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" value="new" class="new"></td>';
		html += '<td class="rnum"><input type="text" value="'+$target.find('.rnum').text()+'" readonly></td>';
		html += '<td class="frstSysTp"><input type="text" value="'+$target.find('.frstSysTp').text()+'"></td>';
		html += '<td class="instNm"><input type="text" value="'+$target.find('.instNm').text()+'"></td>';
		html += '<td class="location"><input type="text" value="'+$target.find('.location').text()+'"></td>';
		html += '<td class="mvngDstnc"><input type="text" value="'+$target.find('.mvngDstnc').text()+'"></td>';
		html += '<td class="reqmnTmMm"><input type="text" value="'+$target.find('.reqmnTmMm').text()+'"></td>';
		if($target.find('.frctCanYn').text() == "Y"){
			html += '<td class="frctCanYn"><select style="width:80px" class="select_bd_tit_A" id="frctCanYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="frctCanYn"><select style="width:80px" class="select_bd_tit_A" id="frctCanYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		if($target.find('.adctCanYn').text() == "Y"){
			html += '<td class="adctCanYn"><select style="width:80px" class="select_bd_tit_A" id="adctCanYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="adctCanYn"><select style="width:80px" class="select_bd_tit_A" id="adctCanYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		if($target.find('.burnCanYn').text() == "Y"){
			html += '<td class="burnCanYn"><select style="width:80px" class="select_bd_tit_A" id="burnCanYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="burnCanYn"><select style="width:80px" class="select_bd_tit_A" id="burnCanYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		if($target.find('.chemMtrlCanYn').text() == "Y"){
			html += '<td class="chemMtrlCanYn"><select style="width:80px" class="select_bd_tit_A" id="chemMtrlCanYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="chemMtrlCanYn"><select style="width:80px" class="select_bd_tit_A" id="chemMtrlCanYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		html += '<td class="othrCanYn"><input type="text" value="'+$target.find('.othrCanYn').text()+'"></td>';
		html += '<td class="fonNo"><input type="text" style="width:100px;" value="'+$target.find('.fonNo').text().replace(/-/g, '')+'"></td>';
		html += '<td style="display:none" class="seq"><input type="text" value="'+$target.find('.seq').text()+'" readonly></td>';
		html += '</tr>';

		$target.before(html);
		$target.hide();
		
	}
		$(".new").prop("checked",true);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();
});


	//�߰� ��ư Ŭ���� tr������(ajax�Ȱ���.)
	$("#insertBtn").on("click",function() {
		$("#deleteCol").remove();
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="frstSysTp"><input type="text"></td>';
		html += '<td class="instNm"><input type="text"></td>';
		html += '<td class="location"><input type="text"></td>';
		html += '<td class="mvngDstnc"><input type="text"></td>';
		html += '<td class="reqmnTmMm"><input type="text"></td>';
		html += '<td class="frctCanYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '<td class="adctCanYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '<td class="burnCanYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '<td class="chemMtrlCanYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '<td class="othrCanYn"><input type="text"></td>';
		html += '<td class="fonNo"><input class="w100" type="text"></td>';
		html += '</tr>';
		
		$("tbody").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();
	});

	
	//��ҹ�ư ( �߰�, ������ ���)
	function deleteRow(btn) {
		var row = btn.parentNode.parentNode;
		row.parentNode.removeChild(row);
	};

	//����(�߰�, ������ ������ ��ư) ��ư Ŭ���� ajaxȣ�� �߰��߰�
	$("#saveBtn").on("click", function() {
		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
			arr.push({
				//seqŬ������ input������ �߰�, �������� ���� ����(input������ �߰�)
				seq : $target.find('.seq input').val(),
				rnum : $target.find('.rnum input').val(),
				frstSysTp : $target.find('.frstSysTp input').val(),
				instNm : $target.find('.instNm input').val(),
				location : $target.find('.location input').val(),
				mvngDstnc : $target.find('.mvngDstnc input').val(),
				reqmnTmMm : $target.find('.reqmnTmMm input').val(),
				frctCanYn : $target.find('.frctCanYn select').val(),
				adctCanYn : $target.find('.adctCanYn select').val(),
				burnCanYn : $target.find('.burnCanYn select').val(),
				chemMtrlCanYn : $target.find('.chemMtrlCanYn select').val(),
				othrCanYn : $target.find('.othrCanYn input').val(),
				fonNo : $target.find('.fonNo input').val().replace(/-/g, '')
			});
		}
		
		var param = {
			"data" : JSON.stringify(arr)
		};

		if (confirm("�����Ͻðڽ��ϱ�?")) {
			common.ajaxaa("/page/KW30000/KW30000U1160save.do", param);
			 getPage();
	     }
		
		$("#insertBtn").show();
		$("#deleteBtn").show();
		$("#updateBtn").show();
		$("#printBtn").show();
		$("#saveBtn").hide();
		
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	//�μ��ư
	function printPage(){	 
		 window.print();
		}

	
</script>