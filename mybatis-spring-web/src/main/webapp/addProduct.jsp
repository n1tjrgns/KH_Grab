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


<title>물품추가 | Grab STORE</title>

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
				SHOP / ADD PRODUCT<span>샵/추가</span>
			</h2>
			<div class="page-sorting">
				<span class="current-page">샵</span> <span>&gt;</span> <span>물품추가</span>
			</div>
		</div>
		<!--//article-title-->
		<div class="section order_product_info">
			<h3 class="section_title">
				PRODUCT INFO<span>상품 정보</span>
			</h3>
			<!--cart products-->
			
		<div class="right_contents section_address">
			<div class="cell_order_form article_tit">
				<div class="cell_order_form1">
					<h3 class="title-box">
						RECIPIENT INFO <span class="korSub">수령자 정보</span>
					</h3>
				</div>
			</div>

			<div class="cell_order_form box_address_cell">
				<div class="clear cell_order_form1 border_add_order">
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">물품 이름</li>
						<li class="cell_discount_detail2 order_address_form product_name">
							<input type="text" name="rcvr_nm" /> <span
							class="plain-btn btn cart_amount"
							style="cursor: default; display: none" id="baesong_title"></span>
						</li>
					</ul>
					
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">카테고리</li>
						<li class="cell_discount_detail order_address_form box_tel">
							<select name="category" id="category">
								<option value="">선택하세요</option>
								<option value="버킷리스트">버킷리스트</option>
								<option value="여행">여행</option>
								<option value="기타">기타</option>		
						</li>
					</ul>
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">배송지 주소 <!--<input type="checkbox" /> <span class="font_basic">회원 정보 변경</span>-->
						</li>
						<li class="cell_discount_detail2 order_address_form box_address">
							<input type="text" class="zipcode" id="sample4_postcode" name="sample4_postcode"
							placeholder="우편번호" readonly> <a
							class="plain-btn btn btn-zipcode"
							onClick="sample4_execDaumPostcode()">우편번호찾기</a> <br /> <input
							type="text" class="address" id="sample4_roadAddress" name="sample4_roadAddress"
							placeholder="도로명주소" readonly> <input type="text"
							class="address detail" id="roadAddress_detail" name="roadAddress_detail"
							placeholder="나머지 주소">

						</li>
					</ul>
					<ul class="box_receiver_info">
						<li class="cell_discount_tit">배송 메모<br /> <!--<input type="checkbox" /> <span class="font_basic">상품별 입력</span>-->
						</li>
						<li class="cell_discount_detail box_memo">
						<textarea name="dlv_msg" id="dlv_msg"></textarea>
							<p>※ 택배기사님께 전할 말씀을 남겨주세요.</p></li>
					</ul>
					<!--수령자 정보-->
				</div>

			</div>
		</div>

		<div class="right_contents section_payment">
			<h3 class="title-box">
				PAYMENT INFO / AGREEMENT <span class="korSub">결제 정보 / 주문자 동의</span>
			</h3>
			<div>
				<!--신용카드 -->
				<div class="cell_order_form">
					<div class="clear cell_order_form1 border_add_order"
						id="payment_info_area">
						<!--결제 정보-->
						<ul class="list_payment_order">
							<li class="cell_discount_tit">결제 수단</li>
							<li class="cell_discount_detail"><label
								class="box_choice first"> <input type="radio"
									id="paym_01" type="radio" name="kyejae" value="card" checked="checked"
									onclick="CalculateAmt(); pay_info_area_show('card'); pay_info_view('card');" />
									신용 카드
							</label> <label class="box_choice"> <input type="radio"
									id="paym_02" type="radio" name="kyejae" value="virtual"
									onclick="checkMobileCretify(this, 'Y'); CalculateAmt(); pay_info_area_show('virtual'); pay_info_view('virtual');" />
									가상 계좌(무통장)
							</label> <!-- 결제수수료율 설정값 출력 부분 //--> <input type="hidden"
								name="card_pay_fee_ratio" value="0" /> <input type="hidden"
								name="mobile_pay_fee_ratio" value="5" /></li>
						</ul>

						<ul class="list_payment_order">
							<li class="cell_discount_tit last">주문자 동의<br /> <label>
									<input type="checkbox" name="all_agree" onClick="CheckAgree();" />
									<span class="font_basic">전체 동의</span>
							</label>
							</li>
							<li class="cell_discount_detail last">
								<p class="box_check_agree individual">
									<label> <input type="checkbox" name="agree_third" /> <span>개인정보
											제3자 제공 동의(필수)</span>
									</label>
								</p>
								<p class="box_summary_agree">
									배송 등 거래를 위해 판매자에게 개인정보가 공유됩니다. <a href="javascript:void(0)"
										onClick="ToggleThirdAgree(); return false;"><span
										class="detail_close" id="thirdBtn">자세히</span></a>
								</p>

								<p class="box_detail_agree thirdAgreeDetail"
									id="thirdAgreeDetail">
									Grab의 회원계정으로 상품 및 서비스를 구매하고자 할 경우, Grab((주)그랩)은 거래 당사자간 원활한 의사소통
									및 배송, 상담 등 거래이행을 위하여 필요한 최소한의 개인정보만을 Grab 입점업체 판매자 및 배송업체에 아래와
									같이 공유하고 있습니다.<br /> 1. Grab((주)그랩)은 귀하께서 무신사 입점업체 판매자로부터 상품 및
									서비스를 구매하고자 할 경우, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 24조의 2(개인정보 공유동의
									등)에 따라 아래와 같은 사항은 안내하고 동의를 받아 귀하의 개인정보를 판매자에게 공유합니다. "개인정보 제3자
									공유 동의"를 체크하시면 개인정보 공유에 대해 동의한 것으로 간주합니다.<br /> 2. 개인정보를 공유받는자
									: (주) 더네이쳐홀딩스 <br /> 3. 공유하는 개인정보 항목 : 구매자 성명, 전화번호, ID, 휴대폰
									번호, 상품 구매정보, 상품 수취인 정보(성명, 주소, 전화번호)<br /> 4. 개인정보를 공유받는 자의 이용
									목적 : 판매자와 구매자의 거래의 원활한 진행, 본인의사의 확인, 고객 상담 및 불만처리, 상품과 경품 배송을
									위한 배송지 확인 등<br /> 5. 개인정보를 공유받는 자의 개인정보 보유 및 이용 기간 : 개인정보 수집 및
									이용 목적 달성 시까지 보관합니다.<br /> 6. 동의 거부 시 불이익 : 본 개인정보 공유에 동의하지
									않으시는 경우, 동의를 거부할 수 있으며, 이 경우 거래가 제한됩니다.
								</p>
								<p class="box_check_agree condition" style='display: none'>
									<label> <input type="checkbox" name="agree_return"
										checked="checked" /> <span>주문제작 상품 주문 후 취소 불가 동의(필수)</span>
									</label>
								</p>
								<p class="box_summary_agree" style='display: none'>
									주문제작 상품은 주문 이 후 교환/환불이 불가능 합니다. <a href="javascript:void(0)"
										onClick="ToggleTakeback(); return false;"> <span
										class="detail_close" id="returnBtn">자세히</span></a>
								</p>

								<p class="box_detail_agree thirdAgreeDetail"
									id="returnAgreeDetail">
									■ 주문 상품 중 주문 후 상품의 제작에 들어가는 주문제작 상품의 경우 소비자의 주문에 의하여 개별 생산 되며<br />
									생산이 시작된 이 후 해당 재화를 타인에게 판매가 불가능 함으로 주문 후 취소, 주문 후 교환, 주문 후 환불이
									불가능 합니다. <br /> 주문 시 해당 내용을 참고하여 신중한 구매 부탁 드립니다.<br /> [관련
									조항]<br /> 전자상거래 등에서 소비자보호에 관한 법률 시행령[시행 2015.1.1.] [대통령령
									제25840호, 2014.12.0., 타법개정]<br /> 제 21조(청약철회등의 제한) 법 제 17조
									2항제5호에서 “대통령령으로 정하는 경우＂란 소비자의 주문에 따라 개별적으로 생산되는 재화등 <br /> 또는
									이와 유사한 재화등에 대하여 법 제 13조제2항제5호에 따른 청약 철회등(이하 :쳥약철회등＂이라한다.)을 인정하는
									경우 <br /> 통신판매업자에게 회복할 수 없는 중대한 피해가 예상되는 경우로서 사전에 해당 거래에 대하여<br />
									별도로 그 사실을 고지하고 소비자의 서면(전자문서를 포함한다)에 의한 동의를 받은 경우를 말한다.<br />
								</p>
								<p class="box_check_agree condition">
									<label> <input type="checkbox" name="pay_agree" /> <span>위
											상품 정보 및 거래 조건을 확인하였으며, 구매 진행에 동의 합니다.(필수)</span>
									</label>
								</p>
							</li>
						</ul>
						<!--//결제 정보-->
					</div>

				</div>
				<!--//신용카드 -->
			</div>
			<!--p class="box_bottom_link"><span class="first"><a href="/app/cart">장바구니</a>↗</span> <span><a href="/app">스토어 메인</a>↗</span></p-->
			<!--cart button-->
			<div class="btn_wrap btn_type01">
				<a href="javascript:void(0)" onclick="payCheck();"
					class="btn_black">PAYMENT <span class="btn_side_text">결제하기</span></a>
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
