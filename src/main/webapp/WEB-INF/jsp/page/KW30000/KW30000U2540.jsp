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
            <h2 class="con_sectionTit">�ǰ����� / <span class="subtit">�����ǰ� ��</span></h2>  
                      <!-- ���պ������α׷� �������� ������ ��� ������� ����(��� ���α׷� ���� �� �ݿ�) -->
        </div>
        
         <!-- �� �����Է� ���� --> 
        <div class="tab_wrap mt20">
            <ul class="tab_base N5">
              <li><a href="/page/KW30000/KW30000U2510.do"><span>�����ǰ� �� ��� ����</span></a></li>
              <li><a href="/page/KW30000/KW30000U2520.do"><span>���������� ��ȯ �ߺ����赵 ��</span></a></li>
              <li><a href="/page/KW30000/KW30000U2530.do"><span>������Ʈ���� ��</span></a></li>
              <li class="On"><a href="/page/KW30000/KW30000U2540.do"><span>�����뵿 ��</span></a></li>
              <li><a href="/page/KW30000/KW30000U2550.do"><span>�ٰ�ݰ� ��ȯ ��</span></a></li>
            </ul>
        </div>  
                  
        <div class="mt20">
            <!-- #content section////////////////////////////// -->
  <section id="content">
    <div class="button-group top">

      <!-- �� ��ü�˻� ���� -->
      <span class="board-search company-search">
                <form name="form" id="form" action="?" onsubmit="return page.search(this)">
                    <p>�򰡱Ⱓ</p>
                  <input type="date" name="date" id="date" class="w180"><p class="ml10"> ~ </p> <input type="date" name="date" id="date" class="w180">
                  <button type="submit" id="search">�˻�</button>
                </form>
      </span>

      <span class="board-search">
        <form name="form" id="form" action="?" onsubmit="return page.search(this)">
          <input type="hidden" name="pageNum" value="1">
          <select name="searchType">
            <option value="">�����</option>
          </select>
          <input type="text" name="searchKeyword" value="" placeholder="">
          <button type="submit" id="search">�˻�</button>
        </form>
      </span>

      <!-- �� ��ư ���� -->
        <div class="btn_top">            
            <a href="javascript:location.href='join05.php';" class="btn_round btn_plus_bl btn_Tw10"><span>���ڼ��� ��û</span></a>
        </div>
    </div>
    <div class="btn_top mb5">            
            <a href="javascript:location.href='join01.php';" class="btn_round btn_plus btn_Tw"><span>�߰�</span></a>
            <a href="javascript:location.href='join01.php';" class="btn_round btn_del btn_Tw"><span>����</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_modi btn_Tw"><span>����</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_save btn_Tw"><span>����</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_prt btn_Tw"><span>�μ�</span></a>
        </div>
     
    <!-- ���̺�01 --> 
    <div class="TBover">
    <table class="board-list" style="width:5000px">
     <colgroup>
        <col style="width: 40px">
        <col style="width: 60px">
        <col style="width: 100px">
        <col style="width: ">
        <col style="width: 80px">
        <col style="width: 80px">
        <col style="width: 80px">
        <col style="width: 80px">
        <col style="width: ">
        <!--  <col style="width: ">
        <col style="width: auto">
      </colgroup> -->
      <thead>
        <tr>
          <th><input type="checkbox" name="agree1" value="Y"></th>
          <th>NO</th>
          <th>��������</th>
          <th>�������ü</th>
          <th>����</th>
          <th>����</th>
          <th>����</th>
          <th>����</th> 
          <th>�������</th>
          <th>�ڱ�����������</th>
          <th>����������</th>
          <th>������</th>
          <th>�索����</th>
          <th>�Ż籸ü������</th>
          <th>Ű</th>
          <th>������</th>
          <th>ü��������</th>
          <th>�㸮�ѷ�</th>
          <th>����(�����)</th>
          <th>����(�̿ϱ�)</th>
          <th>������</th>
          <th>��������</th>
          <th>��ȭ������</th>
          <th>���ݷ����׷�</th>
          <th>��е��ݷ����׷�</th>
          <th>�߼�����</th>
          <th>���е��ݷ����׷�</th>
          <th>�½ɽǺ��</th>
          <th>��ܹ�</th>
          <th>�׻󵿸ư�ȭ��</th>        
          <th>�����м�������</th>
          <th>�索</th>
          <th>������</th>
          <th>������</th>
          <th>�ϰ�����������</th>
          <th>������ȯ</th>
          <th>�ɱٰ����</th>
          <th>������</th>
          <th>���󵿸���Ǽ�</th>
          <th>�ɺ�����</th>
          <th>����������ȯ</th>

      </thead>
      <tbody>
        <tr>          
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
        
      </tbody>
    </table>
    </div>
    <!-- //���̺�01 -->

   

    
  <div class="paging">
  
  
  
    <a href="#n" onclick="return page.goPage(this, 1)" class="current">1</a>
  
    <a href="#n" onclick="return page.goPage(this, 2)">2</a>
  
    <a href="#n" onclick="return page.goPage(this, 3)">3</a>
  
    <a href="#n" onclick="return page.goPage(this, 4)">4</a>
  
    <a href="#n" onclick="return page.goPage(this, 5)">5</a>
  
    <a href="#n" onclick="return page.goPage(this, 6)">6</a>
  
    <a href="#n" onclick="return page.goPage(this, 7)">7</a>
  
    <a href="#n" onclick="return page.goPage(this, 8)">8</a>
  
    <a href="#n" onclick="return page.goPage(this, 9)">9</a>
  
    <a href="#n" onclick="return page.goPage(this, 10)">10</a>
  
  <a href="#n" class="next" onclick="return page.goPage(this, 11)">����</a>
  <a href="#n" class="last" onclick="return page.goPage(this, 20)">��</a>
</div>
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