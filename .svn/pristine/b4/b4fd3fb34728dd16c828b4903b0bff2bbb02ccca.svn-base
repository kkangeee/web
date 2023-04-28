<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/include/common.jsp"%>

<!DOCTYPE html>

<c:set var="path" value="${pageContext.request.contextPath}" />

<link href="${pageContext.request.contextPath}/fullcalendar/main.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/fullcalendar/main.js"></script>
<script src="${pageContext.request.contextPath}/fullcalendar/locales-all.min.js"></script>
<script src="${pageContext.request.contextPath}/fullcalendar/locales/ko.js"></script>
<script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
<script src="https://unpkg.com/tippy.js@6"></script>

<!-- #location
<div id="location" class="">
	<ul>
		<li>
			<button onclick="$(this).toggleClass('active').next().slideToggle();" class="">스케쥴관리</button>
			<ul class="dropdown-list clear-able" style="display: none;">
				<li><a href="/page/KW50000/KW50000U1100.do">스케쥴관리</a></li>
			</ul>
		</li>

	</ul>
</div>
 -->
 
<!-- #container -->

<div id="container">

	<div class="headline sub_headline sub_headline01">
		<div class="inner">
			<h1>스케쥴관리</h1>
		</div>
	</div>

	<div class="inner">
		<!-- 하단여백 섹션으로 구분 -->
		<section id="content">
			<div class="con_area">
			</div>
				<!-- ▼ 정보입력 영역 -->
				<div class="mt20">
					<!-- ▼ 타이틀 영역 -->
					<div class="con_section ">
					</div>
					<!-- fullcalendar -->
					<div id='calendar'></div>
				</div>
		</section>
	</div>
</div>

<!-- 컨텐츠 -->
<!-- //#container -->

<div class="util-bottom">
	<div class="inner">
		<a class="btn-top" href="#wrap"
			onclick="$(window).scrollTop(0); return false;">위로</a>
	</div>
</div>

<!-- modal -->
<section id="myModal" class="modal">

	<div class="modal-content">
		<!-- 테이블01 -->
		<div class="TBover">
			<!--  <div class="tex_r">
				<label> 
				<span class="input-checkbox ml5"> 
					<input type="checkbox" name="agree1" value="Y"> <i></i>
				</span>화상회의룸 생성
				</label>
			</div> -->
        
			<h3>일정등록</h3>
			<table style="border-top: 2px solid #f5f5f5" class="board-list board-list_left">
				<colgroup>
					<col width="90px">
					<col width="300px">
				</colgroup>
				<tbody>
					<tr>
						<!--<td>
							<select class="select_bd_tit p100" name="searchType"
								style="height: 56px;">
									<option value="">업무</option>
							</select>
						</td>-->
						<td style="padding-left: 0px;" colspan="2">
							<input type="text" id="title" value="" class="p100" placeholder="일정명">
						</td>
					</tr>
					<!--  <tr>
						<td colspan="2"><input type="text" id="entsrNo" value="장소"
							class="p100"></td>
					</tr>-->
					<!--  <tr>
						<td colspan="2" class="">
						<label for="entsrNo">
								<div class="textCt">
									<a href="javascript:location.href='join01.php';"class="btn_round btn_Gray_ddd w180"><span>회의실 예약</span></a> 
									<a href="javascript:location.href='join01.php';"
									class="btn_round btn_Gray_ddd w180"><span>공용설비 예약</span></a> 
									<label>
										<span class="input-checkbox  ml3"> 
											<input type="checkbox" name="agree1" value="Y"> <i></i>
										</span>화상회의룸 생성
									</label>
								</div>
						</label>
						</td>
					</tr> -->
					<tr>
						<th class="tit tit2">시작일</th>
						<td>
							<input style="height: 40px" type="date" id="dateSt" placeholder="yyyy-MM-dd" class="" value=""> 
							<input type="time" title="시간" id="startTime" name="startTime" class="" value=""> 
							<!--<label> 
							<span class="input-checkbox  ml3"> <input type="checkbox" name="agree1" value="Y"> <i></i>
								</span>비공개(시간/내용)
							</label>--> 
							<!--<label> <span class="input-checkbox"> <input
										type="checkbox" name="agree1" value="Y"> <i></i>
								</span>비공개(내용)
							</label>-->
						</td>
					</tr>
					<tr>
						<th class="tit tit2">종료일</th>
						<td>
							<input style="height: 40px" type="date" id="dateEn" placeholder="yyyy-MM-dd" class="" value=""> 
							<input type="time" title="시간" id="endTime" name="endTime" class="" value=""> 
							<!--<label> 
							   <span class="input-checkbox  ml3"> <input id="allDay" type="checkbox" name="agree1" value="Y"> <i></i> 
							</span> 종일
							</label>-->
						</td>
					</tr>
					<!-- <tr>
						<th class="tit" rowspan="2">참여자</th>
						<td>
							<div>
								<label> <span class="input-checkbox"> <input
										type="checkbox" name="agree1" value="Y"> <i></i>
								</span>참여여부확인요청
								</label> <label> <span class="input-checkbox"> <input
										type="checkbox" name="agree1" value="Y"> <i></i>
								</span>메일 발송
								</label> <label> <span class="input-checkbox"> <input
										type="checkbox" name="agree1" value="Y"> <i></i>
								</span>쪽지 발송
								</label>
							</div>
						</td>
					<tr>
						<td><input type="text" id="entsrNo" value="사용자" class="p100">
						</td>
					</tr>-->
					<tr>
						<td style="padding-left: 0px;" colspan="2"><input style="height:100px;" value="" type="text" id="modal_content" class="p100" placeholder="내용"></td>
					</tr>
					<!--  <tr>
						<th class="tit">알림</th>
						<td>

							<div class="">
								<select class="select_bd_tit" name="searchType"
									style="height: 34px;">
									<option value="">사용안함</option>
								</select> <a href="" class="btn_round btn_Gray_ddd w90"><span>메일</span></a>
								<a href="" class="btn_round btn_Gray_ddd w90"><span>쪽지</span></a>
								<a href="" class="btn_round btn_Gray_ddd w90"><span>PUSH</span></a>
								<a href="" class="btn_round btn_Gray_ddd w90"><span>+</span></a>
							</div>

						</td>
					</tr>-->
				</tbody>
			</table>
		</div>
		<!-- <버튼영역> -->
		<div class="textCt pt30 pb100">
			<button onClick="modal_insert()" class="btn_round btn_Blue w180">저장</button> 
			<button onClick="modal_close()" class="btn_round btn_Gray_e4e w180">취소</button>
		</div>
	</div>
	<!-- //테이블01 -->
</section>
<!-- modal -->

<!-- modal -->
<section id="modModal" class="modal">

	<div class="modal-content">
		<!-- 테이블01 -->
		<div class="TBover">
			<h3>일정수정</h3>
			<table style="border-top: 2px solid #f5f5f5" class="board-list board-list_left">
				<colgroup>
					<col width="90px">
					<col width="300px">
				</colgroup>
				<tbody>
					<tr>
						<td style="padding-left: 0px;" colspan="2">
							<input type="text" id="mod_title" value="" class="p100" placeholder="일정명">
						</td>
					</tr>
					<tr>
						<th class="tit tit2">시작일</th>
						<td>
							<input style="height: 40px" type="date" id="mod_dateSt" placeholder="yyyy-MM-dd" class="" value=""> 
							<input type="time" title="시간" id="mod_startTime" name="startTime" class="" value=""> 
					
						</td>
					</tr>
					<tr>
						<th class="tit tit2">종료일</th>
						<td>
							<input style="height: 40px" type="date" id="mod_dateEn" placeholder="yyyy-MM-dd" class="" value=""> 
							<input type="time" title="시간" id="mod_endTime" name="endTime" class="" value=""> 
						</td>
					</tr>
					<tr>
						<td style="padding-left: 0px;" colspan="2"><input style="height:100px;" value="" type="text" id="mod_modal_content" class="p100" placeholder="내용"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- <버튼영역> -->
		<div class="textCt pt30 pb100">
<!-- 			<a href="javascript:location.href='join01.php';" class="btn_round btn_Gray_ddd w180"><span>상세등록</span></a>  -->
			<input id="contentId" type="hidden" value="">
			<button onClick="modal_modify()" class="btn_round btn_Blue w100">수정</button> 
			<button onClick="modal_delete()" class="btn_round btn_Blue w100">삭제</button> 
			<button onClick="mod_modal_close()" class="btn_round btn_Gray_e4e w100">취소</button>
		</div>
	</div>
	<!-- //테이블01 -->
</section>
<!-- modal -->

<script>	

	//document.addEventListener('DOMContentLoaded',function() => {
		//페이지 로딩시 리스트 호출
		$(document).ready(function() {
			getPage();
		})	

		
		function getPage() {
			var request = $.ajax({
								url : "${pageContext.request.contextPath}/page/KW50000/KW50000U1100fullcalendarList", // 변경하기
								method : "GET",
								dataType : "json"
							});
			request.done(function(data) {
						console.log(data);
						var calendarEl = document.getElementById('calendar');
						var calendar = new FullCalendar.Calendar(calendarEl,
						{
							height : '750px', // calendar 높이 설정
							expandRows : true, // 화면에 맞게 높이 재설정
							//initialDate: '2022-02-07',
							initialView : 'dayGridMonth',
							headerToolbar : {
								left : 'prev,next today',
								center : 'title',
								right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
							},
							
							firstDay: 0,
						 	titleFormat: { // will produce something like "Tuesday, September 18, 2018"
							    month: 'long',
							    year: 'numeric',
							    day: '2-digit'
							},
					
							locale : 'ko', // 한국어 설정
							selectable : true, // 달력 일자 드래그 설정가능
							dayMaxEvents : true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
							selectable : true,
							//selectMirror : true,
							
							//editable : true,
							navLinks : true,
							//droppable : true, // this allows things to be dropped onto the calendar
							eventAdd : function() { // 이벤트가 추가되면 발생하는 이벤트
							},
							
							drop : function(arg) {
								// is the "remove after drop" checkbox checked?
								if (document.getElementById('drop-remove').checked) {
									// if so, remove the element from the "Draggable Events" list
									arg.draggedEl.parentNode.removeChild(arg.draggedEl);
								}
							},
							
							select : function(arg) { // 선택 캘린더 등록
							        var event = calendar.view; // .getEvents() 함수로 모든 이벤트를 Array 형식으로 가져온다. (FullCalendar 기능 참조)
									modal_open(arg) //모달 오픈
							},
							/*-----------------------------
							eventDrop : function(info) {
								
								
								
								//seq번호 넣기
							 	var events = new Array(); // Json 데이터를 받기 위한 배열 선언
								var obj = new Object();
								
								obj.title = info.event._def.title;
								obj.id = info.event._def.publicId;
								
								console.log(JSON.stringify(info.event._instance.range.start).slice(1, 11)+ " " + "09:00:00");
								console.log(JSON.stringify(info.event._instance.range.end).slice(1, 11) + " " + "18:00:00");
								
								$('#contentId').val(obj.id);
								mod_modal_open(); //수정모달 오픈
							
								var param = { 
										  ttl : obj.title,
										  strDt : obj.start,
									      endDt : obj.end,
									      seq : obj.id, 
										  dtl : $('#modal_content').val()
							 	}
							
								$.ajax({					
									url : "${pageContext.request.contextPath}/page/KW50000/KW50000U1100Drop",
									contentType : "application/json",
									data : JSON.stringify(param),
									type : "POST",
									async: false,
									success : function(res) {		
						                 getPage()
									}
								});
								
								/*
								if(confirm("일정을 수정하시겠습니까 ?")){
									
										
								 }
								 
									
							 },
							 --------------------------------*/
							 
							 /*
							 eventDidMount: function(info) {
								 console.log(info);
						            tippy(info.el, {
						                content:  info.event.extendedProps.description,//이벤트 디스크립션을 툴팁으로 가져옵니다. 
						            });
						     },
			                  */   
							 
							 eventClick: function (info){
									 //seq번호 넣기
								 	 var events = new Array(); // Json 데이터를 받기 위한 배열 선언
						        	 var obj = new Object();
						             obj.id = info.event._def.publicId; 
						             $('#contentId').val(obj.id);
						             mod_modal_open(); //수정모달 오픈
						             
		                     },
		                     
							 // data 로 값이 넘어온다. log 값 전달.
							events : data
							
							
							
						});
						
						calendar.render();
					});
			
				request.fail(function(jqXHR, textStatus) {
					alert("Request failed: " + textStatus);
				});
		};
	
	//});
	
	//일정등록창 오픈
	function modal_open(arg){			 
		let modal = document.getElementById('myModal').style.display = "block";
		
		$('#dateSt').val(arg.startStr.substr(0, 4) + '-' + (arg.startStr.substr(5, 2)) + '-' + (arg.startStr.substr(8, 2)));
		
		var m_end = new Date(arg.endStr.substr(0, 4), arg.endStr.substr(5, 2)-1, arg.endStr.substr(8, 2)-1);
		//종료
		let ey = m_end.getFullYear();
		let em = m_end.getMonth()+1;
		let ed = m_end.getDate();
	
		if(parseInt((arg.startStr.substr(5, 2))) + '-' + parseInt((arg.startStr.substr(8, 2))) <= em +'-'+ ed){
			if ((em +'-'+ ed) == (1+'-'+1)){$('#dateEn').val((ey) +'-'+ '01' +'-'+ '01');}
			else if ((em +'-'+ ed) == (1+'-'+0)){$('#dateEn').val((ey) +'-'+ '12' +'-'+ '31');}
			else if ((em +'-'+ ed) == (2+'-'+0)){$('#dateEn').val((ey) +'-'+ '01' +'-'+ '31');}
			else if ((em +'-'+ ed) == (3+'-'+0)){$('#dateEn').val((ey) +'-'+ '02' +'-'+ '28');}
			else if ((em +'-'+ ed) == (4+'-'+0)){$('#dateEn').val((ey) +'-'+ '03' +'-'+ '31');}
			else if ((em +'-'+ ed) == (5+'-'+0)){$('#dateEn').val((ey) +'-'+ '04' +'-'+ '30');}
			else if ((em +'-'+ ed) == (6+'-'+0)){$('#dateEn').val((ey) +'-'+ '05' +'-'+ '31');}
			else if ((em +'-'+ ed) == (7+'-'+0)){$('#dateEn').val((ey) +'-'+ '06' +'-'+ '30');}
			else if ((em +'-'+ ed) == (8+'-'+0)){$('#dateEn').val((ey) +'-'+ '07' +'-'+ '31');}
			else if ((em +'-'+ ed) == (9+'-'+0)){$('#dateEn').val((ey) +'-'+ '08' +'-'+ '31');}
			else if ((em +'-'+ ed) == (10+'-'+0)){$('#dateEn').val((ey) +'-'+ '09' +'-'+ '30');}
			else if ((em +'-'+ ed) == (11+'-'+0)){$('#dateEn').val((ey) +'-'+ '10' +'-'+ '31');}
			else if ((em +'-'+ ed) == (12+'-'+0)){$('#dateEn').val((ey) +'-'+ '11' +'-'+ '30');}
			else {$('#dateEn').val((ey) +'-'+ (em >= 10 ? em : '0' + em) +'-'+ (ed >= 10 ? ed : '0' + ed));}
		} else if(parseInt((arg.startStr.substr(5, 2))) + '-' + parseInt((arg.startStr.substr(8, 2))) == 12+'-'+31){
			$('#dateEn').val(arg.endStr.substr(0, 4) + '-' + arg.endStr.substr(5, 2) + '-' + ed);
		} else {
			$('#dateEn').val(arg.endStr.substr(0, 4) + '-' + arg.endStr.substr(5, 2) + '-' + arg.endStr.substr(8, 2));
		}
		
		//$('#dateSt').val(arg.startStr);
		//$('#dateEn').val(arg.endStr);
		$('#title').val('');
		$('#modal_content').val('');
		if(arg.startStr.substr(11, 8) === null || arg.startStr.substr(11, 8) === ''){
			$('#startTime').val('09:00:00');
			$('#endTime').val('18:00:00');	
		} else{
			$('#startTime').val(arg.startStr.substr(11, 8));
			$('#endTime').val(arg.endStr.substr(11, 8));
		}
		
	}
	
	//일정등록 확인
	function modal_insert(){
		if(confirm("일정을 등록하시겠습니까 ?")){
			var param = { 
						  ttl : $('#title').val(),
						  strDt : $('#dateSt').val() + " " + $('#startTime').val(),
					      endDt : $('#dateEn').val() + " " + $('#endTime').val(),
						  dtl : $('#modal_content').val()
						}
			
			$.ajax({					
				url : "${pageContext.request.contextPath}/page/KW50000/KW50000U1100Insert",
				contentType : "application/json",
				data : JSON.stringify(param),
				type : "POST",
				async: false,
				success : function(res) {		
					 var modal = document.getElementById('myModal').style.display = "none";
	                 getPage()
				}
			});
		}
	}
	
	//수정창 오픈
	function mod_modal_open(obj){
		var modal = document.getElementById('modModal').style.display = "block";
		//if(obj === 1)var modal = document.getElementById('modModal').style.display = "block";
		//if(obj === 2)var modal = document.getElementById('modModal').style.display = "block";
		var seq = {seq : $('#contentId').val()};
		
		$.ajax({
            url: "${pageContext.request.contextPath}/page/KW50000/KW50000U1100View",
            method: "DELETE",
            dataType: "json",
            data: JSON.stringify(seq),
            contentType: 'application/json',
            cache : false,
			async: false,
        	success : function(res) {
        		let strDt = res.strDt.split(" ");
        		let endDt = res.endDt.split(" ");
        		
        		$('#mod_title').val(res.ttl);
        		$('#mod_modal_content').val(res.dtl);
        		$('#mod_dateSt').val(strDt[0]);
        		$('#mod_startTime').val(strDt[1]);
        		$('#mod_dateEn').val(endDt[0]);
        		$('#mod_endTime').val(endDt[1]);
			}
        });
		
	}
	
	//수정
	function modal_modify(){
		if(confirm("일정을 수정하시겠습니까 ?")){
			var param = { 
						  seq : $('#contentId').val(),
						  dtl : $('#mod_modal_content').val(),
						  ttl : $('#mod_title').val(),
						  strDt : $('#mod_dateSt').val() + " " + $('#mod_startTime').val(),
						  endDt : $('#mod_dateEn').val() + " " + $('#mod_endTime').val()
						}
			$.ajax({					
				url : "${pageContext.request.contextPath}/page/KW50000/KW50000U1100Update",
				contentType : "application/json",
				data : JSON.stringify(param),
				type : "POST",
				async: false,
				success : function(res) {		
					var modal = document.getElementById('modModal').style.display = "none";
					getPage()
				}
			});
		}
		
	}
	
	//삭제
	function modal_delete(){
	    if(confirm("일정을 삭제하시겠습니까 ?")){
	    var seq = {seq : $('#contentId').val()};
			
	        $.ajax({
	            url: "${pageContext.request.contextPath}/page/KW50000/KW50000U1100Delete",
	            contentType: 'application/json',
	            method: "DELETE",
	            data: JSON.stringify(seq),
				async: false,
	        	success : function(res) {
	        		var modal = document.getElementById('modModal').style.display = "none";
	        		getPage()
				}
	        });
	      
	    }
	}
	
	//수정모달 닫기
	function mod_modal_close(){
	    var modal = document.getElementById('modModal').style.display = "none";
	}
	//입력모달 닫기
	function modal_close(){
		var modal = document.getElementById('myModal').style.display = "none";
	}

</script>	