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
<h4> 나의 예약 내역 </h4>

	<c:forEach var="reservation" items="${reservation}" varStatus="status">
	예약 ID : ${reservation.mEmail}<br/>
	예약 날짜 : ${reservation.resDate}<br/> 
	예약 인원 : ${reservation.resInt}<br/>
	</c:forEach>
	<c:if test="${empty reservation}">
	 
         <img src="_resource/images/discover/etc/popup-zero-person-icon.png" alt="" />
         <div class="desc1">이 버킷 리스트를 </div>
       <div class="desc2">참여해<span>풍부한 삶을 누리는</span>그랩퍼가 되어 보세요!</div>
     
	</c:if>

</body>
</html>