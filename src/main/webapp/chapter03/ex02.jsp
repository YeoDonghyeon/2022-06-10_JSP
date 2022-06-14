<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String url = request.getParameter("url");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>

	<h1>ex02.jsp입니다.</h1>
	
	<jsp:forward page="<%= url %>" />

</body>
</html>