<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {border:3px;}
body { backgorund-color:white;}
</style>
</head>

<body>

 <p class="en" id="SNS_SHARE_CTGR"> ${reservation.bkName}</p>
 <span  id="SNS_SHARE_TEXT">


	예약날짜 : ${reservation.resDate}<br/> 
	방문인원 : ${reservation.resInt}<br/>
	담당업체 : ${reservation.cEmail}<br/>
	전달사항 : ${reservation.resCf}<br/>


 </span>
</body>
</html>