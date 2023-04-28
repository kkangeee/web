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
            <h2 class="con_sectionTit"><span class="subtit">�ڵ����</span></h2>            
        </div>
        
        <!-- �� �����Է� ���� -->
        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
	<!-- �� ��ü�˻� ���� -->
      <span class="board-search">
          <input type="hidden" name="pageNum" value="1">
          <select id="searchOption">
            <option value="all">��ü</option>
            <option value="cdItemNm">�ڵ�׷��</option>
            <option value="cdItem">�ڵ�׷�</option>
            <option value="cdVal">�ڵ�</option>
            <option value="cdDtl1">�ڵ��</option>
          </select>
          <input type="text" name="searchKeyword" id="searchKeyword" value="" onkeyup="enterkey()" placeholder="�˻�� �Է��ϼ���.">
          <button type="submit" id="btnSearch">�˻�</button>
          <input type="hidden" id="searchType">
          <input type="hidden" id="keyword">
      </span> 

        <!-- �� ��ư ���� -->
          <div class="btn_top">            
	        	<a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>�߰�</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>����</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>����</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>����</span></a>
	            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>���</span></a>
          </div> 
    </div>
        
    <!-- ���̺�01 --> 
      <!-- �׸��� -->
     			 <form id="boardForm" name="boardForm" method="post">
                       <table class="board-list">
                            <colgroup>
                              <col style="width: 4%">
                              <col style="width: 5%">
                              <col style="width: 200px">
                              <col style="width: 200px">
                              <col style="width: 200px">
                              <col style="width: 300px">
                              <col style="width: 200px">
                              <col style="width: 100px">
                            </colgroup>
                            <thead>
                              <tr>
                                <th style="height : 10px"><input type="checkbox" name="agree1" value="Y" id="checkAll"></th>
                                <th>NO</th>
                                <th>�ڵ�׷�</th>
                                <th>�ڵ�׷��</th>
                                <th>�ڵ�</th>
                                <th>�ڵ��</th>
                                <th>����</th>
                                <th>��뿩��</th>
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
common.checkAll();


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
				url : "/page/KW90000/KW90000U1100selectList", //���� �ּ� 
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
						data += '<td><input type="checkbox" name="agree1" value="'+ list[i].seq+ '|' + list[i].cdItem +'"></td>';
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="cdItem">' + list[i].cdItem + '</td>';
						data += '<td class="cdItemNm">' + list[i].cdItemNm + '</td>';
						data += '<td class="cdVal">' + list[i].cdVal + '</td>';
						data += '<td class="cdDtl1">' + list[i].cdDtl1 + '</td>';
						data += '<td class="sort">' + list[i].sort + '</td>';
						data += '<td class="useYn">' + list[i].useYn + '</td>';
						data += '</tr>';
					}
					
					} else {
						data += "<tr id='deleteCol'>";
						data += "<td colspan='8'>��ϵ� �Խñ��� �����ϴ�.</td>";
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
			 seq : $("input[name=agree1]:checked").eq(i).val().split('|')[0],
			 cdItem : $("input[name=agree1]:checked").eq(i).val().split('|')[1]
		 });
	}
	var param = {
		"data" : JSON.stringify(arr)
	};
	
	 if (confirm("�����Ͻðڽ��ϱ�?")) {
		common.ajaxaa("/page/KW90000/KW90000U1100delete.do", param);
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
		html += '<td class="cdItem"><input type="text" value="'+$target.find('.cdItem').text()+'" readonly></td>';
		html += '<td class="cdItemNm"><input type="text" value="'+$target.find('.cdItemNm').text()+'" readonly></td>';
		html += '<td class="cdVal"><input type="text" value="'+$target.find('.cdVal').text()+'"></td>';
		html += '<td class="cdDtl1"><input type="text" value="'+$target.find('.cdDtl1').text()+'"></td>';
		html += '<td class="sort"><input type="text" value="'+$target.find('.sort').text()+'"></td>';
		if($target.find('.useYn').text() == "Y"){
			html += '<td class="useYn"><select style="width:100px" id="useYn" class="select_bd_tit_A"><option value = "Y" selected>Y</option><option value = "N">N</option></select></td>';
		} else {
			html += '<td class="useYn"><select style="width:100px" id="useYn" class="select_bd_tit_A"><option value = "Y">Y</option><option value = "N" selected>N</option></select></td>';
		}
		html += '<td style="display:none" class="seq"><input type="text" value="'+$target.find('.seq').text()+'" readonly></td>';
		html += '</tr>';

		$target.before(html);
		$target.hide();
	}
		$(".new").prop("checked",true);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
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
		html += '<td class="cdItem"><input type="text"></td>';
		html += '<td class="cdItemNm"><input type="text"></td>';
		html += '<td class="cdVal"><input type="text"></td>';
		html += '<td class="cdDtl1"><input type="text"></td>';
		html += '<td class="sort"><input type="text"></td>';
		html += '<td class="useYn"><select style="width:100px" class="select_bd_tit_A"><option value="Y">Y</option><option value ="N">N</option></select></td>';
		html += '</tr>';
		$("tbody").prepend(html);
		$("#deleteBtn").hide();
		$("#updateBtn").hide();
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
				cdItem : $target.find('.cdItem input').val(),
				cdItemNm : $target.find('.cdItemNm input').val(),
				cdVal : $target.find('.cdVal input').val(),
				cdDtl1 : $target.find('.cdDtl1 input').val(),
				sort : $target.find('.sort input').val(),
				useYn : $target.find('.useYn select').val()
			});
		}
		
		var param = {
			"data" : JSON.stringify(arr)
		};

		 if (confirm("�����Ͻðڽ��ϱ�?")) {
			common.ajaxaa("/page/KW90000/KW90000U1100save.do", param);
			 getPage();
	     } 
		 
		$("#insertBtn").show();
		$("#deleteBtn").show();
		$("#updateBtn").show();
		$("#saveBtn").hide();
		
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});

	
</script>