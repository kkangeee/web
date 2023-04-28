//jQuery 시작

$(function(){
//alert('확인');

//주요구문
/*
	1) on()
	2) if(){}
	3) attr()  : ★★★화면전환에 중요한 역할을 담당하는 메서드.
	4) preventDefault() :  함수초기화, 자바스크립트 내장함수.
	5) ★★★show(), hide() : 객체의 display 유무를 담당하는 메서드.
*/

//변수의 활용

var $tabList = $('#work').find('.tabs-nav'); //탭 버튼의 묶음을 변수에 담음.
var $tabAnchors = $tabList.find('a'); //탭 버튼을 변수에 담음.
var $tabPanels = $('#work').find('.tabs-panel'); //콘텐츠 묶음을 담음.

//2)  addClass(), removeClass() / 상단초기화

//버튼 (0번인덱스)  --> .active
	$tabAnchors.eq(0).addClass('active');

//콘텐츠는 모든콘텐츠 감추고 
	$tabPanels.hide();
//1번째 콘텐츠만 보이게 합니다.
	$tabPanels.eq(0).fadeIn(1000);




//탭 버튼을 '클릭'하면서 부터 이벤트 시작! 1)

$tabAnchors.on('click',function(event){  //초기화 시키는 함수가 event이므로 동일하게 넣어줘야한다.
	//a링크를 클릭하게 되면 현재 클릭한 인덱스와 이벤트를 지속적으로 받고 실행하게 되면서 정보(데이터)가 쌓이게 되는데
	//이벤트를 초기화하면서 데이터를 지워주고 프로그램의 성능을 원활하게 도와 줄 수 있다.
	
	//함수의 초기화(프로그램 성능에 관한 얘기)
	event.preventDefault();

	//클릭이벤트 발생되었을 때는 이벤트 발생하지 않게 만들기
	if($(this).hasClass('active')){
		
		return; //값을가지고 밖으로 빠져나간다. show를 쓰면 안써도 되지만. fadeIn때문에 초기화해줘야한다.
		
	};




	//버튼의 변화
	//기존에 모든 a태그 안에 있는 .active 삭제.
	$tabAnchors.removeClass('active');

	//현재클릭한 버튼 변경
	$(this).addClass('active');

	//콘텐츠의 변화.
	$tabPanels.hide(); //객체를 감추는 메서드.

	var clickButton = $(this).attr('href'); 
	//alert(clickButton);
	$(clickButton).fadeIn(1000); //객체를 보이게 하는 메서드. css속성을 none으로 해도 보이게됨	
	//fadeIn(default(시간)) : 객체의 불투명도를 높이면서 서서히 나타나게 하는 메서드.
	//fadeOut() : 객체의 불투명도를 낮추면서 서서히 사라지게 하는 메서드.

});

//$tabList.on('click','a',function(){}); :  두개동시에 이벤트가 일어날수 있다.

//1)  trigger()
//$tabAnchors.eq(0).trigger('click');

//2)  addClass(), removeClass() / 상단초기화


}); //jQuery 마침