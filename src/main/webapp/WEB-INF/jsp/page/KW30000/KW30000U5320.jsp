<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- #location
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
						�������� > ������ȹ > <span class="subtit">�ǽ� ���</span>
					</h2>
				</div>

				<!-- �� �����Է� ���� -->
				<div>
					<ul class="tab_base N2">
						<li><a href="/page/KW30000/KW30000U5310.do" target="blank"><span>������ȸ</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U5320.do"><span>������
									���</span></a></li>
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
							<!-- �� ��ü�˻� ���� -->

							<!-- �� ��ư ���� -->
					        <div class="btn_top">            
						            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>�߰�</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>����</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>����</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>����</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>�μ�</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>���</span></a>
							</div>
							<!-- �� ��ư ���� -->
						</div>

						<!-- ���̺�01 -->
						<span class="board_Ttxt">�⺻�� ���� ���� ���-���� ���� �� �ش� ���� �Ҽ� �ٷ���
							��� ���� / �����ٷ��� ����, ��� ��� �߰� / ���(����) ���ε� ��� </span>
						<!-- �׸��� -->

						<table class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
								<!--  <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: ">
                              <col style="width: 280px">
                              <col style="width: auto"> -->
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>
									<select class="select_bd_tit" name="searchType">
											<option value="">�������ü </option>
											<option value="">����1</option>
											<option value="">�ȼ�����2</option>
									</select>
									</th>
									<th>
									<select class="select_bd_tit" name="searchType">
											<option value="">���� </option>
											<option value="">����</option>
											<option value="">����</option>
									</select>
									</th>
									<th>���</th>
									<th>����</th>
									<th>�̼�Ȯ��</th>
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
	
	//�μ��ư
	function printPage() {
		window.print();
	}
	
	//������ ����Ʈ ��������
	function getPage(page) {
		var searchType = $("#searchType").val();
		var search = $("#searchInput").val();
		$
				.ajax({
					url : "/page/KW30000/KW30000U5320selectList", //���� �ּ� 
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
						totalCnt += '��ü <strong class="tc_point mr20">'+ pagination['listCnt']+ '</strong>���������� <strong class="tc_point"><span></span>'+ pagination['page'] + '/'+ pagination['listCnt'] + '</strong>'

						// ���̺��� row�� �����ϴ� �κ�
						for (var i = 0; i < list.length; i++) {
							data += '<tr>';
							data += '<td style="text-align:center;"><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
							data += '<td style="display:none" class="seq">'+ list[i].seq + '</td>';
							data += '<td style="text-align:center;" class="rNum">' + list[i].rNum+ '</td>';
							data += '<td style="text-align:center;" class="wrkPlcMgtUniqNm">' + list[i].wrkPlcMgtUniqNm+ '</td>';
							data += '<td style="text-align:center;" class="prcsNm">' + list[i].prcsNm+ '</td>';
							data += '<td style="text-align:center;" class="tgtPplEmpeNo">' + list[i].tgtPplEmpeNo+ '</td>';
							data += '<td style="text-align:center;" class="tgtPplNm">'+ list[i].tgtPplNm + '</td>';
							data += '<td id="bzRgstNo" style="display:none" class="bzRgstNo">'+ list[i].bzRgstNo + '</td>';
							data += '<td><button type="button" OnClick="newPopClick();" class="btn_His2">�̼�Ȯ��</button></td>';
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
			common.ajaxaa("/page/KW30000/KW30000U5320delete.do", param);
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
			html += '<td class="rNum"><input type="text" value="'+$target.find('.rNum').text()+'" disabled></td>';
			html += '<td class="wrkPlcMgtUniqNm" ><input style="text-align:center;" type="text" value="'+$target.find('.wrkPlcMgtUniqNm').text()+'" disabled></td>';
			html += '<td class="prcsNm"><input style="text-align:center;" type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
			html += '<td class="tgtPplEmpeNo"><input style="text-align:center;" type="text" value="'+$target.find('.tgtPplEmpeNo').text()+'"></td>';
			html += '<td class="tgtPplNm"><input style="text-align:center;" type="text" value="'+$target.find('.tgtPplNm').text()+'"></td>';
			html += '<td style="display:none" class="seq"><input style="text-align:center;" type="text" value="'+$target.find('.seq').text()+'" readonly></td>';
			html += '<td class="fileUp"><input type="file" name="uploadFile" multiple="multiple"></td>';
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
			var html = "";
			html += '<tr>';
			html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
			html += '<td class="rNum"></td>';
			html += '<td class="wrkPlcMgtUniqNm"></td>';
			html += '<td class="prcsNm"><input  style="text-align:center;" type="text"></td>';
			html += '<td class="tgtPplEmpeNo"><input  style="text-align:center;" type="text"></td>';
			html += '<td class="tgtPplNm"><input  style="text-align:center;" type="text"></td>';
			html += '<td class="fileUp"><input type="file" name="uploadFile" multiple="multiple"></td>';
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
					prcsNm : $target.find('.prcsNm input').val(),
					tgtPplEmpeNo : $target.find('.tgtPplEmpeNo input').val(),
					tgtPplNm : $target.find('.tgtPplNm input').val(),
					fileUp : $target.find('.fileUp input').val(),
				});
			}
			
			var param = {
				"data" : JSON.stringify(arr)
			};
			
			console.log(param);
			$("#insertBtn").show();
			$("#deleteBtn").show();
			$("#updateBtn").show();
			$("#printBtn").show();
			$("#saveBtn").hide();
			
			if (confirm("�����Ͻðڽ��ϱ�?")) {
				common.ajaxaa("/page/KW30000/KW30000U5320save.do", param);
				 getPage();
		     }
		});
		
		$("#cancelBtn").on('click',function() {
			getPage();
		});
	
</script>
