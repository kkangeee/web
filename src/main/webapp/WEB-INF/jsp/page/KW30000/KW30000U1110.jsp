<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>

<!-- ### HTML ###-->
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
				<li><a href="/page/KW30000/KW30000U1110.do">�ǰ�����</a></li>
				<li><a href="/page/KW30000/KW30000U1110.do">����������α׷�</a></li>
				<li><a href="/page/KW30000/KW30000U1110.do">�۾�ȯ�����</a></li>
				<li><a href="/page/KW30000/KW30000U1110.do">��������</a></li>
				<li><a href="/page/KW30000/KW30000U1110.do">������ذ���</a></li>
				<li><a href="/page/KW30000/KW30000U1110.do">���ް���</a></li>
				<li><a href="/page/KW30000/KW30000U1110.do">���������׸�</a></li>
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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">����������������</button>
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
						<li class="On"><a href="/page/KW30000/KW30000U1110.do"><span>����������������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1120.do"><span>����������������������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1130.do"><span>���������������ȸ����</span></a></li>
						<li><a href="/page/KW30000/KW30000U1140.do"><span>���������������ȸ������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1150.do"><span>���������������ȸȸ�Ƿ�</span></a></li>
						<li><a href="/page/KW30000/KW30000U1160.do"><span>�����Ƿ�ü��</span></a></li>
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
									<input type="hidden" name="pageNum" value="1"> 
									<select name="searchType">
										<option value="">��ü</option>
										<option value="">����</option>
										<option value="">����</option>
										<option value="">�ۼ���</option>
									</select> <input type="text" name="searchKeyword" value=""
										placeholder="�˻�� �Է��ϼ���.">
									<button type="submit" id="search">�˻�</button>
								</form>
							</span> 
							<span class="board-search company-search">
								<p>����������ȸ</p> 
									<input type="date" name="date" id="sDate" class="w180">
								<p class="ml10">~</p> 
									<input type="date" name="date" id="nDate" class="w180" onkeyup="enterkey()"> 
									<input type="hidden" id="put_sDate"> <input type="hidden" id="put_nDate">
								<button type="submit" id="btnSearch">�˻�</button>
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
								 <c:forEach var="items" items="${codeMngList}">
										<c:out value="${items.cdDtl_1}" /> 
										<input type="text" value="dddddd">
								 </c:forEach> 
						</div>
						<form id="saveForm" enctype="multipart/form-data" method="post">
							<table class="board-list" id="mainTable">
								<colgroup>
									<col style="width: 4%">
									<col style="width: 5%">
									<col style="width: 100px">
									<col style="width: 50px">
									<col style="width: 50px">
									<col style="width: 50px">
									<col style="width: 70px">
									<col style="width: 70px">
									<col style="width: 70px">
									<col style="width: 70px">
									<col style="width: 100px">
									<!-- <col style="width: 60px"> -->
								</colgroup>
								<thead>
									<tr>
										<th style="height: 10px"><input type="checkbox"
											name="agree1" value="Y" id="checkAll"></th>
										<th>NO</th>
										<th>����</th>
										<th>�ٷ��ڸ�</th>
										<th>���</th>
										<th>�μ�</th>
										<th>���ӳ�¥</th>
										<th>��������</th>
										<th>������������</th>
										<th>������ȿ�Ⱓ</th>
										<th>�̼���</th>
										<!-- <th>�̷°���</th> -->
										<input id="filePath" type="hidden"
											value="${resultView1.boardFile}" name="boardFileName"
											class="form-control" readonly />
										<input id="fileName" type="hidden"
											value="${resultView1.boardFileName}" name="boardFileName"
											class="form-control" readonly />
									</tr>
								</thead>
								<tbody id="dataSection" name="tbody">
								</tbody>
							</table>
						</form>
						<!-- ����¡ -->
						<div id="paginationBox" class="paging"></div>
					</section>
				</div>
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
</div>

<!-- ### HTML ###-->

<script>
common.checkAll();

$(document).ready(function() {
	getPage();
})

//��¥ ��ȸ
$("#btnSearch").click(function() {
	let sDate = $("#sDate").val();
	let nDate = $("#nDate").val();
	
	$("#put_sDate").val(sDate);
	$("#put_nDate").val(nDate);
	
	getPage();
});


function makeComobo(list) {
	comboHtml = "<select>"
	for (i in list) {
		comboHtml += "<option value='"+list[i]["value"]+"'>"+list[i]["text"]+"</option>";
	}
	comboHtml += "</select>";
	return comboHtml;
}

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	
	//��¥ ���� �߰�
	var comSearchValA = $("#put_sDate").val();
	var comSearchValB = $("#put_nDate").val();
	
	$.ajax({
				url : "/page/KW30000/KW30000U1110selectList", //���� �ּ� 
				data : {  //���� ó���� �ʿ��� ���ڰ�
					page : page,
					searchType : searchType,
					keyword : search,
					comSearchValA : comSearchValA,
					comSearchValB : comSearchValB
				},
				success : function(res) {
					const list = res['resultList'];
					const codeList = res['codeMngList'];
					const pagination = res['pagination'];
					var totalCnt = "";
					var data = "";
					var block = "";
					console.log("codeList ::: " + codeList);
					//������ ��ȣ ��ġ				
					totalCnt += '��ü <strong class="tc_point mr20">' +pagination['listCnt']+ '</strong>���������� <strong class="tc_point"><span></span>' +pagination['page']+ '/' +pagination['listCnt']+ '</strong>'
					
					if(list.length !== 0){	
					// ���̺��� row�� �����ϴ� �κ�
					for (var i = 0; i < list.length; i++) {
						data += '<tr>';
						data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="roleNm">' + list[i].roleNm + '</td>';
						data += '<td class="nm">' + list[i].nm + '</td>';
						data += '<td class="empeNo">' + list[i].empeNo + '</td>';
						data += '<td class="deptNm">' + list[i].deptNm + '</td>';
						data += '<td class="asgnDd">' + list[i].asgnDd + '</td>';
						data += '<td class="endDd">' + list[i].endDd + '</td>';
						data += '<td class="fnlEduDd">' + list[i].fnlEduDd + '</td>';
						data += '<td class="eduVlidStrDd">' + list[i].eduVlidStrDd+ '</td>';
						 if(!list[i].boardFile == ""){
							data += '<td><a href="'+ list[i].boardFile + '" download>'+ list[i].boardFileName +'</a></td>';
						 } else {
							data += '<td><span>���� ����</span></td>';
						} 
						data += '</tr>';
					}
					} else {
						data += "<tr id='deleteCol'>";
						data += "<td colspan='11'>���� ���ӵ� �ٷ��ڰ� �����ϴ�. ���� ���ӵ� �ٷ��ڸ� ���÷��� ������ �������ּ���. </td>";
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
			common.ajaxaa("/page/KW30000/KW30000U1110delete.do", param);
			 getPage();
	     }
	});

	function updateFile(seq) {
		if ($("#file"+seq).length == 0 ) {
			$("#saveForm").append('<input type="file" name="file'+seq+'" id="file'+seq+'" hidden>');
		}
		$("#file"+seq).click();
	}
	
	//���� ��ư Ŭ���� ajaxȣ��
	$("#updateBtn").on("click", function() {
		if($("input[name=agree1]:checked").length == 0){
			alert("�����Ͻ� �������� �������ּ���");
			return;
		};
		for (i = 0; i < $("input[name=agree1]:checked").length; i++) {
			$target = $("input[name=agree1]:checked").eq(i).closest('tr');
			var html = "";
			html += '<tr>';
			html += '<td><input type="checkbox" name="agree1" value="new" class="new"></td>';
			html += '<td class="rnum"><input type="text" value="'+$target.find('.rnum').text()+'" readonly></td>';
			html += '<td class="roleNm"><input type="text" value="'+$target.find('.roleNm').text()+'"></td>';
			html += '<td class="nm"><input type="text" value="'+$target.find('.nm').text()+'" name="nm"></td>';
			html += '<td class="empeNo"><input type="text" value="'+$target.find('.empeNo').text()+'" name="empeNo"></td>';
			html += '<td class="deptNm"><input type="text" value="'+$target.find('.deptNm').text()+'"></td>';
			html += '<td class="asgnDd"><input type="date" value="'+$target.find('.asgnDd').text()+'"></td>';
			html += '<td class="endDd"><input type="date" value="'+$target.find('.endDd').text()+'"></td>';
			html += '<td class="fnlEduDd"><input type="date" value="'+$target.find('.fnlEduDd').text()+'"></td>';
			html += '<td class="eduVlidStrDd"><input type="date" value="'+$target.find('.eduVlidStrDd').text()+'"></td>';  
			if($target.find('.boardFile').text() != "null"){ 
				html += '<td><button type="button"  style="background-color : #f29886" onclick="updateFile(\''+$target.find('.seq').text()+'\')" class="btn_His2">���� ����</button></td>';
				html += '<td style="display:none"><input type="file" id="file\''+$target.find('.seq').text()+'\'" name="file\''+$target.find('.seq').text()+'\'"></td>';
			} else {   
				html += '<td><input class="input" type="file" name ="file"></td>';
			} 
			
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
		html += '<td class="roleNm"><input type="text"></td>';
		html += '<td class="nm"><input type="text"></td>';
		html += '<td class="empeNo"><input type="text"></td>';
		html += '<td class="deptNm"><input type="text"></td>';
		html += '<td class="asgnDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="endDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="fnlEduDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="eduVlidStrDd"><input type="date" name="date" class="w140"></td>';
		html += '<td><input type="file" name ="file" class="boardFile"></td>';
		//html += '<td></td>';
		html += '</tr>';
		
		$("tbody").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();

	});
	
	//����(�߰�, ������ ������ ��ư) ��ư Ŭ���� ajaxȣ�� �߰��߰�
	$("#saveBtn").on("click", function() {
		var arr = [];
			for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
				$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
				arr.push({
					//seq���°� insert
					seq : $target.find('.seq input').val(),
					rnum : $target.find('.rnum input').val(),
					roleNm : $target.find('.roleNm input').val(),
					nm : $target.find('.nm input').val(),
					empeNo : $target.find('.empeNo input').val(),
					deptNm : $target.find('.deptNm input').val(),
					asgnDd : $target.find('.asgnDd input').val(),
					endDd : $target.find('.endDd input').val(),
					fnlEduDd : $target.find('.fnlEduDd input').val(),
					eduVlidStrDd : $target.find('.eduVlidStrDd input').val()
				});
			}
			var param = {
				"data" : JSON.stringify(arr)
			};

			$("#insertBtn").show();
			$("#deleteBtn").show();
			$("#updateBtn").show();
			$("#printBtn").show();
			$("#saveBtn").hide();
		
		if (confirm("�����Ͻðڽ��ϱ�?")) {
			common.ajaxFileSend("/page/KW30000/KW30000U1110save.do", param, null, "saveForm");
			//common.ajaxaa("/page/KW30000/KW30000U1110save.do", param);
			 getPage();
	     }
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	$("#aa").on("click",function() {
		/* document.getElementById("aa").select();
		document.selection.clear();	 */
		alert(document.getElementById("aa").select());
	});
		
	//�μ��ư
	function printPage(){	 
		 window.print();
		}
	
	
	
	
</script>