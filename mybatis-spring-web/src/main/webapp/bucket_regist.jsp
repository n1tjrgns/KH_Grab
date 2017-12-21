<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
   <link href="_resource/css/register.css" rel="stylesheet">
    <link href="_resource/css/common.css" rel="stylesheet">
   <title>GRAB</title>

</head>
<style>
body{background-image:url('_resource/images/양피지.jpg');}
div.reg_form{background-color:white;}
</style>
<body >

    <form name="joinForm" id="joinForm" class="member-form" action="discover/bucket_resist.do" method="get" enctype="multipart/form-data" >
    <div class="reg_content">
		<center>
	         <img src="_resource/images/logo_big.jpg" alt="로고"/>  <br><br>
	    </center>
 	      
        <h2>버킷 등록하기</h2>
         
        <br/><br/> 
        <div class="reg_box">
        <br/>
            <div class="reg_form">
                <div class="input_box email_reg_name">
                <input type="text" placeholder="버킷이름(50글자 이내)" name="bkName" maxlength="50">
                </div>
                <div class="email_box">
                    <div class="input_box email_reg_email">
                        <input type="text" placeholder="시작일" name="bkDate" maxlength="30" >
                    </div>
                    <div class="dot">/</div>
                    <div class="input_box email_reg_email2">
                        <input type="text" placeholder="업체 ID" name="cEmail" maxlength="20">
                    </div>
                    <select id="email_reg_select" class="email_reg_select" name="bkPurpose">
                        <option>버킷 목적</option>
                        <option>Travel</option> <option>Sport</option> <option>Food</option>
                        <option>New Skill</option> <option>Culture</option> <option>Outdoor</option>
                        <option>Shopping</option> <option>LifeStyle</option>
                    </select>
                </div>
                <div class="password_box">
                    <div class="input_box email_reg_password">
                        <input type="text" placeholder="마감 날짜를 YYYY-MM-dd 형식으로 적어주세요 " min="2017-01-01" max="2020-12-31" name="bkDue" >
                    </div>
                    <div class="input_box email_reg_password_check">
                        <input  type="text" placeholder="최대 참여 가능 인원" maxlength="5" name="bkMax"> 
                    </div>
                </div>
       
                <p class="txt">1000글자 이내 버킷에 대한 설명을 추가해주세요.</p>
                
           		    <div class="text_box">
                        <div class="clearfix">
                    	
                     <textarea rows="20" cols="70" placeholder="내용 1000글자 이내" maxlength="1000" name="bkContent"> </textarea>
                        </div>
        
      			   <p class="txt">첨부할 사진을 등록해주세요</p>
      			    <div class="input_box email_reg_password_check">
                        <input type="file" placeholder="사진첨부" name="photoURL" >
                    </div>
                </div>
       
            </div>
            
            
            
            <div class="reg_form bottom">
                <div class="agree_box">
                <h3> 
                <input type="checkbox" name ="bkCheck">
                       <span class="title">리뷰를 공개하시겠습니까?</span>
                    </h3>
                    <div class="table_box">
                        <table>
                            <caption>개인정보 위탁 고지</caption>
                            <colgroup>
                                <col width="200px">
                                <col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>수탁자</th>
                                <th>위탁업무</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>GRABS&amp;C㈜</td>
                                <td>웹사이트 유지보수, 웹사이트를 통한 개인정보의 수집·보관, 이메일 발송</td>
                            </tr>
                            <tr>
                                <td>KH</td>
                                <td>웹사이트 시스템 관리/운영 유지보수</td>
                            </tr>
                            <tr>
                                <td>CREDFLAG</td>
                                <td>웹사이트 시스템 관리/운영 유지보수</td>
                            </tr>
                            </tbody>
                        </table>
               
                    </div>
                </div>
            </div>
              <br/><br/>
            <div class="btn_area">
                <a href="#" class="btn_click btn_register mot2" onclick="joinForm.submit();">등록 하기</a>
                <a href="#" class="btn_cancel mot2" onclick="javascript:check();">취 소</a>
            </div>
            
            <p class="bottom_txt">
                * GRAB 버킷 리스트는 <span>사익을 </span> 추구하지 않습니다!<!-- 2017-03-13 -->
            </p>
        </div>
    </div>
    </form>

<script>
function check(){
var retVal = confirm("정말 작성중인 문서를 파기하시겠습니까?");

	if( retVal == true ){
		location.reload();
	}else{
	   alert("계속 진행해 주세요.");
	}
}
</script> 
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>
<script src="_resource/js/register.js"></script>
<script src="_resource/js/common_biz.js"></script>
</body>




</html>