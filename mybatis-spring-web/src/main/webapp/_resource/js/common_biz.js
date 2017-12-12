  String.prototype.only_number = function(){
   return this.replace(/[^0-9]/gi, '');
  };

function comReadURLImage(input,presrc) {
   	if (input.files && input.files[0]) {
 		var reader = new FileReader();
		reader.onload = function (e) {
			$('#'+presrc).attr('src', e.target.result);
  		};
		reader.readAsDataURL(input.files[0]);
	}
}
function comCheckNull(objName,alertMsg,bFocus){
	var obj = $(objName);
	var ret = true;
	if( bFocus == undefined){
		bFocus = true;
	}
	if(obj != undefined){
		if( obj.val() == ""){		
			ret = true;
		}else{
			ret = false;
		}
	}else{
		ret = true;
	} 
	
	if( ret == true){
		if( alertMsg != undefined && alertMsg != "" ){
			alert(alertMsg);
			if( bFocus ){
				obj.focus();
			}
		}
	}
	return ret;
	
}



function comSetRadioValue(name,value){
 	comSetValue("radio",name,value);
}
function comSetTextValue(name,value){
	comSetValue("text",name,value);
}
function comSetTextAreaValue(name,value){
	comSetValue("textarea",name,value);
}
function comSetSelectBoxValue(name,value){
	comSetValue("selectbox",name,value);
}
function comSetCheckBoxValue(name,value){
	comSetValue("checkbox",name,value);
}
function comSetValue(type,name,value){
	switch(type){
	case "radio":
		$("input[name=\""+name+"\"][value=\""+value+"\"]").attr("checked","checked");
		break;
	case "selectbox":
		if( $("select[name="+name+"] option[value=\""+value+"\"]").length>0 && value!="") {
			$("select[name=" + name + "]").val(value).attr("selected", "selected");
			var idx = $("select[name=" + name + "] option[value=\"" + value + "\"]").index() - 1;
			$("select[name=" + name + "]").easyDropDown('select', idx);
		}

		break;		
	case "checkbox":
		$("input[name="+name+"][value="+value+"]").attr("checked","checked");
		break;	
	case "text":
		$("input[name="+name+"]").val(value);
		break;	
	case "textarea":
		$("textarea[name="+name+"]").val(value);
		break;	
	}	
 }

function comMaskDate(dateObj,msg ){
	dateObj.datepicker({
		dateFormat: "yy-mm-dd"
		,showOtherMonths: true
		,selectOtherMonths: true
		//,numberOfMonths: 3
		,showButtonPanel: true
		,regional:"kr"
 		
	});
	
	 
	dateObj.change(function(){
		var v = $(this).val();
		v=v.replace(/[-_]/gi, '');
 		if( v != "" && Date.parseExact($(this).val(), "yyyy-M-d") == null ){
			alert(msg);
			$(this).focus();
		}			
	});
	dateObj.mask("9999-99-99");
		
}

function comGetToday(){
	return Date.today ();
}

function comAddDays(dayNum, baseDate){
   	if( typeof(baseDate) == "undefined"){
		return 	Date.today().addDays(dayNum);
	}else{
		return baseDate.addDays(dayNum);
	}
	
}

function comAddWeeks(weekNum,baseDate){
   	if( typeof(baseDate) == "undefined"){
		return 	Date.today().addWeeks(weekNum);
	}else{
		return baseDate.addWeeks(weekNum);
	}	
}
function comAddMonths(monthNum,baseDate){
   	if( typeof(baseDate) == "undefined"){
 		return 	Date.today().addMonths(monthNum);
	}else{
		return baseDate.addMonths(monthNum);
	}		
}
/*
 * -1: 두번째 파라메터가 에 값이 클때
 * 0 : 값이 같을때
 * 1 : 첫번째 파라메터가 에 값이 클때
 */
function comCompareDate(date1,date2){
	var tt = date1.compareTo (date2 );	
 	return tt ;
}


function comReadOnlyObject(obj, flg){
	alert(1)
	if( flg ){
		alert(2)
		obj.attr("readonly", "readonly") ;
alert(3)
	}else{
		obj.removeAttr("readonly") ;
	
	}
}
function comDisableObject(obj, flg){
	if( flg ){
		obj.attr("disabled", true) ;
	}else{
		obj.removeAttr("disabled") ;

	}
}

//-----------------------------------------------------------------------------
// 텍스트필드 널값체크..
// @return : null
// ex) chkNull(필드, 경고메세지);
//-----------------------------------------------------------------------------
function chkNull(oElement, strMessage){
	if(oElement.value.trim() == ""){
		alert(strMessage + " 입력해주세요.");
		oElement.value = "";
		oElement.focus();
		return true;

	} else{
		return false;
	}
}


//영문 + 숫자 혼용인지 체크
	function chkEngNumMix(str){
		var chk_num = str.search(/[0-9]/g);
		var chk_eng = str.search(/[a-z]/ig);
 
		if(chk_num < 0 || chk_eng < 0 ||  !str.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ){
			
			return false;
		}
		return true;
	}

	function chkCharMixCnt(str){
		var chk_num = str.search(/[0-9]/g);
		var chk_eng = str.search(/[a-z]/ig);
		var cnt = 0;
		if(chk_num >= 0 ){
			cnt++;
			
		}
		if ( chk_eng >= 0 ){
			cnt++;
		}
		if(str.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ){
			
			cnt++;
		}
		return cnt;
	}
	
	function checkUserName(str){
		var chk_num = str.search(/[0-9]/g);
		var cnt = 0;
		if(chk_num >= 0 ){
			cnt++;	
		}
		if(str.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ){	
			cnt++;
		}
		if( cnt == 0 ){
			return true;
		}else{
			return false;
		}
	}
	/*---------------------------------------------------------------------------------*\
	*  KeyUp 이벤트 발생시..
	\*---------------------------------------------------------------------------------*/
	//-----------------------------------------------------------------------------
	// 한글만 입력가능하게 한다.
	// @return : null
	// ex) (text-field).onkeyup = onlyKorean;
	//-----------------------------------------------------------------------------
	function onlyKorean() {
		var oElement = (arguments[0] != null) ? arguments[0] : this;
		var charChk;

		for(var i=0; i<oElement.value.length; i++){
			charChk = oElement.value.charCodeAt(i);

			if(charChk > 31 && charChk < 127) {
				alert("공백없이 한글로만 입력해주세요.");
				oElement.value = oElement.value.substring(0, i);
				oElement.focus();
				return;
			}
		}
	}


	//-----------------------------------------------------------------------------
	// 숫자만 입력가능하게 한다.
	// @return : null
	// ex) (text-field).onkeyup = onlyNumber;
	//-----------------------------------------------------------------------------
	function onlyNumber() {
		var oElement = (arguments[0] != null) ? arguments[0] : this;
		var charChk;

		for(var i=0; i<oElement.value.length; i++){
			charChk = oElement.value.charCodeAt(i);

			if(charChk > 57 || charChk < 48){
				alert("공백없이 숫자로만 입력해주세요.");
				oElement.value = oElement.value.substring(0, i);
				oElement.focus();
				return;
			}
		}
	}


	//-----------------------------------------------------------------------------
	// 영문만 입력가능하게 한다.
	// @return : null
	// ex) (text-field).onkeyup = onlyEnglish;
	//-----------------------------------------------------------------------------
	function onlyEnglish() {
		var oElement = (arguments[0] != null) ? arguments[0] : this;
		var charChk;

		for(var i=0; i<oElement.value.length; i++){
			charChk = oElement.value.charCodeAt(i);

			if((charChk < 65 || charChk > 90) && (charChk < 97 || charChk > 122)){
				alert("공백없이 영문으로만 입력해주세요.");
				oElement.value = oElement.value.substring(0, i);
				oElement.focus();
				return;
			}
		}
	}



	//-----------------------------------------------------------------------------
	// 영문과 숫자만 입력가능하게 한다.
	// @return : null
	// ex) (text-field).onkeyup = onlyEngNum;
	//-----------------------------------------------------------------------------
	function onlyEngNum() {
		var oElement = (arguments[0] != null) ? arguments[0] : this;
		var charChk;

		for(var i=0; i<oElement.value.length; i++){
			charChk = oElement.value.charCodeAt(i);

			if( ((charChk < 65 || charChk > 90) && (charChk < 97 || charChk > 122)) && (charChk > 57 || charChk < 48) ){
				alert("공백없이 영문과 숫자로만 입력해주세요.");
				oElement.value = oElement.value.substring(0, i);
				oElement.focus();
				return;
			}
		}
	}



	function SetCookie(cKey, cValue,day)  // name,pwd
	{
	    var date = new Date(); // 오늘 날짜
	    // 만료시점 : 오늘날짜+10 설정
	    var validity = day;
	    date.setDate(date.getDate() + validity);
	    // 쿠키 저장
	    document.cookie = cKey + '=' + escape(cValue) + ';expires=' + date.toGMTString();
	 }

	function DelCookie(cKey) {
	    // 동일한 키(name)값으로
	    // 1. 만료날짜 과거로 쿠키저장
	    // 2. 만료날짜 설정 않는다. 
	    //    브라우저가 닫힐 때 제명이 된다    

	    var date = new Date(); // 오늘 날짜 
	    var validity = -1;
	    date.setDate(date.getDate() + validity);
	    document.cookie =
	          cKey + "=;expires=" + date.toGMTString();
	}

	function GetCookie(cKey) {
	    var allcookies = document.cookie;
	     var cookies = allcookies.split("; ");
	    for (var i = 0; i < cookies.length; i++) {
	        var keyValues = cookies[i].split("=");
	        if (keyValues[0] == cKey) {
	            return unescape(keyValues[1]);
	        }
	    }
	    return "";
	}
	
	//<!-- 공유하기 스크립트-->
	function twitterShareURL(url,msg,serviceNm,serviceType,key){
		var request = gapi.client.urlshortener.url.insert({
       		  'resource': { 'longUrl':url}
       	  });
       	  request.execute(function(response) {
       	    var shortUrl = response.id;
       	    //alert( )
    		var href = "";
    		var name = "";
    		var pageURL = response.id ;
    		target="_blank";
    		href = "http://twitter.com/share?url="+encodeURIComponent(pageURL)+"&text="+ msg;
    		name = "twitter";
    		updateShareCnt(serviceNm,serviceType,key);
    		window.open(href,'popwin', 'width=400,height=364,scrollbars=no,resizable=no');
       	  });   		
	}

	function facebookShareURL(url,msg,serviceNm,serviceType,key){
 
		var facebookMsg= msg;
		var facebookUrl= url;
		var facebookLinkURL = facebookMsg + facebookUrl;
		var str = facebookMsg + facebookUrl;
		var pageURL = url;
		url ="http://www.facebook.com/sharer.php?u="+ encodeURIComponent(pageURL) + "&t=" + encodeURIComponent(facebookLinkURL); 
		target="_blank";
		updateShareCnt(serviceNm,serviceType,key);
		window.open(url,'popwin', 'width=400,height=364,scrollbars=no,resizable=no');
		//window.open(url,target);
	}

	function kakaoShareURL(url,msg,serviceNm,serviceType,key){
		var kakaoUrl= url;
		url ="https://story.kakao.com/share?url="+ encodeURIComponent(kakaoUrl);
		updateShareCnt(serviceNm,serviceType,key);
		window.open(url,'popwin', 'width=400,height=364,scrollbars=no,resizable=no');
	}
	
	function copy_trackback(url,serviceNm,serviceType,key) {
		
    	var request = gapi.client.urlshortener.url.insert({
     		  'resource': { 'longUrl':url}
     	  });
     	  request.execute(function(response) {
     	    var shortUrl = response.id;

  		var IE=(document.all)?true:false;
  		
  		 
  		if (IE) {
  		if(confirm("아래 URL을 전체선택하여 복사하시겠습니까?"))
  			window.clipboardData.setData("Text", shortUrl);
  		} else {
  			temp = prompt("아래 URL을 전체선택하여 복사하실 수 있습니다", shortUrl);
  		}

  	  });   		
	
		
	}
	 
	
	function scrapMonthly(login,serviceNm,serviceType,key){
		if( login == 'false'){
			alert("로그인이 필요합니다.");
			location.href="/member/loginForm.do"
		}else{
 			updateShareCnt(serviceNm,serviceType,key);
		}
	}
	function updateShareCnt(serviceNm,serviceType,key){

		if( serviceNm != undefined){
			$.ajax( // 화면의 데이타를 조회한다.
					{
						 
						url:"/commoncode/updateCnt.do",
						dataType:"json",
						type:"POST",
						async:true,
						data:{
							search_param1:serviceNm
							,search_param2:serviceType	
							,search_param3:key					
							
						},
						success:function( listTmpAry ) {
							if( serviceNm == "MONTHLY" &&  serviceType == "SCRAP"  ){
 								if( listTmpAry.dataObject.code == "9"){
									alert('이미 보관된 기사입니다.');
								}else{ 
									alert('보관 되었습니다. 마이페이지에서 확인 가능합니다.');
								}
							}
		 					 

		 				},
						error : function( e ) {
							//alert("조회 오류 1-\n"+e.error);
						}
					}
				);	
		}
		
	}
	//<!--  // 공유하기 스크립트-->	
	function goLoginForm(){
		///member/loginForm.do
 		location.href="/member/loginForm.do?returnUrl="+encodeURIComponent(window.location.href);
	}
	
	
	function eventSave(em_seq){
 		$.ajax( // 화면의 데이타를 조회한다.
				{
					 
					url:"/ln/event/eventSave.do",
					dataType:"json",
					type:"POST",
					async:true,
					data:{
						em_seq:em_seq	,		
						user_agent:"P"			
					},
					success:function( data ) {
						/*
 						if(data.dataObject.code == "0"){//정상
							//var cnt = data.dataObject.cnt;
							//changeMystatus(cnt);
							//alert("이벤트에 참여 하셨습니다.111");
							
						}else if(data.dataObject.code == "1"){//이미참여
							$("#doubleApply").trigger("click");
						}else if(data.dataObject.code == "2"){//지난이벤트
							alert("종료된 이벤트입니다.111");							
						}else if(data.dataObject.code == "3"){//미시작이벤트
							alert("시작되지 않은 이벤트입니다.111");						
						}else if(data.dataObject.code == "99"){//파라메터오류
							alert("잘못된 파라메터입니다.111");						
							
						}
						*/
 
	 				},
					error : function( e ) {
						//alert("조회 오류\n"+e.error);
					}
				}
			);			
	}
	function eventSaveView(em_seq){
 		$.ajax( // 화면의 데이타를 조회한다.
				{
					 
					url:"/event/eventSaveView.do",
					dataType:"json",
					type:"POST",
					async:true,
					data:{
						em_seq:em_seq,		
						user_agent:"P"
					},
					success:function( data ) {
						/*
 						if(data.dataObject.code == "0"){//정상
							//var cnt = data.dataObject.cnt;
							//changeMystatus(cnt);
							//alert("이벤트에 참여 하셨습니다.111");
							
						}else if(data.dataObject.code == "1"){//이미참여
							$("#doubleApply").trigger("click");
						}else if(data.dataObject.code == "2"){//지난이벤트
							alert("종료된 이벤트입니다.111");							
						}else if(data.dataObject.code == "3"){//미시작이벤트
							alert("시작되지 않은 이벤트입니다.111");						
						}else if(data.dataObject.code == "99"){//파라메터오류
							alert("잘못된 파라메터입니다.111");						
							
						}
						*/
 
	 				},
					error : function( e ) {
						//alert("조회 오류\n"+e.error);
					}
				}
			);			
	}	
	//-----------------------------------------------------------------------------
	// 이메일 유효성 검증..
	// @return : boolean
	// ex1) isEmail(필드);
	// ex2) isEmail(필드1, 필드2);
	// ex3) isEmail(필드1, 필드2, 경고메세지);
	// ex4) isEmail(필드1, null, 경고메세지);
	//-----------------------------------------------------------------------------
	function isEmail() {
		var strEmail;
		var strMessage = (arguments[2]) ? arguments[2] : "이메일이 부정확합니다.";


		if(!arguments[0]) {
			alert("이메일을 입력하세요");
			return false;

		} else if(arguments[0] && !arguments[1]) {
			strEmail = arguments[0];

		} else {
			strEmail = arguments[0] + "@" + arguments[1];

		}
		var re=/^[0-9a-zA-Z-_\.]*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		if( re.test(strEmail) ){
			if( strEmail.length > 100){
				alert("email을 100자 이내로 입력 하세요.");
				return false;
			}
			return true;

		} else{
			alert(strMessage);

			return false;
		}
	}
	
	
	function goMobilePage(){

		
	 	var href = location.href;
		href=href.replace(/:\/\/www/g,"://m");
		location.href = href;

		
	}
	
	/*
	* 생년월일로 (만)나이 구하기
	* @PARAM 생년월일 (format: YYYY/MM/DD or YY/MM/DD or YYYY-MM-DD or YY-MM-DD)
	* @return CONSOLE.LOG
	*/
	function getAgeFromBirthDay(birth_day) {
	var birthday = new Date(birth_day);
	var today = new Date();
	var years = today.getFullYear() - birthday.getFullYear();
	return years;
	}
	

