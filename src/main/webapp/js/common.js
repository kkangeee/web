//jQuery 시작

	var common = {
	
		checkAll : function(){
	           var $checkAll = $('#checkAll');
	               $checkAll.change(function () {
	           var $this = $(this);
	           var checked = $this.prop('checked'); // checked 문자열 참조(true, false)
	           
	           $('input[name="agree1"]').prop('checked', checked);
	         });
      	}, 
	
		ajaxaa : function(url, params, type) {
            // ajax 통신
            $.ajax({
                type : !type ? "GET" : type,            // HTTP method type(GET, POST) 형식이다.
                url : url,//"/test/ajax",      // 컨트롤러에서 대기중인 URL 주소이다.
                data : params,
                async: false,            
                contentType: "application/json",
                success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                    console.log(res);
                    if (params && params.callBackFunc) {
						window[params.callBackFunc](res);
					}
                },
                error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                    alert("통신 실패.")
                }
            });
		}, 
		ajaxFileSend : function(url, params, type, formId) {
			var form = $("#"+formId)[0];
			var formData = new FormData(form);
			for(key in params) {
				formData.append(key, params[key]);
			}
            // ajax 통신
            $.ajax({
                type : "POST",            // HTTP method type(GET, POST) 형식이다.
                url : url,//"/test/ajax",      // 컨트롤러에서 대기중인 URL 주소이다.
                data : formData,  
                enctype: 'multipart/form-data',	
                contentType: false,
                processData: false,
                async: false, 
                cache: false,
                //contentType: "application/json",
                success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                    
                    console.log(res);
                    if (params && params.callBackFunc) {
						window[params.callBackFunc](res);
					}
                },
                error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                    alert("통신 실패.")
                }
            });
		}
	};