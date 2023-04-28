<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- #location -->
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
			<button onclick="$(this).toggleClass('active').next().slideToggle();">�۾�ȯ�����</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U4100.do">�۾�ȯ�����</a></li>
			</ul>
		</li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();">�۾�ȯ���������ǥ ����</button>
			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW30000/KW30000U4100.do">�۾�ȯ���������ǥ ����</a></li>
				<li><a href="/page/KW30000/KW30000U4210.do">�۾�ȯ��������� ���</a></li>
				<li><a href="/page/KW30000/KW30000U4310.do">���ҹ��˻�</a></li>
				<li><a href="/page/KW30000/KW30000U4400.do">üũ����Ʈ</a></li>
				<li><a href="/page/KW30000/KW30000U4510.do">��ȣ�� ���� �� ��������ǥ��</a></li>
				<li><a href="/page/KW30000/KW30000U4610.do">�۾��� ��ȸ����</a></li>
				<li><a href="/page/KW30000/KW30000U4710.do">���輺 ��</a></li>
				<li><a href="/page/KW30000/KW30000U4800.do">���輺 �� ��������</a></li>
			</ul>
		</li>
	</ul>
</div>
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
            <h2 class="con_sectionTit">�۾�ȯ����� / <span class="subtit">��ȣ�� ���� �� ��������ǥ��</span></h2>            
        </div>
        
        <!-- �� �����Է� ���� -->
        <div class="tab_wrap mt20">
            <ul class="tab_base N2">
              <li class="On"><a href="/page/KW30000/KW30000U4510.do"><span>��ȣ�� ����</span></a></li>
              <li><a href="/page/KW30000/KW30000U4521.do"><span>��������ǥ��</span></a></li>
            </ul>
        </div>

        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">

      <span class="board-search company-search">
                <form name="form" id="form" action="?" onsubmit="return page.search(this)">
                    <p>��±Ⱓ</p>
                  <input type="date" name="date" id="date" class="w180"><p class="ml10"> ~ </p> <input type="date" name="date" id="date" class="w180">
                  <button type="submit" id="search">�˻�</button>
                </form>
      </span>



      <!-- �� ��ü�˻� ���� -->

      <!-- �� ��ư ���� -->
        <div class="btn_top">            
            <a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="insertBtn"><span>�߰�</span></a>
            <a href="javascript:void(0)" class="btn_round btn_del btn_Tw" id="deleteBtn"><span>����</span></a>
            <a href="javascript:void(0)" class="btn_round btn_modi btn_Tw" id="updateBtn"><span>����</span></a>
            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" style="display: none;"><span>����</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="printBtn"><span>�μ�</span></a>
            <a href="javascript:void(0)" class="btn_round btn_prt btn_Tw" id="cancelBtn"><span>���</span></a>
        </div>
    </div>
     
    <!-- ���̺�01 --> 
    <span class="board_Ttxt">
      �������� ������ �����Ͽ� �⺻ ���� �ڵ� ���� / ��������, ���蹰���� ���� ��������ǥ�� ���� / �ش����� �ʴ� ��������ǥ���� ��� �����ϰ� ����</span>

      <!-- �׸��� -->
      
                        <table class="board-list">
                            <colgroup>
                              <col style="width: 30px">
                              <col style="width: 60px">
                              <!-- <col style="width: 130px">
                              <col style="width: 160px">
                              <col style="width: ">
                              <col style="width: "> -->
                              <col style="width: auto">
                            </colgroup>
                            <thead>
                              <tr>
                                <th><input type="checkbox" name="agree1" value="Y"></th>
                                <th>NO</th>
                                <th>�������ü</th>
                                <th>����</th>
                                <th>��������/���蹰��</th>
                                <th>��ȣ��</th>
                                <th>�޼�</th>
                                <th>����ο� </th>
                                <th>������</th>
                                <th>��������</th>
                                <th>ǥ����</th>
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

function getPage(page) {
	var searchType = $("#searchType").val();
	var search = $("#searchInput").val();
	$.ajax({
				url : "/page/KW30000/KW30000U4510selectList", //���� �ּ� 
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
						data += '<td class="unitCoNm">' + list[i].unitCoNm + '</td>';
						data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
						data += '<td class="hndlHrmFctr">' + list[i].hndlHrmFctr + '</td>';
						data += '<td class="prttGearNm">' + list[i].prttGearNm + '</td>';
						data += '<td class="rating">' + list[i].rating+ '</td>';
						data += '<td class="targetPrsn">' + list[i].targetPrsn + '</td>';
						data += '<td class="spplDd">' + list[i].spplDd + '</td>';
						data += '<td><button>�ۼ�</button></td>';
						data += '<td><button>�ۼ�</button></td>';
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
		common.ajaxaa("/page/KW30000/KW30000U4510delete.do", param);
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
		html += '<td class="unitCoNm"><input type="text" value="'+$target.find('.unitCoNm').text()+'"></td>';
		html += '<td class="prcsNm"><input type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
		html += '<td class="hndlHrmFctr"><input type="text" value="'+$target.find('.hndlHrmFctr').text()+'"></td>';
		html += '<td class="prttGearNm"><input type="text" value="'+$target.find('.prttGearNm').text()+'"></td>';
		html += '<td class="rating"><input type="text" value="'+$target.find('.rating').text()+'"></td>';
		html += '<td class="targetPrsn"><input type="text" value="'+$target.find('.targetPrsn').text()+'"></td>';
		html += '<td class="spplDd"><input type="text" value="'+$target.find('.spplDd').text()+'"></td>';
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
		var html = "";
		html += '<tr>';
		html += '<td><input type="checkbox" name="agree1" checked="checked" value="new"></td>';
		html += '<td class="rnum"></td>';
		html += '<td class="unitCoNm"><input type="text"></td>';
		html += '<td class="prcsNm"><input type="text"></td>';
		html += '<td class="hndlHrmFctr"><input type="text"></td>';
		html += '<td class="prttGearNm"><input type="text"></td>';
		html += '<td class="rating"><input type="text"></td>';
		html += '<td class="targetPrsn"><input type="text"></td>';
		html += '<td class="spplDd"><input type="text"><button onclick = "deleteRow(this)">X</button></td>';
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

	//����(�߰�, ������ ������ ��ư) ��ư Ŭ���� ajaxȣ�� �߰�
	$("#saveBtn").on("click", function() {
		var arr = [];
		for (i = 0; i < $("input[name=agree1][value='new']:checked").length; i++) {
			$target = $("input[name=agree1][value='new']:checked").eq(i).closest('tr');
			arr.push({
				//seqŬ������ input������ �߰�, �������� ���� ����(input������ �߰�)
				seq : $target.find('.seq input').val(),
				rnum : $target.find('.rnum input').val(),
				unitCoNm : $target.find('.unitCoNm input').val(),
				prcsNm : $target.find('.prcsNm input').val(),
				hndlHrmFctr : $target.find('.hndlHrmFctr input').val(),
				prttGearNm : $target.find('.prttGearNm input').val(),
				rating : $target.find('.rating input').val(),
				targetPrsn : $target.find('.targetPrsn input').val(),
				spplDd : $target.find('.spplDd input').val()
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
			common.ajaxaa("/page/KW30000/KW30000U4510save.do", param);
			 getPage();
	     }
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});

	
</script>