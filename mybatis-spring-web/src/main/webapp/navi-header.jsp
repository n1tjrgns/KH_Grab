<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page
	import="javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpSession"%>
<%@ page import="model.Member"%>
<%@ page import="java.util.List"%>

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
		System.out.println("세션:" + session.getAttribute("loginInfo"));
		if (session.getAttribute("loginInfo") != null) {
			Member member = (Member) session.getAttribute("loginInfo");
		}
</script>
</head>
<body>
	<div id="header">
		<div class="navi">
			<ul class="nav_top">
				<li class="logo"><a href="Main" class="mot2" onclick=""> <span
						class="en"> <img
							src="_resource/_web/images/common/logoText.png" class="logo_img"
							alt="grabIcon" />
					</span>
				</a></li>
				<li><a href="Main_graph" class="mot2" onclick=""><span
						class="en">GRAPH</span></a></li>
				<li><a href="Main_bucket" class="mot2" onclick=""><span
						class="en">BUCKET LIST</span></a></li>
				<li><a href="Main_shop" class="mot2" onclick=""><span
						class="en">SHOP</span></a></li>
				<li class="sub"><a href="Main_cs" class="mot2" onclick="">
						<span class="en">CUSTOM SERVICE</span>
				</a>
					<div class="sub_link mot3">
						<div class="border1"></div>
						<div class="border2"></div>
						<div class="border3"></div>
						<div class="border4"></div>


					</div></li>

				<%
					if (session.getAttribute("loginInfo") == null) {
				%>
				<li class="sub"><a href="Main_login" class="mot2" onclick=""><span class="en">Login/Sign
						up</span></a>
					<div class="sub_link mot3">
						<div class="border1"></div>
						<div class="border2"></div>
						<div class="border3"></div>
						<div class="border4"></div>
					</div></li>
				<%
					} else {
				%>
				<li class="sub"><a href="Logout" class="mot2" name="logout">Logout</a>
					<div class="sub_link mot3">
						<div class="border1"></div>
						<div class="border2"></div>
						<div class="border3"></div>
						<div class="border4"></div>
						<a href="Main_mypage" onclick="" class="sub_a mot2">MY PAGE</a>
					</div>
				</li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
</body>
</html>