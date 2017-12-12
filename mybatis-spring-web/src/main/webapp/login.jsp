<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="_resource/_web/css/login.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navi-header.jsp"></jsp:include> 

<h1><a href="Main"><img src="_resource/_web/images/common/logoText.png" class="logo_img" alt="grabIcon"></a></h1>
<script href="/ajax.js"> </script>
<div class="pop_login">
       <div class="login_box">
            
            <div class="email_box">
                <h3>정보 입력</h3>
                <div class="input_area">
                    <form action="https://www.lifeplusbucket.com/member/login.do" id="__loginForm__" method="post">
                    	<input type="hidden" name="_returnURL_" id="_returnURL_" value="">
                    	<input type="hidden" name="_sns_type_" id="_sns_type_" value="">
                    	
                    	<input type="hidden" name="_sns_id_" id="_sns_id_" value="">
                    	<input type="hidden" name="_sns_pimage_" id="_sns_pimage_" value="">
                    	<input type="hidden" name="_sns_nm_" id="_sns_nm_" value="">
                    	<input type="hidden" name="_sns_email_" id="_sns_email_" value="">
                        <input type="hidden" name="_sns_age_" id="_sns_age_" value="">
                        <input type="hidden" name="_sns_birthday_" id="_sns_birthday_" value="">
                        <input type="hidden" name="_sns_gender_" id="_sns_gender_" value="">
                      	<input type="hidden" name="pcode" id="pcode" value="login">
                    	<input type="hidden" name="save_email_flg" id="save_email_flg" value="">   
                    	
                    	 
                        <div class="input_box email login_email">
                            <input type="text" placeholder="이메일 주소" name="_login_email_" id="_login_email_" value="" maxlength="35">
                        </div>
                        <div class="input_box password login_password">
                            <input type="password" placeholder="비밀번호" name="_login_passwd_" id="_login_passwd_" onkeypress="checkLoginPassswordKeyPress(event);" maxlength="25">
                        </div>
                    </form>
                </div>
                <a href="javascript:loginInputCheck();" class="btn_login" onclick='eventTrack("", "login_btn_email");'>로그인</a>
                <div class="btn_link">
                    <a href="javascript:void(0);" class="btn_email_save ">이메일 저장</a>
                 
                    <a href="Main_login_find" class="btn_pw_find">비밀번호 찾기</a>
                    <a href="Main_login_regist1" class="btn_register" onclick=''>이메일 회원가입</a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>

