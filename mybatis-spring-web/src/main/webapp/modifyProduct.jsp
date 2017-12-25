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
	$("#imgInp").change(function() {
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

<jsp:include page="navi-header.jsp" />


<!-- 오른쪽 콘텐츠 영역 -->
<div class="right_area page_order_form">
	<%
		Member member = (Member)session.getAttribute("loginInfo");
		ArrayList<Product> list = (ArrayList)session.getAttribute("productList");
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

	<form action="paying2" name="payForm" id="payForm" method="post" >
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
							<input type="text" name="product_name" /> <span
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
							<input type="text" name="product_stock" />
						</li>
						<br/>
					</ul>
					
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">상세 설명
						</li>
						<li class="cell_discount_detail box_memo">
							<textarea name="product_content" id="product_content"></textarea>
						</li>
					</ul>
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">사진</li>
						<li class="cell_discount_detail box_memo">
							<input type='file' id="imgInp" />
  							<img id="blah" src="#" alt="your image" />
						</li>
					</ul>
					<!--물품 정보-->
				</div>

			</div>
		</div>

			<!--cart button-->
			<div class="btn_wrap btn_type01">
				<a href="javascript:void(0)" onclick="payCheck();"
					class="btn_black">MODIFY <span class="btn_side_text">수정하기</span></a>
			</div>
			<!--//cart button-->
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
