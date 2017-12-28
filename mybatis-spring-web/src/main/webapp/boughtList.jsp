<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,javax.servlet.*, java.text.SimpleDateFormat"%>
<%@page import="repository.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />


<title>구매목록 | Grab STORE</title>

<link rel="stylesheet" type="text/css"
	href="//static.musinsa.com/skin/musinsa/css/magazine_common.css?20161230" />
<link rel="stylesheet" type="text/css" href="./css/pay.css" />
<link rel="stylesheet" type="text/css" href="./css/paySub.css" />
<!--<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/font.css?20170221" />-->

<!-- 스토어, 매거진 공통 스크립트 -->
<script type="text/javascript"
	src="//static.musinsa.com/mfile_outsrc/js/vendor/jquery-1.11.1.min.js?20160201"></script>
<!--// 스토어, 매거진 공통 스크립트 -->


<!--// 세션 소스 -->

<!-- 다음 주소 가져오기 api-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<link rel="stylesheet" type="text/css" href="./css/reset.css">
<link rel="stylesheet" type="text/css" href="./css/responsive.css">
<script
	src="https://www.lifeplus.co.kr/_resource/js/vendor/jquery-1.9.1.min.js"></script>
<script src="https://www.lifeplus.co.kr/_resource/_web/js/common.js"></script>
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/main.js"></script>
<jsp:include page="navi-header.jsp" />

<!-- 오른쪽 콘텐츠 영역 -->
<div class="right_area page_order_form">
	<%
		Member member = (Member)session.getAttribute("loginInfo");

		ArrayList<JoinBuyListABuyProduct> list = null;
		int totalPrice=0;
		List<JoinBuyListABuyProduct> joinBuyListABuyProduct = (ArrayList)request.getAttribute("joinBuyListABuyProduct");
	%>
	<!-- 컨텐츠 영역 -->
	<!--page nation -->
	
	<!-- 세션 회원의 정보 -->

	<div class="pagenation">
		<div class="nav_sub">
			<a href="/">STORE</a><span class="icon_entity">&gt;</span><span>구매목록</span>
		</div>
	</div>
	<!--//page nation -->

		<!--article-title-->
		<div class="article-title">
			<h2 class="title-page">
				SHOP / BOUGHT LIST<span>샵/구매목록</span>
			</h2>
			<div class="page-sorting">
				<span class="current-page">샵</span> <span>&gt;</span> <span>구매목록</span>
			</div>
		</div>
		<!--//article-title-->
		<div class="section order_product_info">
			<h3 class="section_title">
				PRODUCT INFO<span>상품 정보</span>
			</h3>
			<!--cart products-->
			<%if(joinBuyListABuyProduct == null) {%>
				구매목록이 없습니다.
			<%} else{%> 
			
			<table class="table_basic order_cart_table">
				<colgroup>
					<col>
					<col width="50px">
					<col width="100px">
					<col width="80px">
					<col width="69px" class="charge ">
					<col width="100px" class="charge ">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">날짜</th>
						<th scope="col">상품 이름</th>
						<th scope="col">수량</th>
						<th scope="col">결제 금액</th>
					</tr>
				</thead>
				<tbody>
					<form action="deleteShoppingBasket" name="delForm" method="post">
					<%
						for(int i=0; i<joinBuyListABuyProduct.size();i++){
							Date from = joinBuyListABuyProduct.get(i).getBuyDate();
							SimpleDateFormat date = new SimpleDateFormat("yyyy년 MM월 dd일");
					%>
					<tr>
						<td class="td_product" width="30%">
							<div class="connect_img">
								<img src="./img/property_1.jpg" />
							</div>
							<div class="article_info connect_info">
								<div class="box_product">
									<span > <%=date.format(from)%>
									</span>
								</div>
							</div></td>
						<td width="50%"><strong><%=joinBuyListABuyProduct.get(i).getProdName()%></strong></td>
						
						<td class="price" width="10%"><strong><%=joinBuyListABuyProduct.get(i).getbQuantity()%>개</strong></td>
						<td rowspan="1" width="10%"><strong><%=joinBuyListABuyProduct.get(i).getTotalPrice()%> 원</strong>
					</tr>
					<%} %>
					</form>
				</tbody>
					
						
			</table>

			</div>
			<%} %>
		</div>
</div>
<!--// 오른쪽 콘텐츠 영역 -->
</div>
<jsp:include page="navi-footer.jsp" />
</body>
</html>
