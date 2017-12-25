<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@page import="java.io.*,javax.servlet.*,java.util.*" %>
    <%@page import="model.*,org.springframework.context.*" %>
    <%@page import="org.springframework.context.support.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="reservation" items="${reservation}" varStatus="status">
	<li>
	                  <div class="list_box" key-value="I0741">
                        <div class="list_img">
							<a href="javascript:Popup.$keyValue='I0741';Popup.detailPopupShowHide(true);"><img src="${reservation.photoURL}" alt="${reservation.bkName}" style="width:274px;height:274px;"></a>
                        </div>
                        <div class="list_title">
                            <div class="class en lifestyle">${reservation.bkPurpose }</div>
                            <div class="list_date en">${reservation.regDate }</div>
                            <div class="title">${reservation.bkName }</div>
							<div class="mouse_lock" style="display: none;"></div>
                            <a href="javascript:void(0);" key-value="I0741" class="btn_complete  mot2">완료하기</a>
                            <div class="btn_ico"> 
                                <a href="" class="btn_share mot2"></a>
                                <a href="javascript:void(0);" key-value="I0741" class="btn_delete mot2"></a>
                            </div>
                        </div>
                    </div>
                </li>
                </c:forEach>

</body>
</html>

<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
<script src="_resource/js/vendor/jquery.cookie.js"></script>
<script src="_resource/js/vendor/spin.min.js"></script>
<script src="_resource/js/vendor/CustomTW.js"></script>
<script type="text/javascript" src="_resource/js/sns_add.js" charset="utf-8"></script>
<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>
<script src="_resource/js/discover/Discover.BucketCart.js"></script>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script src="_resource/js/discover/Discover.Common.js"></script>
<script src="_resource/js/discover/Discover.Search.js"></script>
<script src="_resource/js/discover/Discover.Popular.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8" ></script>
<script type="text/javascript">