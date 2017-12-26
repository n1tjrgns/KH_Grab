<!-- 나는 깃허브 테스트 주석 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*,java.util.*,javax.servlet.*"%>
<%@page import="repository.*, model.*"%>
<html lang="en">
<head>
	<title>Grab</title>
	<meta charset="euc-kr">
	<meta name="author" content="pixelhint.com">
	<meta name="description" content="La casa free real state fully responsive html5/css3 home page website template"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	
	<link rel="stylesheet" type="text/css" href="./css/reset.css">
	<link rel="stylesheet" type="text/css" href="./css/responsive.css">
<script
	src="https://www.lifeplus.co.kr/_resource/js/vendor/jquery-1.9.1.min.js"></script>
	<script src="https://www.lifeplus.co.kr/_resource/_web/js/common.js"></script>
	<script type="text/javascript" src="./js/jquery.js"></script>
	<script type="text/javascript" src="./js/main.js"></script>
</head>
<body >
	 <jsp:include page="navi-header.jsp"/>
	
	<%

		ProductSessionRepository  psr = new ProductSessionRepository();
		List<Product> products = psr.selectProductList();
		System.out.println("List num : "+ products.size());
		for(int i=0; i<products.size();i++){
			System.out.println("물품 이름:"+products.get(i).getProdName());
			System.out.println("물품 내용:"+products.get(i).getProdCategory());
		}
	%>

	</section><!--  end search section  -->

	<section class="listings">
		<div class="wrapper">
			<ul class="properties_list">
			<form action = "ModifyProduct" id= "contentForm" method = "POST">
				<input type="hidden" name="p_name" value=''>
			<%
				for(int i=0; i<products.size();i++){
			%>
				<li>
					<a href="#" onclick="document.getElementById('contentForm').p_name.value='<%= products.get(i).getProdName()%>';contentForm.submit();">
						<img src="<%=products.get(i).getProdPic() %>" alt="" title="" class="property_img"/>
					<!--<span class="price">$2500</span> -->
					<div class="property_details">
						<h1>
						<%= products.get(i).getProdName()%>
						</h1>
						<h2><%= products.get(i).getProdCategory() %></h2>
						<h2><span class="property_size"><%= products.get(i).getProdPrice()%>원</span></h2>
					</div>
					</a>
				</li>
			<%} %>
			</form>

			</ul>
			<div class="more_listing">
				<a href="#" class="more_listing_btn">View More Listings</a>
			</div>
		</div>
	</section>	<!--  end listing section  -->

	<jsp:include page="navi-footer.jsp"/>

	<script type="text/javascript" src="../ga.js"></script>
	<script type="text/javascript" src="../ph-optin.js"></script>
</body>
</html>