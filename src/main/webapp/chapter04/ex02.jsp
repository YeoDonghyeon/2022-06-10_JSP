<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 내장객체</title>
</head>
<body>

	<div>id => <%= id %></div>
	<div>pw => <%= pw %></div>
	
	<hr>
	
	<div>id => ${param.id }</div>
	<div>pw => ${param.pw }</div>

	<div>id => ${param['id'] }</div>
	<div>pw => ${param['pw'] }</div>
	
	<div>${param }</div>
	
<%-- 	<jsp:include page="${param.url }" /> --%>
	
	<div>${requestScope }</div>
</body>
</html>