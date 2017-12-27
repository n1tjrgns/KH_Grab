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


<title>물품수정 | Grab STORE</title>

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

<script>
$(document).ready(function(){

	//document.payForm.product_category.value = '$("input[name=category1]").val()';
	
	$("#file").change(function() {
		  readURL(this);

	});
	
	function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
			    reader.onload = function(e) {
		      $('#blah').attr('src', e.target.result);
		    }
				  if ($('#blah').width > 560) { // holder width
					  $('#blah').width = 560;
				  }
			    reader.readAsDataURL(input.files[0]);
		  }
	}


});
</script>
<script>

function deleteProduct(){
	if(!confirm("삭제하시겠습니까?")){
		return
	}else{
		document.modifyForm.action="deleteProduct";
		document.modifyForm.submit();
	}
}

function confirm(){
	document.modifyForm.submit();
}
</script>

<jsp:include page="navi-header.jsp" />


<!-- 오른쪽 콘텐츠 영역 -->
<div class="right_area page_order_form">
	<%
		Member member = (Member)request.getAttribute("member");
		Product product = (Product)request.getAttribute("product");
		 
		System.out.println("product.getProdPic()"+product.getProdPic());
		String arr[] = member.getmTel().split("-");
		String pic = product.getProdPic();
		System.out.println("pic:"+pic);
		int idx = pic.indexOf("."); 
		String form = pic.substring(idx+1);
		System.out.println("확장자:"+form);
	%>
	<!-- 컨텐츠 영역 -->
	<!--page nation -->
	
	<!-- 세션 회원의 정보 -->
	<input type="hidden" name="category1" value="<%=product.getProdCategory() %>" />
	
	<div class="pagenation">
		<div class="nav_sub">
			<a href="/">STORE</a><span class="icon_entity">&gt;</span><span>주문서</span>
		</div>
	</div>
	<!--//page nation -->

	<form action="ModifyProductComplete" name="modifyForm" id="modifyForm" method="post" >
		<!--article-title-->
		<div class="article-title">
			<h2 class="title-page">
				SHOP / MODIFY PRODUCT<span>샵/수정</span>
			</h2>
			<div class="page-sorting">
				<span class="current-page">샵</span> <span>&gt;</span> <span>물품수정</span>
			</div>
		</div>
		<!--//article-title-->
		<div class="section order_product_info">
			<h3 class="section_title">
				PRODUCT INFO<span>상품 정보</span>
			</h3>
			<!--cart products-->
			
		<div class="right_contents section_address">
			
			<div class="cell_order_form box_address_cell">
				<div class="clear cell_order_form1 border_add_order">
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">물품 이름</li>
						<li class="cell_discount_detail2 order_address_form product_name">
							<input type="text" name="product_name" value="<%=product.getProdName()%>" readonly/> <span
							class="plain-btn btn cart_amount"
							style="cursor: default; display: none" id="baesong_title"></span>
						</li>
					</ul>
					
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">카테고리</li>
						<li class="cell_discount_detail order_address_form box_tel">
							<select name="product_category" id="product_category">
								<option value="">선택하세요</option>
								<option value="버킷리스트">버킷리스트</option>
								<option value="여행">여행</option>
								<option value="기타">기타</option>	
							</select>
						</li>
						<br/>
					</ul>
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">수량</li>
						<li class="cell_discount_detail order_address_form box_tel">
							<input type="text" name="product_stock" value="<%=product.getProdStock()%>"/>
						</li>
						<br/>
					</ul>
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">가격</li>
						<li class="cell_discount_detail order_address_form box_tel">
							<input type="text" name="product_price" value="<%=product.getProdPrice()%>"/>
						</li>
						<br/>
					</ul>
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">상세 설명
						</li>
						<li class="cell_discount_detail box_memo">
							<textarea name="product_content" id="product_content"><%=product.getProdContent()%></textarea>
						</li>
					</ul>
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">사진</li>
						<li class="cell_discount_detail box_memo">
  							<img id="blah" src="./img/product/<%=product.getcEmail()%>_<%=product.getProdName()%>.<%=form%>" alt="your image" width="300px"/>
						</li>
					</ul>
					<!--물품 정보-->
				</div>

			</div>
		</div>

			<!--cart button-->
			<div align=center>
				<div class="btn_wrap btn_type01" style="display: inline-block; vertical-align: middle;">
					<a href="javascript:void(0)" onclick="confirm();" class="btn_black">MODIFY <span class="btn_side_text">수정하기</span></a>
				<!--//cart button-->
				</div>
				<div class="btn_wrap btn_type01" style="display: inline-block; vertical-align: middle;">
					<a href="javascript:void(0)" onclick="deleteProduct();" class="btn_black">DELETE <span class="btn_side_text">삭제하기</span></a>
				<!--//cart button-->
				</div>
			</div>
		<!--// 컨텐츠 영역 -->
		<!-- 회원의 구매 정보 -->

		<!-- 회원의 구매 정보 끝-->
				
	</form>

</div>
<!--// 오른쪽 콘텐츠 영역 -->
</div>
<jsp:include page="navi-footer.jsp" />
</body>
</html>
