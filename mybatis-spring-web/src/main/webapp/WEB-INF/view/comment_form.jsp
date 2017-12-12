<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form commandName="comment" action="comment_select" method="post" >
	<label> <spring:message code="commentSelect" /> :
	<form:input path="commentNo" /> <br/>
	</label>
	<input type="submit" value='<spring:message code="select.btn"/>'/>
</form:form>

<form:form commandName="comment" action="comment_insert" method="post" >
	<label> <spring:message code="commentInsert" /> :
	<form:input path="commentNo" /> <br/>
	</label>
	<label> <spring:message code="userId" /> :
	<form:input path="userId" /> <br/>
	</label>
	<label> <spring:message code="commentContent" /> :
	<form:input path="commentContent" /> <br/>
	</label>
	<input type="submit" value='<spring:message code="Insert.btn"/>'/>
</form:form>

</body>
</html>