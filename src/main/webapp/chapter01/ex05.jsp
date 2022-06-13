<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주석과 표현식 태그</title>
</head>
<body>
	<%-- JSP 주석은 스크립트 기반 태그 --%>
	<div>이 위에는 JSP 주석이 있음</div>
	
	<!-- HTML 주석 -->
	<div>이 위에는 HTML 주석이 있음</div>
	
	
	<%-- JSP 주석과 HTML 주석의 차이 : JSP주석은 웹페이지에 안보임 그러나 HTML 주석은 웹페이지에 보임 --%>

	<hr>
	
	<div>표현식 태그는 값을 출력하는 태그</div>
	<ul>
		<li><%= 1 %></li>
		<li><%= 3.14 %></li>
		<li><%= "Hello World~!" %></li>
	</ul>
	
	 

</body>
</html>