<%@page import="chapter03.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<jsp:useBean id="person" class="chapter03.Person" />
    
<jsp:setProperty property="*" name="person" /> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>이 사람의 이름은 <jsp:getProperty property="name" name="person" /> 입니다.</div>
	<div>이 사람의 나이는 <jsp:getProperty property="age" name="person" /> 세입니다.</div>
</body>
</html>