<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="_resource/css/common.css" rel="stylesheet" />
<link href=_resource/css/register.css rel="stylesheet" />

<title>Grab Bucket List : 버킷 리스트 회원정보 관리</title><!-- 2017-03-29 -->
<script>
    var resourcePath = "_resource";
 </script>
</head>
<body>

	<jsp:include page="navi-header.jsp"></jsp:include> 

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
   
<div id="contents">
    <div class="reg_content">
        <h2>업체 회원정보 관리</h2>
        <br><br>
        <div class="reg_box">
            <div class="info_box">
                <form action="https://www.lifeplusbucket.com/ln/member/member_info_save.do"  name="joinForm" id="joinForm"  method="post">
                	<input type="hidden" id="checked_cellular" value="010-9396-1885">
                    <input type="hidden" name="agree_sms" id="agree_sms" value="N">
                    <input type="hidden" name="agree_email" id="agree_email" value="N">
                    <dl class="info_dl">
                        <dt class="first">프로필</dt>
                        <dd class="first">
                            <div class="profile">
                                <!--<a href="javascript:void(0)" class="ico">-->
                                    <!--<img src="/_resource/images/register/ico_profile.png" alt="">-->
                                <!--</a>-->
                                <img src="_resource/_web/images/register/ico_profile.png" alt="" class="img">
                            </div>

                        </dd>
                        <dt>이메일</dt>
                        <dd>
                            <span>ckh0103@naver.com</span>
                        </dd>
                        <dt>이름</dt>
                        <dd>
                            <span>최규하</span>
                        </dd>
                        <dt>연락처</dt>
                        <dd>
                            <select id="member_phone" class="member_phone" name="cell1">
                                <option value="">연락처</option>
                                <option value="010" selected>010</option>
                                <option value="011" >011</option>
                                <option value="016" >016</option>
                                <option value="017" >017</option>
                                <option value="018" >018</option>
                                <option value="019" >019</option>
                            </select>
                            <div class="input_box member_phone1">
                                <input type="tel" maxlength="4" name="cell2" onkeydown="register.numberKeyPress(event);" onpaste="return false;" oncopy="return false;" value="9396">
                            </div>
                            <div class="input_box member_phone2">
                                <input type="tel" maxlength="4" name="cell3" onkeydown="register.numberKeyPress(event);" onpaste="return false;" oncopy="return false;" value="1885">
                            </div>                   
                        </dd>
                 		<dt>업체명</dt>
                 		<dd>
                 			 <div class="input_box email_reg_name">
                    				<input type="text" name="EnterName" maxlength="30">
                			</div>       
                 		</dd>
                 		<dt>업체 종류</dt>
                 		<dd>
                 			 <div class="input_box email_reg_name">
                    				<input type="text" name="EnterKind" maxlength="30" >
                			</div>    
                 		</dd>
                    </dl>                	        
                </form>  
            </div>
            <div class="btn_area">
                <a href="javascript:inputCheck();" class="btn_click btn_info_modify mot2" onclick='eventTrack("", "member_info_btn_modify");'>정보 수정 완료</a>     
                    <a href="./change_password_member.do" class="btn_pw_change mot2" onclick='eventTrack("", "member_info_btn_password");'>비밀 번호 변경</a>         
                <a href="./member_leave.do" class="btn_leave mot2" onclick='eventTrack("", "member_info_btn_leave");'>탈퇴하기</a>
            </div>
        </div>
    </div>
</div>      
<jsp:include page="navi-footer.jsp"></jsp:include>   
<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
<script src="_resource/js/vendor/CustomTW.js"></script>
<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>
<script src="_resource/js/register.js"></script>
</body>
</html>