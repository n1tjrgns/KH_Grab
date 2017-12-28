<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>

<table class="urlBoard" border="1">
		    <thead>
		    <tr>
		        <th scope="cols">종류 <button onclick="ajaxOrderBy('sns');">정렬↓</button></th>
		        <th scope="cols">날짜 <button onclick="ajaxOrderBy('date');">정렬↓</button></th>
		        <th scope="cols">URL</th>
		    </tr>
		    </thead>		    
		    <tbody >
		    <c:forEach var="linkdata" items="${linkdata}" varStatus="status">
		    <tr>
		        <td>${linkdata.snsSort}</td>
		        <td><fmt:formatDate value="${linkdata.bkrvDate}" type="both" pattern="yyyy-MM-dd"/></td>
		        <td><a href="#" onclick="openSnsUrl('${linkdata.snsUrl}');">${linkdata.snsUrl}</a></td>
		    </tr>		    
		    </c:forEach>
		    </tbody>
		</table>
</body>
</html>