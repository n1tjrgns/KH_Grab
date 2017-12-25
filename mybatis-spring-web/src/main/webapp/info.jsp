<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
    <link href="_resource/css/common.css" rel="stylesheet" />
<link href=_resource/css/register.css rel="stylesheet" />
<title>Grab Bucket List : 버킷 리스트 회원정보 관리</title>
<script>
    var resourcePath = "_resource";
    var webDomain = "http://www.lifeplusbucket.com";
 </script>
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
								<div class="formDivList formImageBig">
									<input type="file" name="item_image" id="itemImage"
										class="Hidden">
									<table class="TableList">
										<tr>
											<td><img src="/images/objects/cameraView.png"
												id="itemImageSrc" align="absbottom" border="0"
												onclick="formUploadCheck('#itemImage','/images/objects/cameraView.png');" /></td>
											<td>
												<div class="formDivSubList" id="itemImageCaution"
													class="Hidden"></div>
												
												<div class="formDivSubList">
													<a class="InputButton"
														onclick="formUploadCheck('#itemImage','/images/objects/cameraView.png');">이미지
														선택</a> <input type="checkbox" value="1"
														name="item_image_no_resave" id="item_image_no_resave_y"
														align="absmiddle" /> 
												</div>
											</td>
										</tr>
									</table>
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
                    </dl>
                </form>
            </div>
            <div class="btn_area">
                <a href="javascript:inputCheck();" class="btn_click btn_info_modify mot2" onclick='eventTrack("", "member_info_btn_modify");'>정보 수정 완료 </a>       
                    <a href="changePw.jsp" class="btn_pw_change mot2" onclick='eventTrack("", "member_info_btn_password");'>비밀 번호 변경</a>         
                <a href="memberDrop.jsp" class="btn_leave mot2" onclick='eventTrack("", "member_info_btn_leave");'>탈퇴하기</a>
            </div>
        </div>
    </div>
</div>   

<script>

function formUploadCheck(nid,originalImg)
{
	if(!$(nid)){return;}

	$(nid).one('change', function(event) {

		if(!event.target.files[0]){return;}
		var imgPath=URL.createObjectURL(event.target.files[0]);
		var imgSize=this.files[0].size;
		
		if($(nid+"Src"))
		{
			var imgUrlOld=$(nid+"Src").attr('src');
			if(originalImg){imgUrlOld=originalImg;}
			
			$(nid+"Src").one('error',function(){
				$(nid).val("");
				
				if($(nid+"Src"))
				{
					$(nid+"Src").attr('src',imgUrlOld);
				}
				if($(nid+"ImgSize"))
				{
					$(nid+"ImgSize").html('0&times;0');
				}
				if($(nid+"Size"))
				{
					$(nid+"Size").text('0');
				}
			});	

			$(nid+"Src").attr('src',imgPath);

			var imgWidth=$(nid+"Src").get(0).naturalWidth;
			var imgHeight=$(nid+"Src").get(0).naturalHeight;
			
			if($(nid+"ImgSize"))
			{
				$(nid+"ImgSize").html($.number(imgWidth)+'&times;'+$.number(imgHeight));
			}
		}
		
		if($(nid+"Size"))
		{
			$(nid+"Size").html($.number(imgSize));
			var imgCautionMsg="";
			if(imgSize>(1024*1024*10)){imgCautionMsg='<span style="color:#f44;font-weight:bold;" class="Blink5">파일이 10M가 넘습니다. 포토샵 저장 문제가 있는지 확인하십시오.</span>';}
			else if(imgSize>(1024*1024*5)){imgCautionMsg='<span style="color:#44f;font-weight:bold;" class="Blink">파일이 5M가 넘습니다. 포토샵 저장 문제에 주의하십시오.</span>';}
			else if(imgSize>(1024*1024*2)){imgCautionMsg='<span style="color:#080;font-weight:bold;">파일이 2M가 넘습니다. 주의가 요구됩니다.</span>';}
			if($(nid+"Caution"))
			{
				$(nid+"Caution").hide();
				if(imgCautionMsg)
				{
					$(nid+"Caution").html(imgCautionMsg);
					$(nid+"Caution").show();
				}
			}
		}
		
	}).click();
}
	
window.setInterval(function(){$('.Blink').fadeTo(200, 0.1).fadeTo(200, 1.0);}, 1000);
window.setInterval(function(){$('.Blink5').fadeTo(100, 0.1).fadeTo(100, 1.0);}, 500);

</script>

<jsp:include page="navi-footer.jsp"></jsp:include>   

</body>


</html>

 