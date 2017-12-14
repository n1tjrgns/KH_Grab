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
                    <form action="login_process.do" id="__loginForm__" method="post">
                        <div class="input_box email login_email">
                            <input type="text" placeholder="이메일 주소" name="mEmail" id="_login_email_" value="" maxlength="35">
                        </div>
                        <div class="input_box password login_password">
                            <input type="password" placeholder="비밀번호" name="mPw" id="_login_passwd_" onkeypress="checkLoginPassswordKeyPress(event);" maxlength="25">
                        </div>
                        <div class="input_box loginbtn">
                        	<input type="submit" value="로그인">
                        </div>
                    </form>
                </div>
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

