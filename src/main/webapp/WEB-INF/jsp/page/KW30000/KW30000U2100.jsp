<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
				<li><a href="/page/KW30000/KW30000U2100.do">�ǰ�����</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">������ȹ����</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U2100.do">�ǰ��������ǥ����</a></li>
				<li><a href="/page/KW30000/KW30000U2200.do">�ǰ�������Ȳ</a></li>
				<li><a href="/page/KW30000/KW30000U2310.do">�ǰ�����������</a></li>
				<li><a href="/page/KW30000/KW30000U2400.do">�ٷ��ڰǰ����</a></li>
				<li><a href="/page/KW30000/KW30000U2510.do">�����ǰ���</a></li>
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
						�ǰ����� > <span class="subtit">�ǰ��������ǥ ����</span>
					</h2>
				</div>

				<!-- �� �����Է� ���� -->
				<div class="km500">
					<span> �ܼ��ݺ��۾� �Ǵ� ��ü�� ������ �δ��� �ִ� �۾��� ���� �ǰ�����(����������ǹ� ��39��
						������ġ ��1����5ȣ)<br> ���ǰ������� ���� ��(����������ǹ� ����� ��22��)<br>
						�ٰ�ݰ�δ��۾����� ���� �ǰ������� ����(����������Ǳ��ؿ� ���� ��Ģ ��12��)
					</span>
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
								<a onclick="window.open('/images/KW50060U230.pdf')"
									class="btn_round btn_down"><span>�Ϲݰ������ ���� ���</span></a>
							</div>
							<div class="btn_top">
								<a href="javascript:void(0)" class="btn_round btn_plus btn_Tw"
									id="insertBtn"><span>�߰�</span></a> <a href="javascript:void(0)"
									class="btn_round btn_modi btn_Tw" id="updateBtn"><span>����</span></a>
								<a href="javascript:void(0)" class="btn_round btn_del btn_Tw"
									id="deleteBtn"><span>����</span></a> <a href="javascript:void(0)"
									class="btn_round btn_save btn_Tw" id="saveBtn"
									style="display: none;"><span>����</span></a> <a
									href="javascript:void(0)"
									class="btn_round btn_prt btn_Tw print-button"
									onclick="printPage()" id="printBtn"><span>�μ�</span></a> <a
									href="javascript:void(0)" class="btn_round btn_prt btn_Tw"
									id="cancelBtn"><span>���</span></a>
							</div>
						</div>
						<!-- ���̺�01 -->
						<form id="saveForm" enctype="multipart/form-data" method="post">
							<table class="board-list">
								<colgroup>
									<col style="width: 4%">
									<col style="width: 5%">
									<col style="width: 100px">
									<col style="width: 120px">
									<col style="width: 120px">
									<col style="width: 300px">
									<col style="width: 100px">
									<col style="width: 100px">
								</colgroup>
								<thead>
									<tr>
										<th style="height: 10px"><input type="checkbox"
											name="agree1" value="Y" id="checkAll"></th>
										<th>NO</th>
										<th>����</th>
										<th>������������</th>
										<th>������������</th>
										<th>���</th>
										<th>������ε�</th>
										<th>�������</th>
									</tr>
								</thead>
								<tbody id="dataSection" name="tbody"></tbody>
							</table>
						</form>
						<!-- //���̺�01 -->
						<div id="paginationBox" class="paging"></div>
						<div class="km500">
							<span> <span class="km500tit">[ �ǰ����� �ǽñٰ� ]</span><br>
								<b>�Ϲݰǰ�����(����������ǹ� ��129��)</b> <br> - ��ñٷ����� �ǰ������� ���Ͽ� �ֱ�������
								�ǽ��ϴ� �ǰ�����<br> - �繫���ٷ��� 2�⿡ 1ȸ, �� �� �ٷ��� 1�⿡ 1ȸ<br>
								-(���·�) �ǰ����� ��� �ٷ��� 1��� 10����(1��), 20����(2��), 30����(3���̻�) <br>
							<br> <b>Ư���ǰ�����(����������ǹ� ��130��)</b> <br> - <b
								class="tc_point">�� �����Ģ ��ǥ22</b> ���� ���� �������ڿ� ����Ǵ� �ٷ����� �ǰ������� ���Ͽ�
								�ǽ��ϴ� �ǰ�����<br> - (���·�)�ǰ����� ��� �ٷ��� 1��� 10����(1��), 20����(2��),
								30����(3���̻�)<br>
							<br>

								<p class="point_box">�� Ư���ǰ����� ��� ��������(����������ǹ� �����Ģ ��ǥ22)</p>
								<br> 1. ȭ���� ���ڰ�. ����ȭ�չ�(109��)<br>
								<p>
									1) ���ָ�(Gasoline; 8006-61-9)<br> <span class="gtext">�����ֱ�
										: ��ġ��/Ư�� : 6����/12����<br> �˻��׸� : ����(GOT, GPT, r-GPT)/�Һ��˻�
									</span><br> 2) �۷�Ÿ���˵�����(Gultaraldehyde; 111-30-8)<br> 3)
									��-����ƿ�ƹ�(��-Naphthylamine; 91-59-8)<br> 4)
									��Ʈ�α۸�����(Nitroglycerin; 55-63-0)<br> 5) ��Ʈ�θ�ź(Nitromethane;
									75-52-5)<br> 6) ��Ʈ�κ���(Nitrobenzene; 98-95-3)<br> 7)
									p-��Ʈ�ξƴҸ�(p-Nitroaniline; 100-01-6)<br> 8)
									p-��Ʈ��Ŭ�ηκ���(p-Nitrochlorobenzene; 100-00-5)<br> 9)
									���Ʈ����翣(Dinitrotoluene; 25321-14-6 ��)<br> 10)
									N,N-���ƿ�ƴҸ�(N,N-Dimethylaniline; 121-69-7)<br>
								</p>
							</span>
						</div>
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


	<!-- ### script ###-->
	<script>
common.checkAll();

$(document).ready(function() {
	getPage();
})

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U2100selectList", //���� �ּ� 
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
						data += '<td class="examYear">' + list[i].examYear + '</td>';
						data += '<td class="examStrDd">' + list[i].examStrDd + '</td>';
						data += '<td class="examEndDd">' + list[i].examEndDd + '</td>';
						data += '<td class="rsltTbNm">' + list[i].rsltTbNm + '</td>';
						if(!list[i].boardFile == ""){
							data += '<td><a href="'+ list[i].boardFile + '" download>'+ list[i].boardFileName +'</a></td>';
						 } else {
							data += '<td><span>���� ����</span></td>';
						} 
						data += '<td><button>�������</button></td>';
						data += '</tr>';
					}
					} else {
						data += "<tr>";
						data += "<td colspan='6'>��ϵ� �Խñ��� �����ϴ�.</td>";
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
		common.ajaxaa("/page/KW30000/KW30000U2100delete.do", param);
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
		html += '<td class="examYear"><input class="w90" type="text" value="'+$target.find('.examYear').text()+'"></td>';
		html += '<td class="examStrDd"><input class="w120" type="date" value="'+$target.find('.examStrDd').text()+'"></td>';
		html += '<td class="examEndDd"><input class="w120" type="date" value="'+$target.find('.examEndDd').text()+'"></td>';
		html += '<td class="rsltTbNm"><input type="text" value="'+$target.find('.rsltTbNm').text()+'"></td>';
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

	function updateFile(seq) {
		if ($("#file"+seq).length == 0 ) {
			$("#saveForm").append('<input type="file" name="file'+seq+'" id="file'+seq+'" hidden>');
		}
		$("#file"+seq).click();
	}

	//�߰� ��ư Ŭ���� tr������(ajax�Ȱ���.)
	$("#insertBtn").on("click",function() {
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="examYear"><input type="text" class="w90"></td>';
		html += '<td class="examStrDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="examEndDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="rsltTbNm"><input type="text"></td>';
		html += '<td><input type="file" name ="file" class="boardFile"></td>';
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
				examYear : $target.find('.examYear input').val(),
				examStrDd : $target.find('.examStrDd input').val(),
				examEndDd : $target.find('.examEndDd input').val(),
				rsltTbNm : $target.find('.rsltTbNm input').val()
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
			common.ajaxFileSend("/page/KW30000/KW30000U2100save.do", param, null, "saveForm");
			//common.ajaxaa("/page/KW30000/KW30000U1110save.do", param);
			 getPage();
	     }
		
		
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});

	//�μ��ư
	function printPage(){	 
		 window.print();
		}
	
</script>