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
	예약 ID : ${reservation.mEmail}<br/>
	예약 날짜 : ${reservation.resDate}<br/> 
	예약 인원 : ${reservation.resInt}<br/>
	예약 ID : ${reservation.bkName}<br/>
	</c:forEach>

</body>
</html>