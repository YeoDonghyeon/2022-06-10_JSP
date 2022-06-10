<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int value1 = Integer.parseInt(request.getParameter("value1"));
	int value2 = Integer.parseInt(request.getParameter("value2"));
	
	int result = value1 + value2;

%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>계산 결과</h1>
	<h2> <%= result %> </h2>
	
</body>
</html>