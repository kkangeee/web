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
            <h2 class="con_sectionTit"><span class="subtit">����ڰ���</span></h2>            
        </div>
        
        <!-- �� �����Է� ���� -->
        <div class="mt20"> 
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">
	<!-- �� ��ü�˻� ���� -->
      <span class="board-search">
          <input type="hidden" name="pageNum" value="1">
          <select class="w130" id="searchOption">
            <option value="all">��ü</option>
            <option value="mbrId">ȸ��ID</option>
            <option value="mbrNm">ȸ���̸�</option>
            <option value="fonNo">����ó</option>
          </select>
          <input type="text" name="searchKeyword" id="searchKeyword" value="" placeholder="�˻�� �Է��ϼ���.">
          <button type="submit" id="btnSearch">�˻�</button>
          <input type="hidden" id="searchType">
          <input type="hidden" id="keyword">
      </span> 

        <!-- �� ��ư ���� -->
          <div class="btn_top">            
        	<a href="javascript:void(0)" class="btn_round btn_plus btn_Tw" id="loginBtn"><span>�α���</span></a> 
            <a href="javascript:void(0)" class="btn_round btn_save btn_Tw" id="saveBtn" ><span>����</span></a>
          </div> 
    </div>
        
    <!-- ���̺�01 --> 
     			<div class="table-double">
					<ul>
						<li class="p60">
							<span class="board_Ttxt">����ڸ��</span> <!-- ���̺�01 -->
								<div>
									<table class="board-list" >
									<colgroup>
										<col style="width: 8%">
										<col style="width: 38%">
										<col style="width: 20%">
										<col style="width: 25%">
									</colgroup>
									<thead>
										<tr>
											<th>NO</th>
											<th>ȸ��ID</th>
											<th>ȸ���̸�</th>
											<th>����ڸ�</th>
										</tr>
									</thead>
									</table>
								</div>
								<div class="TBover2 mb50" style="height: 800px;">
										<table style="text-align: center">
										<tbody class="TBover2" id="dataSection" name="tbody">
										</tbody>
										</table> <!-- //���̺�01 -->
								</div>
						</li>
						<li class="p30">
							<span class="board_Ttxt">����� ����</span> <!-- ���̺�01 -->
								<div>
									<table class="board-list">
									<input type ="text" style ="display: none" id="userMbrSeq" value ="">
										<colgroup>
										</colgroup>
										<thead>
											<tr>
											</tr>
										</thead>
										<tbody id="infoSection" name="tbody">
										</tbody>
									</table> <!-- //���̺�01 -->
								</div>
						</li>
					</ul>
				</div>
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
 	$("#searchType").val($("#searchOption option:selected").val());
	$("#keyword").val($("#searchKeyword").val()); 
	getPage(); 
});

function getPage() {
	var searchType = $("#searchType").val();
	var search = $("#keyword").val();
	console.log("::::11111:::::" + searchType);
	console.log("::::22222:::::" + search);
	$.ajax({
				url : "/page/KW90000/KW90000U6100selectList", //���� �ּ� 
				data : {  //���� ó���� �ʿ��� ���ڰ�
					searchType : searchType,
					keyword : search			
				},
				success : function(res) {
					const list = res['resultList'];
					var totalCnt = "";
					var data = "";
					var block = "";

					if(list.length != 0){	
					// ���̺��� row�� �����ϴ� �κ�
					for (var i = 0; i < list.length; i++) {
						data += '<tr style="cursor: pointer; width:40px; height : 50px" onclick="rowClick(this)" data-mbrSeq="'+ list[i].mbrSeq +'">';
						data += '<td class="rnum" style="width:8%;">' + list[i].rnum + '</td>';
						data += '<td class="mbrId" style="width: 38%">' + list[i].mbrId + '</td>';
						data += '<td class="mbrNm" style="width: 25%">' + list[i].mbrNm + '</td>';
						data += '<td class="bzCoNm" style="width: 20%">' + list[i].bzCoNm + '</td>';
						data += '</tr>';
					}
					} else {
						data += "<tr id='deleteCol'>";
						data += "<td colspan='4'>��ϵ� �Խñ��� �����ϴ�.</td>";
						data += "</tr>";						
					} 

					$("#dataSection").html(data);
					$("#saveBtn").hide();
					$("#loginBtn").hide();
					$("#userMbrSeq").val(list[0].mbrSeq);
					getInfoPage()
				}
			})
}

//������ ��ư Ŭ��  
function rowClick(obj) {
	//�θ�â�� id�� id�� input �̶�� ���ڿ� �����ϱ�   
	let mbrSeq = obj.getAttribute("data-mbrSeq");
	$("#userMbrSeq").val(mbrSeq);
    getInfoPage();
}
	
//����� ���� ������
function getInfoPage(){
	var comSearchValA = $("#userMbrSeq").val();
	console.log("comSearchValA  :: " + comSearchValA);
	$.ajax({
		url : "/page/KW90000/KW90000U6100infoList", //���� �ּ� 
		data : {  //���� ó���� �ʿ��� ���ڰ�
			//searchType : searchType,
			//keyword : search,
			comSearchValA : comSearchValA
		},
		success : function(res) {
			const infoList = res['infoList'];
			const codeMngList = res['codeMngList'];
			var list =[];
			for(i in codeMngList){
				list.push(codeMngList[i].CD_VAL)				
			}
			console.log(":list:::::::"+list);
				var data = "";
				data += '<tr class="secondTb" style="display:none"><td>mbrSeq : <input id="mbrSeq" type="text" value="' +infoList[0].mbrSeq + '"></td></tr>';
				data += '<tr class="secondTb"><td>  �̸�    : <input id="mbrNm" type="text" value="' +infoList[0].mbrNm + '"></td></tr>';
				data += '<tr class="secondTb"><td>����� ��ȣ : <input id="bzRgstNo" type="text" value="' +infoList[0].bzRgstNo + '"></td></tr>';
				data += '<tr class="secondTb" ><td> ȸ��ID  : <input id="mbrId" type="text" value="' +infoList[0].mbrId + '"></td></tr>';
				data += '<tr class="secondTb"><td> ��й�ȣ  : <input type="password" id="pswd" value="' +infoList[0].pswd + '"></td></tr>';
				data += '<tr class="secondTb"><td> ����ڸ�  : <input id="bzCoNm" type="text" value="' +infoList[0].bzCoNm + '"></td></tr>';
				data += '<tr class="secondTb"><td> �������  : <input id="bdt" type="text" value="' +infoList[0].bdt + '"></td></tr>';
				data += '<tr class="secondTb"><td> ����ó   : <input id="fonNo" type="text" value="' +infoList[0].fonNo + '"></td></tr>';
				// ���� �޺��ڽ�
				if(infoList[0].gndrTp === "1"){
					data += '<tr class="secondTb"><td> ���� : <select style="width:80px" id="gndrTp" class="select_bd_tit_A"><option value = "1" selected>����</option><option value = "2">����</option></select></tr>';
				} else {
					data += '<tr class="secondTb"><td> ���� : <select style="width:80px" id="gndrTp" class="select_bd_tit_A"><option value = "1">����</option><option value = "2" selected>����</option></select></tr>';
				}
				data += '<tr class="secondTb"><td> ȸ������  : <input id="mbrTp" type="text" value="' +infoList[0].mbrTp + '"></td></tr>';
				// ���� ���� �޺��ڽ�
				if(infoList[0].roleAuthId === "ADMIN"){
					data += '<tr class="secondTb"><td> ���ұ��� : <select style="width:80px" id="roleAuthId" class="select_bd_tit_A"><option value = "ADMIN" selected>��ȸ������</option><option value = "COM000">����������</option><option value = "COM030">�����Ϲ�ȸ��</option></select></tr>';
				} else if (infoList[0].roleAuthId === "COM030") {
					data += '<tr class="secondTb"><td> ���ұ��� : <select style="width:80px" id="roleAuthId" class="select_bd_tit_A"><option value = "ADMIN">��ȸ������</option><option value = "COM000" selected>����������</option><option value = "COM030">�����Ϲ�ȸ��</option></select></tr>';
				} else {
					data += '<tr class="secondTb"><td> ���ұ��� : <select style="width:80px" id="roleAuthId" class="select_bd_tit_A"><option value = "ADMIN">��ȸ������</option><option value = "COM000">����������</option><option value = "COM030" selected>�����Ϲ�ȸ��</option></select></tr>';
				} 
				data += '<tr class="secondTb"><td> ȸ�����ο��� : <input id="mbrAprvYn" type="text" value="' +infoList[0].mbrAprvYn + '"></td></tr>';
		$("#infoSection").html(data);
		$("#loginBtn").show();
		$("#saveBtn").show();
	 }
	});	
}

	//����(�߰�, ������ ������ ��ư) ��ư Ŭ���� ajaxȣ�� �߰��߰�
	$("#saveBtn").on("click", function() {
		var arr = [];
			arr.push({
				//seqŬ������ input������ �߰�, �������� ���� ����(input������ �߰�)
				mbrSeq : $('#mbrSeq').val(),
				mbrNm : $('#mbrNm').val(),
				mbrId : $('#mbrId').val(),
				bzRgstNo : $('#bzRgstNo').val(),
				pswd : $('#pswd').val(),
				bzCoNm : $('#bzCoNm').val(),
				bdt : $('#bdt').val(),
				fonNo : $('#fonNo').val(),
				gndrTp : $('#gndrTp').val(), 
				mbrTp : $('#mbrTp').val(),
				roleAuthId : $('#roleAuthId').val(), 
				mbrAprvYn : $('#mbrAprvYn').val()
			});
		
		var param = {
			"data" : JSON.stringify(arr)
		};

		if (confirm("�����Ͻðڽ��ϱ�?")) {
			common.ajaxaa("/page/KW90000/KW90000U6100save.do", param);
			 getPage();
	     }
		$("#saveBtn").hide();
		
	});
	

	
</script>