<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();" class="">���ǰ���</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW30000/KW30000U1110.do">���ǰ���</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">��������</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U5110.do">�������ǰ���</a></li>
				<li><a href="/page/KW30000/KW30000U5110.do">�ǰ�����</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">�������α׷�����</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">�۾�ȯ�����</a></li>
				<li><a href="/page/KW30000/KW30000U5200.do">��������</a></li>
				<li><a href="/page/KW30000/KW30000U5310.do">������ذ���</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">�����ڷ� �ٿ�</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">���ް���</a></li>
				<li><a href="/page/KW30000/KW30000U5400.do">�����ڷ� �ٿ�</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">�ܺα�������</button>
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
					<h2 class="con_sectionTit">�������� > <span class="subtit">�ܺ� ���� ����</span></h2>
				</div>

				<!-- �� �����Է� ���� -->

				<div class="mt20">
					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">
							<!-- �� ����ڸ� ����ڵ�Ϲ�ȣ �˻� ���� -->

							<!-- �� ��ü�˻� ���� -->
							<span class="board-search">
								<form name="form" id="form" action="?"
									onsubmit="return page.search(this)">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchType">
										<option value="">��ü</option>
										<option value="">����</option>
										<option value="">�����Ⱓ</option>
									</select> <input type="text" name="searchKeyword" value=""
										placeholder="�˻�� �Է��ϼ���.">
									<button type="submit" id="search">�˻�</button>
								</form>
							</span>
							<!-- �� ��ü�˻� ���� -->



							<!-- �� ��ü�˻� ���� -->

							<!-- �� ��ư ���� -->
					        <div class="btn_top">            
						            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>�߰�</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>����</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>����</span></a>
						            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>����</span></a>
									<a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>���</span></a>
							</div>
							<!-- �� ��ư ���� -->
						</div>
						

						<!-- ���̺�01 -->
						<!-- �׸��� -->
<!-- 						<span class="board_Ttxt">�ٷ��ڿ� �ܺα��� ��ϰ� ���� / ���Ǵ���ڰ� �����ϸ� ���κ� -->
<!-- 							�̼���Ȳ�� �ڵ� ��� / ��ü �ܺ� ���� �� ��� �о�ֱ� ��� �ʿ� </span> -->
						<!--page totalCnt -->
						<div>
							<p id="totalCnt" class="allNB"></p>
						</div>
						<!--page totalCnt -->	
						<table class="board-list">
							<colgroup>
								<col style="width: 4%">
								<col style="width: 5%">
								<col style="width: 50px">
								<col style="width: 60px">
								<col style="width: 70px">
								<col style="width: 60px">
								<col style="width: 60px">
								<col style="width: 80px">
								<col style="width: 110px">
								<col style="width: 70px">
								<col style="width: 70px">
							</colgroup>
							<thead>
								<tr>
									<th><input type="checkbox" name="agree1" value="Y"></th>
									<th>NO</th>
									<th>����</th>
									<th>����</th>
									<th>���</th>
									<th>�̸�</th>
									<th>�������</th>
									<th>������</th>
									<th>�����Ⱓ</th>
									<th>�ܺα������</th>
									<th>��������</th>
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
	
	$.ajax({
				url : "/page/KW30000/KW30000U5200selectList", //���� �ּ� 
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
					//������ ��ȣ ��ġ
					
					// ���̺��� row�� �����ϴ� �κ�
					for (var i = 0; i < list.length; i++) {
						data += '<tr>';
						data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq + '"></td>';
						data += '<td style="display:none" class="seq">'+ list[i].seq + '</td>';
						data += '<td class="rNum">' + list[i].rNum+ '</td>';
						data += '<td style="display:none" class="outEduYn">' + list[i].outEduYn + '</td>';
						if(list[i].outEduYn == 'Y'){
							data += '<td class="cmpltnYn"><button data-csv="'+ 1 +'" data-tgtPplEmpeNo="'+ list[i].tgtPplEmpeNo +'" data-bzRgstNo="'+ list[i].bzRgstNo +'" data-seq="'+ list[i].seq + '" type="button" id="search" onClick="yn_clickFunc(this);" class="btn_His2">���οϷ�</button></td>';
					
						} else {
							data += '<td class="cmpltnYn"><button  data-csv="'+ 2 +'" data-tgtPplEmpeNo="'+ list[i].tgtPplEmpeNo +'" data-bzRgstNo="'+ list[i].bzRgstNo +'" data-seq="'+ list[i].seq + '" style="background:#f29886" type="button" id="search" onClick="yn_clickFunc(this);" class="btn_His2">�̽���</button></td>';
						}
						data += '<td class="prcsNm">' + list[i].prcsNm+ '</td>';
						data += '<td class="tgtPplEmpeNo">' + list[i].tgtPplEmpeNo+ '</td>';
						data += '<td class="tgtPplNm">' + list[i].tgtPplNm+ '</td>';
						data += '<td class="eduMth">'+ list[i].eduMth + '</td>';
						data += '<td class="eduSbjtNm">'+ list[i].eduSbjtNm + '</td>';
						data += '<td class="eduImplStrDd">'+ list[i].eduImplStrDd + '</td>';
						data += '<td class="eduInstNm">'+ list[i].eduInstNm + '</td>';
						data += '<td style="display:none" class="atchFileYn">'+ list[i].atchFileYn + '</td>';
						if(list[i].atchFileYn == 'Y'){
							data += '<td class="cmpltnYn"><button style="background:#d3d3d3" type="button" id="search" OnClick="sprtnDcmntPop();" class="btn_His2">�̼���Ȯ��</button></td>';
						} else {
							data += '<td><span></span></td>';
						}
						data += '<td id="bzRgstNo" style="display:none" class="bzRgstNo">'+ list[i].bzRgstNo + '</td>';
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
		common.ajaxaa("/page/KW30000/KW30000U5340delete.do", param);
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
		html += '<tr style="width:40px;">';
		html += '<td><input style="width:40px;" type="checkbox" name="agree1" value="new" class="new"></td>';
		html += '<td class="rNum"><input style="width:50px;margin-right:-15px;" type="text" value="'+$target.find('.rNum').text()+'" disabled></td>';
		html += '<td style="width:50px;" class="outEduYn"><input style="width:50px;margin-left:2px;" type="text" value="'+$target.find('.outEduYn').text()+'" disabled></td>';
		html += '<td class="prcsNm"><input style="width:110px;" type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
		html += '<td class="tgtPplEmpeNo"><input style="width:130px;" type="text" value="'+$target.find('.tgtPplEmpeNo').text()+'"></td>';
		html += '<td class="tgtPplNm"><input style="width:112px;" type="text" value="'+$target.find('.tgtPplNm').text()+'"></td>';
		html += '<td class="eduMth"><input style="width:110px;" type="text" value="'+$target.find('.eduMth').text()+'"></td>';
		html += '<td class="eduSbjtNm"><input style="width:150px;" type="text" value="'+$target.find('.eduSbjtNm').text()+'"></td>';
		html += '<td class="eduImplStrDd"><input style="width:220px;" type="text" value="'+$target.find('.eduImplStrDd').text()+'"></td>';
		html += '<td class="eduInstNm"><input style="width:130px;margin-right:-6px;" type="text" value="'+$target.find('.eduInstNm').text()+'"></td>';
		html += '<td class="cmpltnYn"><input style="margin-left:15px;" type="file" name="uploadFile" multiple="multiple" value=""></td>';
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
		html += '<td style="width:60px;padding-left:15px;" class="outEduYn" disabled></td>';
		html += '<td class="prcsNm"><input style="width:110px;" type="text"></td>';
		html += '<td class="tgtPplEmpeNo"><input style="width:130px;" type="text"></td>';
		html += '<td class="tgtPplNm"><input style="width:112px;" type="text"></td>';
		html += '<td class="eduMth"><input style="width:110px;" type="text"></td>';
		html += '<td class="eduSbjtNm"><input style="width:150px;" type="text"></td>';
		html += '<td class="eduImplStrDd"><input style="width:220px;" type="text"></td>';
		html += '<td class="eduInstNm"><input style="width:105px;margin-right:-6px;" type="text"></td>';
		html += '<td class="cmpltnYn"><input type="file" name="uploadFile" multiple="multiple"></td>';
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
				cmpltnYn : $target.find('.cmpltnYn input').val(),
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
			common.ajaxaa("/page/KW30000/KW30000U5340save.do", param);
			 getPage();
	     }
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});

	//���οϷ� 
	function yn_clickFunc(obj){
		 if (confirm("�ܺα��� ���� ���¸� ���� �Ͻðڽ��ϱ�?")) {
			 	let tgtPplEmpeNo = obj.getAttribute("data-tgtPplEmpeNo");
				let bzRgstNo = obj.getAttribute("data-bzRgstNo");
				let seq = obj.getAttribute("data-seq");
				let getcsv = obj.getAttribute("data-csv");
				let csv = parseInt(getcsv);
				var param = {
						tgtPplEmpeNo : tgtPplEmpeNo,
						bzRgstNo : bzRgstNo,
						seq : seq,
						csv : csv
				}
				$.ajax({					
					url : "${pageContext.request.contextPath}/page/KW30000/KW30000U5200btnYn",
					contentType : "application/json",
					data : JSON.stringify(param),
					type : "POST",
					async: false,
					success : function(res) {		
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
				getPage();
		     }
	}
	
	function sprtnDcmntPop(){
		window.open('/page/KW30000/KW30000U5200pop.do', '_blank',
		'location=no, status=no, width=' + popupWidth + ',height=' + popupHeight + ',left=' + popupX + ', top=' + popupY);	
	}
	
</script>
