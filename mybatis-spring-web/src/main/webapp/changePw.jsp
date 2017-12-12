<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="shortcut icon" type="image/x-icon"
	href="/_resource/images/favicon.ico">
<link href="_resource/_web/css/common.css" rel="stylesheet" />
<script src="https://apis.google.com/js/client.js?onload=load_google"></script>
<link href="_resource/_web/css/register.css" rel="stylesheet" />
<title>Grab Bucket List : 버킷 리스트 비밀번호 변경</title>
<!-- 2017-03-29 -->
<script>
	var resourcePath = "_resource";
	var webDomain = "http://www.lifeplusbucket.com";
</script>
</head>
<body>
	<script>
		var isLogin = true;
		var resourcePath = "/_resource";
		var webDomain = "http://www.lifeplusbucket.com";
		var domainName = "lifeplusbucket.com";
		var fbAppId = "803062869828098";
		var nvAppId = "MLj0oi23BbB6Z9PdGctD";
		var kaAppId = "54fdc94fb5308e67bf208e2863485e71";
		var kaAppSecret = "cd1307a27870955ff42db477f3945923";
		var kaAppSecret = "U_2RigbPTb";
		var sslDomain = "https://www.lifeplusbucket.com";
		document.domain = "lifeplusbucket.com";
	</script>
	<script>
		var isMainAlready = true;
	</script>

	<div id="wrap" class='already'>
		<jsp:include page="navi-header.jsp" />
		<script>
			function loginInputCheck() {
				if ($("#_login_email_").val() == "") {
					alert("이메일을 입력하세요.");
					return;
				}
				if ($("#_login_passwd_").val() == "") {
					alert("비밀번호를 입력하세요.");
					return;
				}

				$.ajax( // 화면의 데이타를 조회한다.
				{

					url : "https://www.lifeplusbucket.com/member/login.do",
					dataType : "jsonp",
					jsonp : "callback",
					type : "POST",
					async : true,
					data : {
						_login_email_ : $("#_login_email_").val(),
						_login_passwd_ : $("#_login_passwd_").val()
					},
					success : function(data) {
						if (data.code == "0") {
							NTrackObj.callTrackTag('29441', callbackFn, 11979);
							$("#__loginForm__").submit();
						} else {
							alert("이메일 주소 또는 비밀번호가 정확하지 않습니다.");
						}

					},
					error : function(e) {
						//alert("조회 오류\n"+e.error);
					}
				});

				//$("#__loginForm__").submit();
			}
			function checkLoginPassswordKeyPress(event) {
				if (window.event) {
					var code = window.event.keyCode;
				} else {
					var code = e.charCode;
				}

				if (code == 13) {
					loginInputCheck()
				}
			}
		</script>



		<div class="dumpBannerBox"></div>

		<script>
			function goMyBucket() {

				if (!isLogin) {
					login
							.showPop('pop_login', "",
									"http://www.lifeplusbucket.com/ln/mypage/bucket.do");
				} else {
					location.href = "/ln/mypage/bucket.do";
				}
			}
		</script>
		<script src="/_resource/js/vendor/makePCookie.js"></script>

		<!--NSmart Track Tag Script-->
		<script type='text/javascript'>
			callbackFn = function() {
			};
			var _nsmart = _nsmart || [];
			_nsmart.host = _nsmart.host
					|| (('https:' == document.location.protocol) ? 'https://'
							: 'http://');
			_nsmart.push([ 11979, 29407 ]); // 캠페인 번호와 페이지 번호를 배열 객체로 전달
			document
					.write(unescape("%3Cscript src='"
							+ _nsmart.host
							+ "n00.nsmartad.com/etc?id=10' type='text/javascript'%3E%3C/script%3E"));
		</script>
		<!--NSmart Track Tag Script End..-->
		<div id="contents">
			<div class="reg_content">
				<h2>비밀번호 변경</h2>
					<br><br>
				<div class="reg_box">
					<p class="reg_p">
						아래 내용을 확인하신 후 <span>비밀번호를 변경해</span> 주세요.
					</p>
					<div class="pw_text_box">
						<div class="pw_text">
							<div class="title">회원님의 비밀번호는 안전하게 관리되고 있습니까?</div>
							고객님의 개인정보 보호를 위해 주기적으로<br> 비밀번호를 변경해 주실 것을 요청 드립니다.
						</div>
						<div class="pw_text">
							<div class="title">비밀번호 변경 시 유의해 주세요!</div>
							여러 사이트에서 동일한 이메일, 비밀번호를 사용하시는 경우<br> 개인정보 유출로 인한 피해가 연쇄적으로
							발생할 수 있으니,<br> 가급적 비밀번호는 사이트 별로 다르게 설정해 주시기 바랍니다.
						</div>
					</div>
					<div class="pw_form">
						<form
							action="https://www.lifeplusbucket.com/ln/member/change_passord_save.do"
							name="joinForm" method="post" id="change_passord_form">
							<dl>
								<dt>이메일 주소</dt>
								<dd>
									<div class="input_box change_pw_email">
										<input type="text" id="email1" value="ckh0103@naver.com"
											disabled maxlength="50">
									</div>
								</dd>
								<dt>기존 비밀번호</dt>
								<dd>
									<div class="input_box change_pw_password">
										<input type="password" name="passwd" maxlength="40">
									</div>
								</dd>
								<dt>새 비밀번호</dt>
								<dd>
									<div class="input_box change_pw_new_password">
										<input type="password" name="new_passwd" maxlength="40">
									</div>
								</dd>
								<dt>새 비밀번호 확인</dt>
								<dd>
									<div class="input_box change_pw_new_password_check">
										<input type="password" maxlength="40">
									</div>
								</dd>
							</dl>
							<div class="text">
								<p class="password_check_txt" style="display: none;">영문
									대/소문자, 숫자, 특수문자 중 3조합 8자리</p>

								<p>
									* 기존의 비밀번호, 이메일, 연락처와 동일 할 수 없으며, 연속되는 숫자 및 문자 사용 불가.<br>
									* 영문 대/소문자, 숫자, 특수문자 중 3조합 8자리
								</p>
							</div>
						</form>
					</div>
				</div>

				<div class="btn_area">
					<a href="javascript:inputCheck();"
						class="btn_click btn_confirm mot2"
						onclick='eventTrack("", "change_password_btn_submit");'>확 인</a>
				</div>

			</div>
			<div class="pop_layer pop_complete pop_pw_complete">
				<div class="pop_inner">
					<div class="text_area">
						<p class="text_p">
							<span>비밀번호 변경이 완료</span>되었습니다.<br> 로그인 페이지로 이동합니다.
						</p>
					</div>
					<a href="#" class="btn_confirm mot2">확인</a>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="navi-footer.jsp" />
	<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
	<script src="_resource/js/vendor/CustomTW.js"></script>
	<script type="text/javascript" src="/_resource/js/sns_add.js"
		charset="utf-8"></script>
	<script src="_resource/js/common.js"></script>
	<script src="_resource/js/login.js"></script>
	<script src="_resource/js/common_biz.js"></script>

</body>
</html>