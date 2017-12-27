<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int result = (int)request.getAttribute("result");
		if(result == 1){
	%>
		<script>
		alert("물품이 삭제되었습니다!");
		window.location.href="Main_shop";
		</script>
	<%		
		}else{
	%>
		<script>
		alert("물품삭제가 실패되었습니다!");
		window.location.href="Main_shop";
		</script>
	<%		
		}
	%>
	
</body>
</html>