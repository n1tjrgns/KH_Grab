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
		List<Product> product = psr.selectProduct();
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
 -->

	<section class="listings">
		<div class="wrapper">
			<ul class="properties_list">
				<li>
					<a href="./content.jsp">
						<img src="img/property_1.jpg" alt="" title="" class="property_img"/>
					<!--<span class="price">$2500</span> -->
					<div class="property_details">
						<h1>
							canon selphy 포토 용지 RP-54
						</h1>
						<h2>포토프린터에 필요한 포토 용지 </h2>
						<h2><span class="property_size">2000원</span></h2>
					</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/property_2.jpg" alt="" title="" class="property_img"/>
					
					<!-- <span class="price">$1000</span> -->
					<div class="property_details">
						<h1>
							Fuisque dictum tortor at purus libero
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... </h2>
						<h2><span class="property_size">2000원</span></h2>
					</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/property_3.jpg" alt="" title="" class="property_img"/>
					
					<!-- <span class="price">$500</span> -->
					<div class="property_details">
						<h1>
							Fuisque dictum tortor at purus libero
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath...</h2>
						<h2><span class="property_size">2000원</span></h2>
					</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/property_1.jpg" alt="" title="" class="property_img"/>
					
					<!-- <span class="price">$2500</span> -->
					<div class="property_details">
						<h1>
							Fuisque dictum tortor at purus libero
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath...</h2>
						<h2><span class="property_size">2000원</span></h2>
					</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/property_2.jpg" alt="" title="" class="property_img"/>
					
					<!-- <span class="price">$1000</span> -->
					<div class="property_details">
						<h1>
							Fuisque dictum tortor at purus libero
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... </h2>
						<h2><span class="property_size">2000원</span></h2>
					</div>
					</a>
				</li>
				<li>
					<a href="#">
						<img src="img/property_3.jpg" alt="" title="" class="property_img"/>
					
					<!-- <span class="price">$500</span> -->
					<div class="property_details">
						<h1>
							Fuisque dictum tortor at purus libero
						</h1>
						<h2>2 kitchens, 2 bed, 2 bath... </h2>
						<h2><span class="property_size">2000원</span></h2>
					</div>
					</a>
				</li>

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