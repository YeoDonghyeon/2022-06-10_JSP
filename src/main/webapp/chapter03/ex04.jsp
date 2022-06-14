<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String url = request.getParameter("url");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
</head>
<body>
	
	<h1>ex04.jsp 입니다.</h1>
	
	<div>----- include 전 -----</div>

	<%-- forward, include 하는 페이지로 값을 전달하고 싶을 때는 param 표준 액션 태그를 사용 --%>
	<%-- param 표준 액션 태그로 전달한 값을 꺼내쓸 때는 request.getParameter() 메서드를 사용 --%>
	<jsp:include page="<%= url %>" >
		<jsp:param value="11" name="value2"/>
	</jsp:include>

	<div>----- include 전 -----</div>
</body>
</html>