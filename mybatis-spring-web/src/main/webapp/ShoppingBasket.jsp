<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,javax.servlet.*"%>
<%@page import="repository.*, model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />


<title>주문서 작성 | Grab STORE</title>

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
<script>
	function submit() {
		document.getElementById('deleteShoppingBasket').submit();
	}
</script>
<!-- 오른쪽 콘텐츠 영역 -->
<div class="right_area page_order_form">
	<%
		Member member = (Member)session.getAttribute("loginInfo");
		ProductSessionRepository psr = new ProductSessionRepository();
		Product product = null;
		ArrayList<Product> list = null;
		int totalPrice=0;
		list = (ArrayList)session.getAttribute("productList");
	%>
	<!-- 컨텐츠 영역 -->
	<!--page nation -->
	
	<!-- 세션 회원의 정보 -->

	<input type="hidden" name="m_name" value="<%=member.getmName() %>" />
	<input type="hidden" name="m_tel1" value="<%=member.getmTel().substring(0, 3) %>" />
	<input type="hidden" name="m_tel2" value="<%=member.getmTel().substring(4, 8) %>" />
	<input type="hidden" name="m_tel3" value="<%=member.getmTel().substring(9, 13) %>" />
	<input type="hidden" name="m_post" value="<%=member.getmPost() %>" />
	<input type="hidden" name="m_addr" value="<%=member.getmAddr() %>" />
	<input type="hidden" name="m_addr_d" value="<%=member.getmAddr_d() %>" />
	
	
	
	<div class="pagenation">
		<div class="nav_sub">
			<a href="/">STORE</a><span class="icon_entity">&gt;</span><span>주문서</span>
		</div>
	</div>
	<!--//page nation -->

		<!--article-title-->
		<div class="article-title">
			<h2 class="title-page">
				ORDER / SHOPPING BASKET<span>주문/장바구니</span>
			</h2>
			<div class="page-sorting">
				<span class="current-page">장바구니</span> <span>&gt;</span> <span>주문</span>
			</div>
		</div>
		<!--//article-title-->
		<div class="section order_product_info">
			<h3 class="section_title">
				PRODUCT INFO<span>상품 정보</span>
			</h3>
			<!--cart products-->
			<%if(list == null) {%>
				장바구니가 비었습니다.
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
						<th scope="col">상품 정보</th>
						<th scope="col">수량</th>
						<th scope="col">상품 금액</th>
						<th scope="col">삭제</th>
					</tr>
				</thead>
				<tbody>
					<form action="deleteShoppingBasket" name="delForm" method="post">
					<%
						for(int i=0; i<list.size();i++){
						totalPrice += list.get(i).getProdPrice();
					%>
					<tr>
						<td class="td_product">
							<div class="connect_img">
								<img src="./img/property_1.jpg" />
							</div>
							<div class="article_info connect_info">
								<div class="box_product">
									<span class="list_info"> <%=list.get(i).getProdName()%>
									</span>
								</div>
							</div></td>
						<td><strong><%=list.get(i).getProdStock()%>개</strong></td>
						
						<td class="price"><strong><%=list.get(i).getProdPrice()%>원</strong></td>
						<td rowspan="1"><strong><input type="button" onclick="submit();"value="삭제"/></strong>
						<input type="hidden" name="del_SB" value="<%=list.get(i).getProdName()%>" />
					</tr>
					<%} %>
					</form>
					<form action="shop_payment2" method="post">
						<input type="hidden" name="BuyType" value="yes" />
						<input type="button" value="구매하기" />
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
