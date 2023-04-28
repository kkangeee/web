<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<H2> 공지사항 팝업</H2>
 
<form name="checkClose">
	 	 <input type="checkbox" name="mainPop" onclick="closeWin()">오늘 하루 그만 보기
	 	 <br><input type="button" onclick="selfclose()" value="닫기">
</form>


<script>

function setCookie(name, value, expiredays){
	   var todayDate = new Date();
	   todayDate.setDate(todayDate.getDate() + expiredays);
	   document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	  }
	  
function closeWin(){
	 if(document.checkClose.mainPop.checked){
	 	setCookie( "mainPop", "1" , 1);
	 }
	 self.close();
}

function selfclose(){
	 self.close();
}

</script>