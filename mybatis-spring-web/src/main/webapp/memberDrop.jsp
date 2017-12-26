<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="_resource/_web/css/common.css" rel="stylesheet" />
    <link href="_resource/_web/css/register.css" rel="stylesheet" />
    <script>
	function load_google() {
	    gapi.client.setApiKey('AIzaSyBySGWNccSTO9XHnlay_kpBHAWUO1-d3L4');
	    gapi.client.load('urlshortener', 'v1',function(){});
	}
   </script>
   <script src="https://apis.google.com/js/client.js?onload=load_google"></script>
<title>Grab List : Grab 회원 탈퇴</title><!-- 2017-03-29 -->
<script>
    var resourcePath = "/_resource";
    var webDomain = "http://www.Lifeplusbucket.com";
 </script>
</head>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navi-header.jsp"/>

<script> var isMainAlready = true; </script>

<script>
function goMyBucket(){
	
	if(!isLogin){
		login.showPop('pop_login',"","http://www.Lifeplusbucket.com/ln/mypage/bucket.do");
	}else{
		location.href="/ln/mypage/bucket.do";
	}
}
</script>
   <script src="_resource/js/vendor/makePCookie.js"></script>

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
        <h2>회원 탈퇴</h2>
        <div class="reg_box">
            <form action="https://www.Lifeplusbucket.com/ln/member/member_leave_save.do" method="post" id="leave_form" >
				<!-- 2017-03-29 -->
                <p class="reg_p">
                    아래 내용을 확인하신 후 <span>회원 탈퇴</span> 해주세요.
                </p>
                <div class="leave_text mt70">
                    회원 탈퇴를 하시면 등록된 회원 정보는 즉시 삭제되며 더 이상  Grab 버킷 리스트에 참여하실 수 없습니다.
                </div>
                <div class="leave_text">
                    회원 탈퇴 후 Grab 버킷 리스트 참여를 원하실 경우 다시 <span>[회원가입]</span>을 이용하셔야 합니다.
                </div>
                <div class="leave_text">
                    Grab 버킷 리스트에 대해 문의사항이 있으시다면 하단 <span>[자주 묻는 질문]</span> 또는 <span>[이메일 문의]</span> 메뉴를 이용해주세요.
                </div>
                <div class="leave_text">
                    SNS 계정으로 가입하신 경우 SNS계정과 연동한 어플레케이션은 해당 SNS 시스템에 남아 있으므로 재가입 시 별도의 인증 절차를 거치지 않습니다.
                </div>
                
                
                <div class="leave_form bottom">
                    <p>Grab 버킷 리스트를 탈퇴하시겠습니까?</p>
                    <dl>
                        <dt>비밀번호 확인</dt>
                        <dd>
                            <div class="input_box leave_password">
                                <input type="password" name="mPw">
                            </div>
                        </dd>
                    </dl>
                </div>				
				<!-- //2017-03-29 -->
                
            </form>
        </div>
        <div class="btn_area mt40">
            <a href="javascript:inputCheck();" class="btn_click btn_member_leave mot2" onclick='eventTrack("", "member_leave_btn_submit");'>탈 퇴</a>
            <a href="/ln/member/member_info.do" class="btn_cancel mot2"  onclick='eventTrack("", "member_leave_btn_cancel");'>취 소</a>
        </div>
    </div>
    <div class="pop_layer pop_complete pop_leave_complete">
        <div class="pop_inner">
            <div class="text_area">
                <p class="text_p">
                    <span>회원 탈퇴가 완료</span> 되었습니다.
                </p>
            </div>
            <a href="#" class="btn_confirm mot2">확인</a>
        </div>
    </div>
</div>
<script src="/_resource/js/vendor/jquery-1.11.3.min.js"></script>
<script src="/_resource/js/vendor/jquery.cookie.js"></script>
<script src="/_resource/js/vendor/spin.min.js"></script>
<script src="/_resource/js/vendor/CustomTW.js"></script>
<script type="text/javascript" src="/_resource/js/vendor/naverLogin_implicit-1.0.3-my.js" charset="utf-8"></script>

<script type="text/javascript" src="/_resource/js/vendor/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="/_resource/js/sns_add.js" charset="utf-8"></script>
<script src="/_resource/js/common.js"></script>
<script src="/_resource/js/login.js"></script>
<script src="/_resource/js/common_biz.js"></script>
<jsp:include page="navi-footer.jsp"/>
</body>
</html>