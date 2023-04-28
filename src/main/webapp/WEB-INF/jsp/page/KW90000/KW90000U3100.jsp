<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>
<!DOCTYPE html>
    <!-- #container -->
    <div id="container">
            
        <div class="headline sub_headline sub_headline01">
          <div class="inner">
              <h1>�ý��۰���</h1>
          </div>
        </div>      
    
        <div class="inner">
          <!-- �ϴܿ��� �������� ���� -->
          <section id="content">
            <div class="con_area">       
        
        
        <!-- �� Ÿ��Ʋ ���� -->
        <div class="con_section ">
            <h2 class="con_sectionTit"><span class="subtit">�޴�����</span></h2>            
        </div>
        
        <!-- �� �����Է� ���� -->
        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
	<!-- �� ��ü�˻� ���� -->
      <span class="board-search">
          <input type="hidden" name="pageNum" value="1">
          <select class="w130"id="searchOption">
            <option value="all">��ü</option>
            <option value="menuId">�޴�ID</option>
            <option value="menuNm">�޴���</option>
            <option value="pgmId">���α׷�ID</option>
          </select>
          <input type="text" name="searchKeyword" id="searchKeyword" value="" onkeyup="enterkey()" placeholder="�˻�� �Է��ϼ���.">
          <button type="submit" id="btnSearch">�˻�</button>
          <input type="hidden" id="searchType">
          <input type="hidden" id="keyword">
      </span> 
        <!-- �� ��ư ���� -->
          <div class="btn_top">            
	        	<a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>�߰�</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>����</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>����</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>����</span></a>
	            <!-- <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>�μ�</span></a>  -->
	            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>���</span></a>
          </div> 
    </div>
        
    <!-- ���̺�01 --> 
	<!-- �׸��� -->
	<!--page totalCnt -->
	<p id="totalCnt" class="allNB"></p>
	<!--page totalCnt -->    
    
      <!-- �׸��� -->
     			 <form id="boardForm" name="boardForm" method="post">
                       <table class="board-list">
                            <colgroup>
                              <col style="width: 30px">
                              <col style="width: 35px">
                              <col style="width: 100px">
                              <col style="width: 200px">
                              <col style="width: 100px">
                              <col style="width: 45px">
                              <col style="width: 45px">
                              <col style="width: 40px">
                              <col style="width: 40px">
                              <col style="width: 280px">
                            </colgroup>
                            <thead>
                              <tr>
                                <th style="height : 10px"><input type="checkbox" name="agree1" value="Y"></th>
                                <th>NO</th>
                                <th>�޴�ID</th>
                                <th>�޴���</th>
                                <th>�����޴�ID</th>
                                <th>��������</th>
                                <th>��뿩��</th>
                                <th>����</th>
                                <th>����</th>
                                <th>���α׷�ID</th>
                              </tr>
                            </thead>
                            <tbody id="dataSection" name="tbody"></tbody>
                          </table>
                  </form>
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
    
    
    
<script>
		$(document).ready(function() {
			getPage();
		})
		
		//�˻��� ��ȸ
$("#btnSearch").click(function() {
	let searchOption = $("#searchOption option:selected").val();
	let searchKeyword = $("#searchKeyword").val();
 	$("#searchType").val(searchOption);
	$("#keyword").val(searchKeyword);
	getPage(); 
});

//�˻� Enter Key
function enterkey() {
	if (window.event.keyCode == 13) {
    	$("#btnSearch").click();
    }
}

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#keyword").val();
	$.ajax({
				url : "/page/KW90000/KW90000U3100selectList", //���� �ּ� 
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
					totalCnt += '��ü <strong class="tc_point mr20">'
							+ pagination['totalCount']
							+ '</strong>���������� <strong class="tc_point"><span></span>'
							+ pagination.cri['page']
							+ '/'
							+ (Math.ceil(pagination['totalCount']
									/ pagination.cri['perPageNum']))
							+ '</strong>'
					//������ ��ȣ ��ġ							 

					if(list.length !== 0){	
						// ���̺��� row�� �����ϴ� �κ�
						for (var i = 0; i < list.length; i++) {
							data += '<tr>';
							data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '"></td>';
							data += '<td style="display:none" class="seq" width="35px">' + list[i].seq + '</td>';
							data += '<td class="rnum">' + list[i].rnum + '</td>';
							data += '<td class="menuId">' + list[i].menuId + '</td>';
							data += '<td class="menuNm">' + nvl(list[i].menuNm,"") + '</td>';
							data += '<td class="hgRkMenuId">' + nvl(list[i].hgRkMenuId,"") + '</td>';
							data += '<td class="foldYn">' + list[i].foldYn + '</td>';
							data += '<td class="menuShowYn">' + list[i].menuShowYn + '</td>';
							data += '<td class="menuOrd">' + nvl(list[i].menuOrd,"") + '</td>';
							data += '<td class="menuLvl">' + nvl(list[i].menuLvl,"") + '</td>';
							data += '<td class="pgmId"><font size="1">' + nvl(list[i].pgmId,"") + '</font></td>';
							data += '</tr>';
						}
					} else {
						data += "<tr>";
						data += "<td colspan='10'>��ϵ� �Խñ��� �����ϴ�.</td>";
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
		common.ajaxaa("/page/KW90000/KW90000U3100delete.do", param);
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
		html += '<td class="seq"><input type="text" style="text-align:center;width:35px" value="'+$target.find('.seq').text()+'" readonly></td>';
		html += '<td class="menuId"><input type="text" style="text-align:center;width:100px" value="'+$target.find('.menuId').text()+'"></td>';
		html += '<td class="menuNm"><input type="text" style="text-align:center;width:200px" value="'+$target.find('.menuNm').text()+'"></td>';
		html += '<td class="hgRkMenuId"><input type="text" style="text-align:center;width:100px" value="'+$target.find('.hgRkMenuId').text()+'"></td>';		
		if($target.find('.foldYn').text() == "Y"){
			html += '<td class="foldYn"><select style="width:45px" id="foldYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else if($target.find('.foldYn').text() == "N") {
			html += '<td class="foldYn"><select style="width:45px" id="foldYn" class="select_bd_tit_A"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		} else {
			html += '<td class="foldYn"><select style="width:45px" id="foldYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		}
		if($target.find('.menuShowYn').text() == "Y"){
			html += '<td class="menuShowYn"><select style="width:45px" id="menuShowYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else if($target.find('.menuShowYn').text() == "N") {
			html += '<td class="menuShowYn"><select style="width:45px" id="menuShowYn" class="select_bd_tit_A"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		} else {
			html += '<td class="menuShowYn"><select style="width:45px" id="menuShowYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		}					
		html += '<td class="menuOrd"><input type="text" style="text-align:center;width:40px" value="'+$target.find('.menuOrd').text()+'"></td>';
		html += '<td class="menuLvl"><input type="text" style="text-align:center;width:40px" value="'+$target.find('.menuLvl').text()+'"></td>';
		html += '<td class="pgmId"><font size="1"><input type="text" style="text-align:center;width:280px" value="'+$target.find('.pgmId').text()+'"></font></td>';
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
		html += '<td class="seq"></td>';
		html += '<td class="menuId"><input type="text" style="text-align:center;width:100px"></td>';
		html += '<td class="menuNm"><input type="text" style="text-align:center;width:200px"></td>';
		html += '<td class="hgRkMenuId"><input type="text" style="text-align:center;width:100px"></td>';
		html += '<td class="foldYn"><select style="text-align:center;width:45px" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		html += '<td class="menuShowYn"><select style="text-align:center;width:45px" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		html += '<td class="menuOrd"><input type="text" style="text-align:center;width:40px"></td>';
		html += '<td class="menuLvl"><input type="text" style="text-align:center;width:40px"></td>';
		html += '<td class="pgmId"><font size="1"><input type="text" style="text-align:center;width:280px"></font></td>';
		html += '</tr>';
		
		$("tbody").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
		$("#printBtn").hide();
		$("#saveBtn").show();
		$("#cancelBtn").show();
	});

	
	function nvl(str, defaultStr) {
		if (typeof str == "undefined" || str == null || str == "") {
			str = defaultStr;
		}
		return str;
	}
	
	//����(�߰�, ������ ������ ��ư) ��ư Ŭ���� ajaxȣ�� �߰��߰�
	$("#saveBtn").on("click", function() {
		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
			
			if( $target.find('.menuId input').val() == "" ) {
				alert("�޴�ID�� �Է����ּ���.");
				return;
			}
			
			arr.push({
				seq : $target.find('.seq input').val(),
				menuId : $target.find('.menuId input').val(),
				menuNm : $target.find('.menuNm input').val(),
				hgRkMenuId : $target.find('.hgRkMenuId input').val(),
				foldYn : $target.find('.foldYn select').val(),
				menuShowYn : $target.find('.menuShowYn select').val(),
				menuOrd : $target.find('.menuOrd input').val(),
				menuLvl : $target.find('.menuLvl input').val(),
				pgmId : $target.find('.pgmId input').val()
			});
		}
		
		var param = {
			"data" : JSON.stringify(arr)
		};

		if (confirm("�����Ͻðڽ��ϱ�?")) {
			common.ajaxaa("/page/KW90000/KW90000U3100save.do", param);
		 	getPage();
	    }
		
		$("#insertBtn").show();
		$("#deleteBtn").show();
		$("#updateBtn").show();
		$("#printBtn").show();
		$("#saveBtn").hide();
		
	});
	
</script>