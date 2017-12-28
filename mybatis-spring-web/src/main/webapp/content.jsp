<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*,java.util.*,javax.servlet.*,java.util.List"%>

<%@page import="repository.*, model.*"%>

<html>

<head>

<meta>

<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->

<title>상품 상세정보</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link

	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"

	rel="stylesheet" type="text/css">

 

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>

 

<script type="text/javascript" src="./js/content.js"></script>

<link rel="stylesheet" type="text/css" href="./css/content.css">

</head>

 

<script>

	function stock(index) {

		if (parseInt($("input[name=p_stock]").val()) < parseInt($(

				"input[name=p_payStock]").val())) {

			alert("재고를 넘었습니다.");

		} else {

			if(parseInt($("input[name=login]").val())==0){

				if(index == 1){

					document.getElementById('paymentForm').action="shop_payment";

					document.getElementById('paymentForm').submit();

				}

				if(index == 2){

					document.getElementById('paymentForm').action="addProductList";

					document.getElementById('paymentForm').submit();

				}

			}else{

				alert("로그인을 해주세요.");

				window.location.href="main";

			}

		}

	}

 

</script>

 

<body>

	<%

		System.out.println("p_name(web) : " + request.getParameter("p_name"));

		Product product = (Product)request.getAttribute("product");

		String pic = product.getProdPic().substring(product.getProdPic().length()-3, product.getProdPic().length()); 

	%>

	<jsp:include page="navi-header.jsp"></jsp:include>

	<div>

		<input type="hidden" name="login" value='

		<%if (session.getAttribute("loginInfo") != null) {%>

			0<%

		}

		else{

		%>1<% 

		}%>'/>

		

		<br /> <br /> <br /> <br /> <br /> <br /> <br />

	</div>

	<div class="container">

		<div class="row">

			<table style="width: 80%;">

				<tr>

					<td style="width: 40%;"><img class="imgsize"

						src=".\\img\\product\\<%=product.getcEmail()%>_<%=product.getProdName()%>.<%=pic%>" /></td>

					<td style="width: 40%;">

						<!-- Datos del vendedor y titulo del producto -->

						<h2><%=product.getProdName()%></h2>

						<h5 style="color: #337ab7">

							<%=product.getProdCategory()%>

						</h5> <!-- Precios -->

						<h6 class="title-price">

							<small>가격</small>

						</h6>

						<h3 style="margin-top: 0px;"><%=product.getProdPrice()%>

							원

						</h3> <!-- Detalles especificos del producto --> <!-- 

						<div class="section">

							<h6 class="title-attr" style="margin-top: 15px;">

								<small>색상</small>

							</h6>

							<div>

								<div class="attr" style="width: 25px; background: red;"></div>

								<div class="attr" style="width: 25px; background: white;"></div>

							</div>

						</div>

						<div class="section" style="padding-bottom: 5px;">

							<h6 class="title-attr">

								<small>옵션</small>

							</h6>

							<div>

								<div class="attr2">50매</div>

								<div class="attr2">100매</div>

							</div>

						</div>

						 -->

						<form id="paymentForm" method="POST" onSubmit="return false;">

							<input type="hidden" name="p_stock"	value="<%=product.getProdStock()%>" />

							<input type="hidden" name="p_price" value="<%=product.getProdPrice()%>" />

							<input type="hidden" name="BuyType" value="no"/>

							<div class="section" style="padding-bottom: 20px;">

								<h6 class="title-attr">

									<small>수량</small>

								</h6>

								<div>

									<div class="btn-minus">

										<span class="glyphicon glyphicon-minus"></span>

									</div>

									<input name="p_payStock" value="1" readonly />

									<div class="btn-plus">

										<span class="glyphicon glyphicon-plus"></span>

									</div>

								</div>

							</div>

							<!-- Botones de compra -->

							<div class="section" style="padding-bottom: 20px;">

 

								<input type="hidden" name="p_name"

									value='<%=product.getProdName()%>'>

								<button class="btn btn-success" onclick="stock(1);">

									<span style="margin-right: 20px"

										class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>

									구매하기

								</button>

 

								<h6>

								<br/>

									<a href="#" onclick="stock(2);"> <span

										class="glyphicon glyphicon-heart-empty"

										style="cursor: pointer;"></span> 장바구니담기

									</a>

								</h6>

								<br/>

								<a href="javascript:history.back()"><button class="btn btn-default">목록으로</button></a>

							</div>

						</form>

					</td>

				</tr>

			</table>

 

			<div class="col-xs-9">

				<ul class="menu-items">

					<li class="active">상세설명</li>

					<!-- 

					<li>주의사항</li>

					<li>이용방법</li>

					<li>상품후기</li>

					 -->

				</ul>

				<div style="width: 100%; border-top: 1px solid silver">

					<p style="padding: 15px;">

						<small> <%=product.getProdContent()%>

						</small>

					</p>

					<!-- 

					<small>

						<ul>

							<li>주의사항1</li>

							<li>주의사항2</li>

							<li>주의사항3</li>

						</ul>

					</small>

					 -->

				</div>

			</div>

		</div>

	</div>

 

</body>

 

<jsp:include page="navi-footer.jsp"></jsp:include>

</html>

 

 

</html>