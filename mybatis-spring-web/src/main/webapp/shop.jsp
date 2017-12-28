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
		List<Product> products = (List<Product>)request.getAttribute("products");
		System.out.println("List num : "+ products.size());
		String src = request.getSession().getServletContext().getRealPath("/");
		
		String pic= null;
		for(int i=0; i<products.size();i++){
			pic = products.get(i).getProdPic().substring(products.get(i).getProdPic().length()-3, products.get(i).getProdPic().length()); 
			System.out.println(products.get(i).getcEmail()+"_"+products.get(i).getProdName()+"."+pic);
		}
	%>
<!-- 	<section class="search">
		<div class="wrapper">
			<form action="#" method="post">
				<input type="text" id="search" name="search" pla ceholder="무엇을 찾고 계신가요?"  autocomplete="off"/>
				<input type="submit" id="submit_search" name="submit_search"/>
			</form>
			<a href="#" class="advanced_search_icon" id="advanced_search_btn"></a>
		</div>

		<div class="advanced_search">
			<div class="wrapper">
				<span class="arrow"></span>
				<form action="#" method="post">
					<div class="search_fields">
						<input type="text" class="float" id="check_in_date" name="check_in_date" placeholder="Check In Date"  autocomplete="off">

						<hr class="field_sep float"/>

						<input type="text" class="float" id="check_out_date" name="check_out_date" placeholder="Check Out Date"  autocomplete="off">
					</div>
					<div class="search_fields">
						<input type="text" class="float" id="min_price" name="min_price" placeholder="Min. Price"  autocomplete="off">

						<hr class="field_sep float"/>

						<input type="text" class="float" id="max_price" name="max_price" placeholder="Max. price"  autocomplete="off">
					</div>
					<input type="text" id="keywords" name="keywords" placeholder="Keywords"  autocomplete="off">
					<input type="submit" id="submit_search" name="submit_search"/>
				</form>
			</div>
		</div><!--  end advanced search section  -->
	</section><!--  end search section  -->

	<section class="listings">
		<div class="wrapper">
			<ul class="properties_list">
			<form action = "shop_content" id= "contentForm"method = "POST">
				<input type="hidden" name="p_name" value=''>
			<%
				for(int i=0; i<products.size();i++){
					System.out.println("img src=img/product/"+products.get(i).getcEmail()+"_"+products.get(i).getProdName()+"."+pic);
			%>
				<li>
					<a href="#" onclick="document.getElementById('contentForm').p_name.value='<%= products.get(i).getProdName()%>';contentForm.submit();">
						<img src=".\\img\\product\\<%=products.get(i).getcEmail()%>_<%=products.get(i).getProdName()%>.<%=pic%>" alt="" title="" class="property_img"/>
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
			<%
				ArrayList<Product> list = (ArrayList)session.getAttribute("productList");
				if(list == null){
					System.out.println("장바구니 비어있음");
				}else{
					for(Product product : list){
						System.out.println("상품이름:"+product.getProdName());
						System.out.println("상품주문수량:"+product.getProdStock());
						System.out.println("상품주문가격:"+product.getProdPrice());
					}
				}
			%>

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