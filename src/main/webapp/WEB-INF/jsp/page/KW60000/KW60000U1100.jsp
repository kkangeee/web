<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- #location
<div id="location" class="">
	<ul>
		<li><a href="/">Ȩ</a></li>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();"
				class="">��������</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW60000/KW60000U1100.do">��������</a></li>
			</ul>
		</li>
		<li>

			<button onclick="$(this).toggleClass('active').next().slideToggle();">���ù���</button>

			<ul class="dropdown-list clear-able">
				<li><a href="/page/KW60000/KW60000U1100.do">���ù���</a></li>
				<li><a href="/page/KW60000/KW60000U2100.do">������ħ</a></li>
				<li><a href="/page/KW60000/KW60000U3100.do">��ȹ� �ڵ��</a></li>
				<li><a href="/page/KW60000/KW60000U4100.do">���ü���</a></li>
				<li><a href="/page/KW60000/KW60000U5100.do">��������</a></li>
			</ul>
		</li>
	</ul>
</div>
-->


<!-- #container -->
<div id="container">

	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>��������</h1>
		</div>
	</div>

	<div class="inner">
		<!-- �ϴܿ��� �������� ���� -->
		<section id="content">
			<div class="con_area">

				
				<!-- �� Ÿ��Ʋ ���� -->
		        <div class="con_section ">
		            <h2 class="con_sectionTit"><span class="subtit">���ù���</span></h2> 
		        </div>

				<!-- �� �����Է� ���� -->
				<div class="mt20">

					<!-- #content section////////////////////////////// -->
					<section id="content">
						<div class="button-group top">

							<!-- �� ��ư ���� -->
							<!--  <div class="btn_top">            
            <a href="javascript:location.href='join01.php';" class="btn_round btn_plus btn_Tw"><span>�߰�</span></a>
            <a href="javascript:location.href='join01.php';" class="btn_round btn_del btn_Tw"><span>����</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_modi btn_Tw"><span>����</span></a>
            <a href="javascript:location.href='join05.php';" class="btn_round btn_save btn_Tw"><span>����</span></a>
        </div> -->
						</div>

						<!-- ���̺�01 -->
						<!-- Ÿ��� ��� ���ε� ���� ��� ����, OCR�� �ν��Ͽ� ������� �ڵ� �ԷµǾ�� �� -->
						<table class="board-list">
							<colgroup>
								<!-- <col style="width: 130px">
        <col style="width: 160px">
        <col style="width: 130px">
        <col style="width: 160px">
        <col style="width: ">
        <col style="width: ">
        <col style="width: auto"> -->
							</colgroup>
							<thead>
								<tr>
									<th>���ù���</th>
									<th><span class="ic_book">����</span></th>
									<th><span class="ic_book">�����</span></th>
									<th><span class="ic_book">�����Ģ</span></th>
								</tr>

							</thead>
							<tbody>
								<tr>
									<td>����������ǹ�</td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EC%82%B0%EC%97%85%EC%95%88%EC%A0%84%EB%B3%B4%EA%B1%B4%EB%B2%95#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EC%82%B0%EC%97%85%EC%95%88%EC%A0%84%EB%B3%B4%EA%B1%B4%EB%B2%95+%EC%8B%9C%ED%96%89%EB%A0%B9#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EC%82%B0%EC%97%85%EC%95%88%EC%A0%84%EB%B3%B4%EA%B1%B4%EB%B2%95+%EC%8B%9C%ED%96%89%EA%B7%9C%EC%B9%99#undefined');">�ٷΰ���</button></td>
								</tr>
								<tr>
									<td>ȭ�й����� ��� �� �� � ���� ����</td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%ED%99%94%ED%95%99%EB%AC%BC%EC%A7%88%EC%9D%98+%EB%93%B1%EB%A1%9D+%EB%B0%8F+%ED%8F%89%EA%B0%80+%EB%93%B1%EC%97%90+%EA%B4%80%ED%95%9C+%EB%B2%95%EB%A5%A0#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%ED%99%94%ED%95%99%EB%AC%BC%EC%A7%88%EC%9D%98+%EB%93%B1%EB%A1%9D+%EB%B0%8F+%ED%8F%89%EA%B0%80+%EB%93%B1%EC%97%90+%EA%B4%80%ED%95%9C+%EB%B2%95%EB%A5%A0+%EC%8B%9C%ED%96%89%EB%A0%B9#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%ED%99%94%ED%95%99%EB%AC%BC%EC%A7%88%EC%9D%98+%EB%93%B1%EB%A1%9D+%EB%B0%8F+%ED%8F%89%EA%B0%80+%EB%93%B1%EC%97%90+%EA%B4%80%ED%95%9C+%EB%B2%95%EB%A5%A0+%EC%8B%9C%ED%96%89%EA%B7%9C%EC%B9%99#undefined');">�ٷΰ���</button></td>
								</tr>
								<tr>
									<td>ȭ�й���������</td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%ED%99%94%ED%95%99%EB%AC%BC%EC%A7%88%EA%B4%80%EB%A6%AC%EB%B2%95#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%ED%99%94%ED%95%99%EB%AC%BC%EC%A7%88%EA%B4%80%EB%A6%AC%EB%B2%95+%EC%8B%9C%ED%96%89%EB%A0%B9#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%ED%99%94%ED%95%99%EB%AC%BC%EC%A7%88%EA%B4%80%EB%A6%AC%EB%B2%95+%EC%8B%9C%ED%96%89%EA%B7%9C%EC%B9%99#undefined');">�ٷΰ���</button></td>
								</tr>
								<tr>
									<td>���ΰǰ������</td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EA%B5%AD%EB%AF%BC%EA%B1%B4%EA%B0%95%EB%B3%B4%ED%97%98%EB%B2%95#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EA%B5%AD%EB%AF%BC%EA%B1%B4%EA%B0%95%EB%B3%B4%ED%97%98%EB%B2%95+%EC%8B%9C%ED%96%89%EB%A0%B9#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EA%B5%AD%EB%AF%BC%EA%B1%B4%EA%B0%95%EB%B3%B4%ED%97%98%EB%B2%95+%EC%8B%9C%ED%96%89%EA%B7%9C%EC%B9%99#undefined');">�ٷΰ���</button></td>
								</tr>
								<tr>
									<td>�ǰ������⺻��</td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EA%B1%B4%EA%B0%95%EA%B2%80%EC%A7%84%EA%B8%B0%EB%B3%B8%EB%B2%95#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EA%B1%B4%EA%B0%95%EA%B2%80%EC%A7%84%EA%B8%B0%EB%B3%B8%EB%B2%95+%EC%8B%9C%ED%96%89%EB%A0%B9#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EA%B1%B4%EA%B0%95%EA%B2%80%EC%A7%84%EA%B8%B0%EB%B3%B8%EB%B2%95+%EC%8B%9C%ED%96%89%EA%B7%9C%EC%B9%99#undefined');">�ٷΰ���</button></td>
								</tr>
								<tr>
									<td>���蹰����������</td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EC%9C%84%ED%97%98%EB%AC%BC%EC%95%88%EC%A0%84%EA%B4%80%EB%A6%AC%EB%B2%95#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EC%9C%84%ED%97%98%EB%AC%BC%EC%95%88%EC%A0%84%EA%B4%80%EB%A6%AC%EB%B2%95+%EC%8B%9C%ED%96%89%EB%A0%B9#undefined');">�ٷΰ���</button></td>
									<td><button type="submit" id="search" class="btn_His2"
											onclick="window.open('https://www.law.go.kr/LSW/lsSc.do?section=&menuId=1&subMenuId=15&tabMenuId=81&eventGubun=060101&query=%EC%9C%84%ED%97%98%EB%AC%BC%EC%95%88%EC%A0%84%EA%B4%80%EB%A6%AC%EB%B2%95+%EC%8B%9C%ED%96%89%EA%B7%9C%EC%B9%99#undefined');">�ٷΰ���</button></td>
								</tr>

							</tbody>
						</table>

						<!-- //���̺�01 -->
					</section>
				</div>
			</div>
		</section>
	</div>
	<!-- ������ -->
	<!-- //#container -->

	<div class="util-bottom">
		<div class="inner">
			<a class="btn-top" href="#wrap"
				onclick="$(window).scrollTop(0); return false;">����</a>
		</div>
	</div>