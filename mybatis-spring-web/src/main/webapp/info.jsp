<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
		Member member = (Member) session.getAttribute("loginInfo");
%>
<body>
<head>
<link href="_resource/css/common.css" rel="stylesheet" />
<link href=_resource/css/register.css rel="stylesheet" />
<title>Grab Bucket List : 버킷 리스트 회원정보 관리</title>
</head>
<body>
<jsp:include page="navi-header.jsp"></jsp:include> 

<div id="contents">
    <div class="reg_content">
        <h2>회원정보 관리</h2>
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
                                <img src="_resource/_web/images/register/ico_profile.png" alt="" class="img">
                            </div>
                        </dd>
                        <dt>이메일</dt>
                        <dd>
                            <span><%= member.getmEmail() %></span>
                        </dd>
                        <dt>이름</dt>
                        <dd>
                            <span><%= member.getmName() %></span>
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
                    </dl>
                </form>
            </div>
            <div class="btn_area">
                <a href="javascript:inputCheck();" class="btn_click btn_info_modify mot2" onclick='eventTrack("", "member_info_btn_modify");'>정보 수정 완료 </a>       
                    <a href="Main_mypage_changePw" class="btn_pw_change mot2">비밀 번호 변경</a>         
                <a href="Main_mypage_drop" class="btn_leave mot2">탈퇴하기</a>
            </div>
        </div>
    </div>
</div>   

<jsp:include page="navi-footer.jsp"></jsp:include>   

</body>


</html>

 