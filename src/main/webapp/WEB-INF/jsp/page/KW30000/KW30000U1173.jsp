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
            <h2 class="con_sectionTit">�������ǰ��� > <span class="subtit">�������ǰ���ü��</span></h2>            
        </div>
        
        <!-- �� �����Է� ���� -->
				<div class="tab_wrap mt20">
					<ul class="tab_base N7">
						<li><a href="/page/KW30000/KW30000U1110.do"><span>����������������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1120.do"><span>����������������������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1130.do"><span>���������������ȸ����</span></a></li>
						<li><a href="/page/KW30000/KW30000U1140.do"><span>���������������ȸ������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1150.do"><span>���������������ȸȸ�Ƿ�</span></a></li>
						<li><a href="/page/KW30000/KW30000U1160.do"><span>�����Ƿ�ü��</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1171.do"><span>�ǰ������ǰ���</span></a></li>
					</ul>
					<ul class="tab_base tab_base_sub N5">
						<li><a href="/page/KW30000/KW30000U1171.do"><span>�����Ǿ�ǰ��������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1172.do"><span>�����Ǿ�ǰ���� ��Ȳ</span></a></li>
						<li class="On"><a href="/page/KW30000/KW30000U1173.do"><span>�ڵ������������</span></a></li>
						<li><a href="/page/KW30000/KW30000U1174.do"><span>�ǰ������ǹ湮�� ����</span></a></li>
						<li><a href="/page/KW30000/KW30000U1175.do"><span>�����Ƿڹ� �̼� ��Ȳ</span></a></li>
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
        <col style="width: 160px">
        <col style="width: 100px">
        <col style="width: 100px">
        <col style="width: 100px">
        <col style="width: 180px">
      </colgroup>
      <thead>
        <tr>
          <th><input type="checkbox" name="agree1" value="Y" id="checkAll"></th>
          <th>NO</th>
          <th>��������</th>
          <th>������</th>
          <th>������ġ</th>
          <th>����ǥ</th>
          <th>�̻󿩺�</th>
        </tr>
      </thead>
      <tbody id="dataSection" name="tbody"></tbody>
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
				url : "/page/KW30000/KW30000U1173selectList", //���� �ּ� 
				//async : false,
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
						data += '<td style="display:none" class="bzRgstNo">' + list[i].bzRgstNo + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="nsptDd">' + list[i].nsptDd + '</td>';
						data += '<td class="nsptPrsnNm">' + list[i].nsptPrsnNm + '</td>';
						data += '<td class="nsptPos">' + list[i].nsptPos + '</td>';
						data += '<td><button type="button" id="searchHisList" data-seq="' + list[i].seq + '" data-bzRgstNo="' + list[i].bzRgstNo + '" data-nsptDd="' + list[i].nsptDd + '" data-nsptPrsnNm="' + list[i].nsptPrsnNm + '" data-nsptPos="' + list[i].nsptPos + '" OnClick="chkPopClick(this);" class="btn_His2">�ǽ�</button></td>';
						data += '<td class="abnmYn">' + list[i].abnmYn + '</td>';  
						data += '</tr>';
					}
					} else {
						data += "<tr id='deleteCol'>";
						data += "<td colspan='7'>��ϵ� �Խñ��� �����ϴ�.</td>";
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
				},
				/* error : function(XMLHttpRequest, textStatus, errorThrown){ // �񵿱� ����� �����Ұ�� error �ݹ����� ���ɴϴ�.
					location.reload(true)
                } */
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
		common.ajaxaa("/page/KW30000/KW30000U1173delete.do", param);
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
		html += '<td class="nsptDd"><input type="date" value="'+$target.find('.nsptDd').text()+'"></td>';
		html += '<td class="nsptPrsnNm"><input type="text" value="'+$target.find('.nsptPrsnNm').text()+'"></td>';
		html += '<td class="nsptPos"><input type="text" value="'+$target.find('.nsptPos').text()+'"></td>';
		html += '<td><button type="submit" id="search" class="btn_His2">��������</button></td>';
		if($target.find('.abnmYn').text() == "Y"){
			html += '<td class="abnmYn"><select style="width:80px" class="select_bd_tit_A" id="abnmYn"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="abnmYn"><select style="width:80px" class="select_bd_tit_A" id="abnmYn"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
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
		html += '<td class="nsptDd"><input type="date" name="date" class="w140"></td>';
		html += '<td class="nsptPrsnNm"><input type="text"></td>';
		html += '<td class="nsptPos"><input type="text"></td>';
		html += '<td></td>';
		html += '<td class="abnmYn"><select style="width:80px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
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
				nsptDd : $target.find('.nsptDd input').val(),
				nsptPrsnNm : $target.find('.nsptPrsnNm input').val(),
				nsptPos : $target.find('.nsptPos input').val(),
				abnmYn : $target.find('.abnmYn select').val(),
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
			common.ajaxaa("/page/KW30000/KW30000U1173save.do", param);
			 getPage();
	     }
	});

	
	$("#cancelBtn").on('click',function() {
		getPage();
	});
	
	function chkPopClick(obj) {
		//�˾� ������ ����
	    var popupWidth = 600;
	    var popupHeight = 800;

	    var popupX = Math.ceil(( window.screen.width - popupWidth )/2);
	    var popupY = Math.ceil(( window.screen.height - popupHeight )/2); 
	
		//open�� ��â�� ���� ����
		var winObj = "";
		var seq = obj.getAttribute("data-seq");
		var nsptDd = obj.getAttribute("data-nsptDd");
		var nsptPrsnNm = obj.getAttribute("data-nsptPrsnNm");
		var nsptPos = obj.getAttribute("data-nsptPos");
		var bzRgstNo = obj.getAttribute("data-bzRgstNo");
		
		var pop_settings ="'location=no, status=no, width= 1000px, height= 500px ,left=' + popupX+ ', top=' + popupY'";
		winObj = window.open("/page/KW30000/KW30000U1173chkPop.do", "����ǥ", pop_settings);
	
		//�ڽ�â�� �Ѱ��ٰ���
		winObj.nsptDd = nsptDd;
		winObj.nsptPrsnNm = nsptPrsnNm;
		winObj.nsptPos = nsptPos;
		winObj.bzRgstNo = bzRgstNo;
		//�ϴ� mgtNo�� ���� ���� �޾� ���°� ��� ��ġ�� ����
		winObj.mgtNo = nsptPos;
		};

	//�μ��ư
	function printPage(){
		window.print();
	}
	
</script>