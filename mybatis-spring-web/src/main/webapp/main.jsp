<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
  Session session = request.getSession(true);
  Member member = session.getAttribute('loginInfo');
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>GRAB</title>
<link rel="shortcut icon" type="image/x-icon" href=" " />
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
</head>
<body>
	<script>
		$('.nowMove').click(function() {
			localStorage.removeItem('search');
			localStorage.removeItem('sTop');
			localStorage.removeItem('page');
			localStorage.removeItem('order');
			localStorage.removeItem('value');
			localStorage.removeItem('back');
		});
	</script>
	<jsp:include page="navi-header.jsp" />
	<div id="wrap" class="service_wrap">
		<div class="section_top">
			<div class="title_text mot5">
				당신의 추억 <br />흩어지지 않도록<br /> 꼭, <span class="en">GRAB</span> 하세요!
			</div>
			<div class="scroll_text mot5">
				<span class="en">GRAB Service</span>
			</div>
		</div>
		<div class="section_service">
			<div class="list_area">
				<div class="title_area">
					<div class="title_box mot4">
						<span class="en">GRAB</span> Digital Service
					</div>
				</div>
				<ul class="list_ul">
					<li>
						<div class="thumb mot4">
							<img src="_resource/_web/images/main/intro.png" alt="" />
						</div>
						<div class="text_box mot3">
							<div class="title">INTRODUCE</div>
							<div class="text">
								GRAB은 당신의 흩어진 추억들을<br />관리하도록 돕는 전자다이어리 입니다.
							</div>
							<a href="Main" class="btn_detail_view mot3">자세히보기</a>
						</div>
					</li>
					<li>
						<div class="thumb mot4">
							<img src="_resource/_web/images/main/graph.png" alt="" />
						</div>
						<div class="text_box mot4">
							<div class="title">GRAPH</div>
							<div class="text">
								당신의 흩어진 추억들을<br />그래프를 통해 한눈에 알아볼 수 있습니다.
							</div>
							<a href="Main_graph" class="btn_detail_view mot3">자세히보기</a>
						</div>
					</li>
					<li>
						<div class="thumb mot4">
							<img src="_resource/_web/images/main/bucket.png" alt="" />
						</div>
						<div class="text_box mot4">
							<div class="title">BUCKET LIST</div>
							<div class="text">
								버킷리스트에서 당신의 가슴을 뛰게 하는<br> 버킷리스트를 관리하고 도전해보세요.
							</div>
							<a href="Main_bucket" class="btn_detail_view mot3">자세히보기</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="list_area">
				<div class="title_area">
					<div class="title_box mot4">
						<span class="en">GRAB</span> Shopping
					</div>
				</div>
				<ul class="list_ul financial">
					<li>
						<div class="thumb mot4 financial">
							<img src="_resource/_web/images/main/shop.png" alt="" />
						</div>
						<div class="text_box mot4">
							<div class="title">SHOP</div>
							<div class="text">필요한 물품은 여기를 참조하세요.</div>
							<a href="Main_shop" class="btn_detail_view mot3">자세히보기</a>
						</div>
					</li>
					<li>
						<div class="thumb mot4 financial">
							<img src="_resource/_web/images/main/customer.png" alt="" />
						</div>
						<div class="text_box mot4">
							<div class="title">CUSTOMER SERVICE</div>
							<div class="text">도움이 필요한가요?</div>
							<a href="Main_cs" class="btn_detail_view mot3">자세히보기</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page="navi-footer.jsp" />
	<script src="https://www.lifeplus.co.kr/_resource/_web/js/service.js"></script>
</body>
</html>
