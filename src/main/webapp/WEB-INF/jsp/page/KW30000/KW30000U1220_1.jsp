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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">������ȹ����</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U1210.do">�򰡺о�</a></li>
				<li><a href="/page/KW30000/KW30000U1220.do">ȸ�Ǻо�</a></li>
				<li><a href="/page/KW30000/KW30000U1230.do">�����о�</a></li>
				<li><a href="/page/KW30000/KW30000U1240.do">�ǰ������о�</a></li>
				<li><a href="/page/KW30000/KW30000U1250.do">ȯ������о�</a></li>
				<li><a href="/page/KW30000/KW30000U1260.do">����������α׷�</a></li>
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
            <h2 class="con_sectionTit">�������ǰ��� > <span class="subtit">������ȹ����</span></h2>            
        </div>
        
        	<!-- �� �����Է� ���� -->
				<div class="tab_wrap mt20">
					<ul class="tab_base N6">
						<li><a href="/page/KW30000/KW30000U1210.do"><span>�򰡺о�</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1220.do"><span>ȸ�Ǻо�</span></a></li>
						<li><a href="/page/KW30000/KW30000U1230.do"><span>�����о�</span></a></li>
						<li><a href="/page/KW30000/KW30000U1240.do"><span>�ǰ������о�</span></a></li>
						<li><a href="/page/KW30000/KW30000U1250.do"><span>ȯ������о�</span></a></li>
						<li><a href="/page/KW30000/KW30000U1260.do"><span>����������α׷�</span></a></li>
					</ul>
					<ul class="tab_base tab_base_sub N3">
						<li><a href="/page/KW30000/KW30000U1220.do"><span>���������������ȸ</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1220_1.do"><span>���� �� ���ǿ� ���� ����ü</span></a></li>
						<li><a href="/page/KW30000/KW30000U1220_2.do"><span>�������ü</span></a></li>
					</ul>
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
            <a onclick="window.open('/images/KW50060U230.pdf')" class="btn_round btn_down"><span>�̸� ����</span></a>           
      </div>
        <div class="btn_top">            
            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>�߰�</span></a>
            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>����</span></a>
            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>����</span></a>
            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>����</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw print-button" onclick="printPage()" id="printBtn"><span>�μ�</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>���</span></a>
		</div>
    </div>
    <!-- ���̺�01 -->
    <span class="board-list_Stit">���� �� ���ǿ� ���� ����ü</span>
    <table class="board-list">
      <colgroup>
        	<col style="width: 4%">
			<col style="width: 5%">
	        <col style="width: 300px">
	        <col style="width: 150px">
	        <col style="width: 300px">
	        <col style="width: 200px">
      </colgroup>
      <thead>
        <tr>
          <th><input type="checkbox" name="agree1" value="Y" id="checkAll"></th>
          <th>NO</th>
          <th>����</th>
          <th>�ñ�</th>
          <th>ȸ�Ǳ���</th>
          <th>��ȹ</th>
        </tr>
      </thead>
      <tbody id="dataSection" name="tbody">
	  </tbody>
    </table>
    
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
    <a class="btn-top" href="#wrap" onclick="$(window).scrollTop(0); return false;">����</a>
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
				url : "/page/KW30000/KW30000U1220_1selectList", //���� �ּ� 
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
						data += '<td class="tp">' + list[i].tp + '</td>';
						data += '<td class="prid">' + list[i].prid + '</td>';
						data += '<td class="ttl">' + list[i].ttl + '</td>';
						data += '<td class="plnDtl">' + list[i].plnDtl + '</td>';
						data += '</tr>';
					}
					} else {
						data += "<tr id='deleteCol'>";
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
		common.ajaxaa("/page/KW30000/KW30000U1220_1delete.do", param);
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
		if($target.find('.tp').text() == "����"){
			html += '<td class="tp"><select style="width:80px" id="tp" class="select_bd_tit_A"><option value = "����" selected>����</option><option value = "�ӽ�">�ӽ�</option></select></td>';
		} else if($target.find('.tp').text() == "�ӽ�") {
			html += '<td class="tp"><select style="width:80px" id="tp" class="select_bd_tit_A"><option value = "����">����</option><option value = "�ӽ�" selected>�ӽä�</option></select></td>';
		}
		html += '<td class="prid"><input type="text" value="'+$target.find('.prid').text()+'"></td>';
		html += '<td class="ttl"><input type="text" value="'+$target.find('.ttl').text()+'"></td>';
		html += '<td class="plnDtl"><input type="text" value="'+$target.find('.plnDtl').text()+'"></td>';
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
		html += '<td class="tp"><select style="width:80px" class="select_bd_tit_A"><option value="����">����</option><option value ="�ӽ�">�ӽ�</option></select></td>';
		html += '<td class="prid"><input type="text"></td>';
		html += '<td class="ttl"><input type="text"></td>';
		html += '<td class="plnDtl"><input type="text"></td>';
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
				//seqŬ������ input������ �߰�, �������� ���� ����(input������ �߰�)
				seq : $target.find('.seq input').val(),
				rnum : $target.find('.rnum input').val(),
				tp : $target.find('.tp select').val(),
				prid : $target.find('.prid input').val(),
				ttl : $target.find('.ttl input').val(),
				plnDtl : $target.find('.plnDtl input').val()
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
			common.ajaxaa("/page/KW30000/KW30000U1220_1save.do", param);
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