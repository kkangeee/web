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
            <h2 class="con_sectionTit">�ǰ����� / <span class="subtit">�ǰ�������� ���</span></h2>  
                      <!-- ���պ������α׷� �������� ������ ��� ������� ����(��� ���α׷� ���� �� �ݿ�) -->
        </div>
        
         <!-- �� �����Է� ���� --> 
        <div class="tab_wrap mt20">
            <ul class="tab_base N3">
              <li><a href="/page/KW30000/KW30000U2310.do"><span>�ǰ����ܰ�� ���</span></a></li>
              <li class="On"><a href="/page/KW30000/KW30000U2320.do"><span>����������� ���</span></a></li>
              <li><a href="/page/KW30000/KW30000U2330.do"><span>������� ���Ұ��ڰ�� ���</span></a></li>
            </ul>
        </div>           
        <div class="mt20">
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">

      <!-- �� ��ü�˻� ���� -->
      <span class="board-search company-search pr10">
        <label>
          <span class="input-checkbox">
            <input type="checkbox" name="agree1" value="Y">
            <i></i>
          </span>
         <em>��ü</em>

         <span class="input-checkbox">
            <input type="checkbox" name="agree1" value="Y">
            <i></i>
          </span>
         <em>��ȯ��</em>

         <span class="input-checkbox">
            <input type="checkbox" name="agree1" value="Y">
            <i></i>
          </span>
         <em>��</em>

         <span class="input-checkbox">
            <input type="checkbox" name="agree1" value="Y">
            <i></i>
          </span>
         <em>����</em>

         <span class="input-checkbox">
            <input type="checkbox" name="agree1" value="Y">
            <i></i>
          </span>
         <em>�</em>
        </label>
      </span>  

      <span class="board-search company-search">
                <form name="form" id="form" action="?" onsubmit="return page.search(this)">
                    <p>����������ȸ</p>
                  <input type="date" name="date" id="date" class="w180"><p class="ml10"> ~ </p> <input type="date" name="date" id="date" class="w180">
                  <button type="submit" id="search">�˻�</button>
                </form>
      </span>

      <!-- �� ��ư ���� -->
        <div class="btn_top">            
            <a href="javascript:location.href='join05.php';" class="btn_round btn_save btn_prt"><span>�μ�</span></a>
        </div>
    </div>
    <!-- ���̺�01 -->   
    
    <table class="board-list">
      <colgroup>
        <col style="width: 60px">
        <col style="width: 150px">
        <col style="width: 150px">
        <col style="width: 200px">
        <col style="width: 150px">
        <col style="width: 150px">
        <col style="width: 150px">
        <col style="width: auto">
      </colgroup>
      <thead>
        <tr>
          <th>NO</th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">����</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">����</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">�������ü</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">����<br>(�μ�)</option>
            </select>
          </th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">����</option>
            </select>
          </th>
          <th>����</th>
          <th>
            <select class="select_bd_tit" name="searchType">
                <option value="">���º�</option>
            </select>
          </th>
        </tr>

      </thead>
    <tbody id="dataSection" name="tbody"></tbody>
	</table>
	<!-- ����¡ -->
	<div id="paginationBox" class="paging"></div>
<div class="km500">
  <span>
      <span class="km500tit">[ �ǰ����� �ǽñٰ� ]</span><br>
      <b>�Ϲݰǰ�����(����������ǹ� ��129��)</b> <br>
      - ��ñٷ����� �ǰ������� ���Ͽ� �ֱ������� �ǽ��ϴ� �ǰ�����<br>
       - �繫���ٷ��� 2�⿡ 1ȸ, �� �� �ٷ��� 1�⿡ 1ȸ<br>
       -(���·�) �ǰ����� ��� �ٷ��� 1��� 10����(1��), 20����(2��), 30����(3���̻�)
      <br><br>
      <b>Ư���ǰ�����(����������ǹ� ��130��)</b> <br>
       - <b class="tc_point2">�� �����Ģ ��ǥ22</b> ���� ���� �������ڿ� ����Ǵ� �ٷ����� �ǰ������� ���Ͽ� �ǽ��ϴ� �ǰ�����<br>
       - (���·�)�ǰ����� ��� �ٷ��� 1��� 10����(1��), 20����(2��), 30����(3���̻�)<br><br>

      <p class="point_box">�� Ư���ǰ����� ��� ��������(����������ǹ� �����Ģ ��ǥ22)</p><br>
      1. ȭ���� ���ڰ�. ����ȭ�չ�(109��)<br>
      <p> 1) ���ָ�(Gasoline; 8006-61-9)<br>
          <span class="gtext">�����ֱ� : ��ġ��/Ư�� : 6����/12����<br>
          �˻��׸� : ����(GOT, GPT, r-GPT)/�Һ��˻�</span><br>

          2) �۷�Ÿ���˵�����(Gultaraldehyde; 111-30-8)<br>
          3) ��-����ƿ�ƹ�(��-Naphthylamine; 91-59-8)<br>
          4) ��Ʈ�α۸�����(Nitroglycerin; 55-63-0)<br>
          5) ��Ʈ�θ�ź(Nitromethane; 75-52-5)<br>
          6) ��Ʈ�κ���(Nitrobenzene; 98-95-3)<br>
          7) p-��Ʈ�ξƴҸ�(p-Nitroaniline; 100-01-6)<br>
          8) p-��Ʈ��Ŭ�ηκ���(p-Nitrochlorobenzene; 100-00-5)<br>
          9) ���Ʈ����翣(Dinitrotoluene; 25321-14-6 ��)<br>
          10) N,N-���ƿ�ƴҸ�(N,N-Dimethylaniline; 121-69-7)<br></p>
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
				url : "/page/KW30000/KW30000U2320selectList", //���� �ּ� 
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
						data += '<td style="display:none" class="seq">' + list[i].seq + '</td>';
						data += '<td class="rnum">' + list[i].rnum + '</td>';
						data += '<td class="inqTp">' + list[i].inqTp + '</td>';
						data += '<td class="nm">' + list[i].nm + '</td>';
						data += '<td class="unitCoNm">' + list[i].unitCoNm + '</td>';
						data += '<td class="prcsNm">' + list[i].prcsNm + '</td>';
						data += '<td class="gndr">' + list[i].gndr + '</td>';
						data += '<td class="age">' + list[i].age + '</td>';
						data += '<td class="carr">' + list[i].carr + '</td>';
						data += '</tr>';
					}
					
					} else {
						data += "<tr>";
						data += "<td colspan='16'>��ϵ� �Խñ��� �����ϴ�.</td>";
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
		common.ajaxaa("/page/KW30000/KW30000U2310delete.do", param);
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
		html += '<td class="nm"><input type="text" value="'+$target.find('.nm').text()+'"></td>';
		html += '<td class="unitCoNm"><input type="text" value="'+$target.find('.unitCoNm').text()+'"></td>';
		html += '<td class="prcsNm"><input type="text" value="'+$target.find('.prcsNm').text()+'"></td>';
		html += '<td class="gndr"><input type="text" value="'+$target.find('.gndr').text()+'"></td>';
		html += '<td class="age"><input type="text" value="'+$target.find('.age').text()+'"></td>';
		html += '<td class="bldPres"><input type="text" value="'+$target.find('.bldPres').text()+'"></td>';
		html += '<td class="wstCrcm"><input type="text" value="'+$target.find('.wstCrcm').text()+'"></td>';
		html += '<td class="bldSgar"><input type="text" value="'+$target.find('.bldSgar').text()+'"></td>';
		html += '<td class="totChol"><input type="text" value="'+$target.find('.totChol').text()+'"></td>';
		html += '<td class="hdl"><input type="text" value="'+$target.find('.hdl').text()+'"></td>';
		html += '<td class="ldl"><input type="text" value="'+$target.find('.ldl').text()+'"></td>';
		html += '<td class="nf"><input type="text" value="'+$target.find('.nf').text()+'"></td>';
		html += '<td class="jdgTp"><input type="text" value="'+$target.find('.jdgTp').text()+'"></td>';
		html += '<td class="wrkFflSuitYn"><input type="text" value="'+$target.find('.wrkFflSuitYn').text()+'"></td>';
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
		html += '<td class="nm"><input type="text"></td>';
		html += '<td class="unitCoNm"><input type="text"></td>';
		html += '<td class="prcsNm"><input type="text"></td>';
		html += '<td class="gndr"><input type="text"></td>';
		html += '<td class="age"><input type="text"></td>';
		html += '<td class="bldPres"><input type="text"></td>';
		html += '<td class="wstCrcm"><input type="text"></td>';
		html += '<td class="bldSgar"><input type="text"></td>';
		html += '<td class="totChol"><input type="text"></td>';
		html += '<td class="hdl"><input type="text"></td>';
		html += '<td class="ldl"><input type="text"></td>';
		html += '<td class="nf"><input type="text"></td>';
		html += '<td class="jdgTp"><input type="text"></td>';
		html += '<td class="wrkFflSuitYn"><input type="text"></td>';
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
				nm : $target.find('.nm input').val(),
				unitCoNm : $target.find('.unitCoNm input').val(),
				prcsNm : $target.find('.prcsNm input').val(),
				gndr : $target.find('.gndr input').val(),
				age : $target.find('.age input').val(),
				bldPres : $target.find('.bldPres input').val(),
				wstCrcm : $target.find('.wstCrcm input').val(),
				bldSgar : $target.find('.bldSgar input').val(),
				totChol : $target.find('.totChol input').val(),
				hdl : $target.find('.hdl input').val(),
				ldl : $target.find('.ldl input').val(),
				nf : $target.find('.nf input').val(),
				jdgTp : $target.find('.jdgTp input').val(),
				wrkFflSuitYn : $target.find('.wrkFflSuitYn input').val()
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
			common.ajaxaa("/page/KW30000/KW30000U2310save.do", param);
			 getPage();
	     }
	});
	
	$("#cancelBtn").on('click',function() {
		getPage();
	});

	
</script>