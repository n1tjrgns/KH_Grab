<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/content.js"></script>
<link rel="stylesheet" type="text/css" href="./css/content.css">
</head>

	

<body>
	<jsp:include page="navi-header.jsp"></jsp:include> 
	<div class="blank"> ?? </div>
	<div class="container">
		<div class="row">
			<table style="width: 80%;">
				<tr>
					<td style="width: 40%;"><img class="imgsize"
						src="./img/property_1.jpg" /></td>
					<td style="width: 40%;">
						<!-- Datos del vendedor y titulo del producto -->
						<h2>canon selphy 포토 용지 RP-54</h2>
						<h5 style="color: #337ab7">
							포토프린터에 필요한 포토 용지 <small style="color: #337ab7">(50매,100매)</small>
						</h5> <!-- Precios -->
						<h6 class="title-price">
							<small>가격</small>
						</h6>
						<h3 style="margin-top: 0px;">30000 원</h3> <!-- Detalles especificos del producto -->
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
						<div class="section" style="padding-bottom: 20px;">
							<h6 class="title-attr">
								<small>수량</small>
							</h6>
							<div>
								<div class="btn-minus">
									<span class="glyphicon glyphicon-minus"></span>
								</div>
								<input value="1" />
								<div class="btn-plus">
									<span class="glyphicon glyphicon-plus"></span>
								</div>
							</div>
						</div> <!-- Botones de compra -->
						<div class="section" style="padding-bottom: 20px;">
							<button class="btn btn-success" onclick="location.href='./pay.html'">
								<span style="margin-right: 20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
								구매하기
							</button>

							<h6>
								<a href="#"><span class="glyphicon glyphicon-heart-empty"
									style="cursor: pointer;"></span> 장바구니담기</a>
							</h6>
							<a href="./shop.html"><button class="btn btn-default">목록으로</button></a>
						</div>

					</td>
				</tr>
			</table>

			<div class="col-xs-9">
				<ul class="menu-items">
					<li class="active">상세설명</li>
					<li>주의사항</li>
					<li>이용방법</li>
					<li>상품후기</li>
				</ul>
				<div style="width: 100%; border-top: 1px solid silver">
					<p style="padding: 15px;">
						<small> 상세설명입니다. </small>
					</p>
					<small>
						<ul>
							<li>주의사항1</li>
							<li>주의사항2</li>
							<li>주의사항3</li>
						</ul>
					</small>
				</div>
			</div>
		</div>
	</div>
	
</body>

<jsp:include page="navi-footer.jsp"></jsp:include>   
</html>


</html>