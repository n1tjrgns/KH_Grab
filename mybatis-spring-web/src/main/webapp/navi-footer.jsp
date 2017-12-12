<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>GRAB</title>
<link rel="stylesheet" type="text/css"
	href="_resource/_web/css/common.css">
<link rel="stylesheet" type="text/css"
	href="_resource/_web/css/service.css">
<script
	src="https://www.lifeplus.co.kr/_resource/js/vendor/jquery-1.9.1.min.js"></script>
<script
	src="https://www.lifeplus.co.kr/_resource/js/vendor/TweenMax.min.js"></script>
<script src="https://www.lifeplus.co.kr/_resource/_web/js/common.js"></script>
<script>
	var rootDomain = "http://localhost:8088/grab/main.html";
	var resourceDomain = "http://localhost:8088/grab/main.html";
	var cdnDomain = "http://localhost:8088/grab/main.html";
	var menuCd = "null";
</script>
<body>
<div id="footer">
		<div class="footer_inner">
			<div class="footer_left">
				<div class="footer_ci">
					<a href="#"><img
						src="_resource/_web/images/common/logo.png"
						alt="grab"></a>
				</div>
				<div class="footer_link">
					<ul class="footer_ul">
						<li><a href="/event/term" onclick="eventTrack('W_T&C');">이용
								약관</a></li>
						<li><a href="/event/privacy" onclick="eventTrack('W_PI');">개인정보
								취급방침</a></li>
					</ul>
					<dl class="footer_ul">
						<dt>SNS</dt>
						<dd>
							<a href="https://www.facebook.com/lifeplus.h/" target="_blank"
								onclick="eventTrack('W_FB_GO');"><img
								src="https://www.lifeplus.co.kr/_resource/_web/images/common/ico_link_fb.png"
								alt="FACEBOOK"></a> <a
								href="https://www.instagram.com/lifeplus_h/" target="_blank"
								onclick="eventTrack('W_INSTA_GO');"><img
								src="https://www.lifeplus.co.kr/_resource/_web/images/common/ico_link_instagram.png"
								alt="NSTAGRAM"></a> <a
								href="https://www.youtube.com/lifeplus_h" target="_blank"
								onclick="eventTrack('W_YOUTUBE_GO');"><img
								src="https://www.lifeplus.co.kr/_resource/_web/images/common/ico_link_youtube.png"
								alt="YOUTUBE"></a>
						</dd>
					</dl>
					<div class="copy_right">
						<img alt="ⓒ 2017 KH GRAB. All rights reserved.">
					</div>
				</div>
			</div>
			<div class="footer_right">

				<div class="input_box">
					<input type="text" id="newsForm_input"
						placeholder="이메일로 GRAB을 구독하세요"> <a
						href="javascript:newsSubmit();" class="btn_new_send">구독하기</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>