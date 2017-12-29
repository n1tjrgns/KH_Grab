<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="cscs/_web/cs

s/common.css" rel="stylesheet" />
<link href="cscs/_web/css/register.css" rel="stylesheet" />
    <script>
	function load_google() {
	    gapi.client.setApiKey('AIzaSyBySGWNccSTO9XHnlay_kpBHAWUO1-d3L4');
	    gapi.client.load('urlshortener', 'v1',function(){});
	}
   </script>
   <script src="https://apis.google.com/js/client.js?onload=load_google"></script>
<title>Grab : 버킷 리스트 비밀번호 찾기</title>
<script>
    var resourcePath = "/_resource";
    var webDomain = "http://www.lifeplusbucket.com";
 </script>
</head>
<body>

<jsp:include page="navi-header.jsp"/>

<script> var isMainAlready = true; </script>
<script>
function loginInputCheck(){
	if( $("#_login_email_").val() == ""){
		alert("이메일을 입력하세요.");
		return;
	}
	if( $("#_login_passwd_").val() == ""){
		alert("비밀번호를 입력하세요.");
		return;
	}
		$.ajax( // 화면의 데이타를 조회한다.
				{
					 
					url:"https://www.lifeplusbucket.com/member/login.do",
					dataType:"jsonp",
					jsonp:"callback",
					type:"POST",
					async:true,
					data:{
						_login_email_:$("#_login_email_").val(),
						_login_passwd_:$("#_login_passwd_").val()
					},
					success:function( data ) {
						if(data.code == "0"){
                            NTrackObj.callTrackTag('29441', callbackFn, 11979);
							$("#__loginForm__").submit();
						}else{
							alert("이메일 주소 또는 비밀번호가 정확하지 않습니다.");
						}
 						
	 				},
					error : function( e ) {
						//alert("조회 오류\n"+e.error);
					}
				}
			);	
	
	
	//$("#__loginForm__").submit();
}
function checkLoginPassswordKeyPress(event){
	if(window.event){
	   var code = window.event.keyCode;
	}
	else{
	   var code = e.charCode;
	}

	if(code == 13){
		loginInputCheck()
	}
}

</script>
<script>
function goMyBucket(){
	
	if(!isLogin){
		login.showPop('pop_login',"","http://www.lifeplusbucket.com/ln/mypage/bucket.do");
	}else{
		location.href="/ln/mypage/bucket.do";
	}
}
</script>


<!--NSmart Track Tag Script-->
<script type='text/javascript'>
    callbackFn = function() {};
    var _nsmart = _nsmart || [];
    _nsmart.host = _nsmart.host || (('https:' == document.location.protocol) ? 'https://' : 'http://');
    _nsmart.push([11979, 29407]); // 캠페인 번호와 페이지 번호를 배열 객체로 전달
    document.write(unescape("%3Cscript src='" + _nsmart.host + "n00.nsmartad.com/etc?id=10' type='text/javascript'%3E%3C/script%3E"));
</script>
<!--NSmart Track Tag Script End..-->
<div id="contents">
    <div class="reg_content">
        <h2>비밀번호 찾기</h2>
        	<br><br>
        <div class="reg_box">
            <p class="reg_p">
                아래 회원정보를 입력하시면<br>
                <span>이메일로 임시 비밀번호를 발송</span>해드립니다.
            </p>
            <div class="reg_form find_password">
                <form action="find_password" method="post" id="find_form">
                
                <input type=hidden name="email">
                    <div class="input_box email_reg_name">
                        <input type="text" placeholder="이름" name="mName" maxlength="15">
                    </div>
                    <div class="email_box"> 
                        <div class="input_box email_reg_email">
                            <input type="text" placeholder="이메일" name="mEmail" maxlength="50">
                        </div>
                        
                        
                        
                    </div>
                    <div class="btn_area">
                    <input type="submit" class="btn_click btn_confirm mot2" value ="확 인">
               	 </div>
                </form>
                
            </div>
           
        </div>
    </div>
</div>


<jsp:include page="navi-footer.jsp"/>

</body>
</html>