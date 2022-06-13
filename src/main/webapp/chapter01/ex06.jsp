<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%!
	int value1 = 10;
	double value2 = 3.14;
	String value3 = "Hello World~!!";
	
	
	public int sum(int num1, int num2) {
		int result = num1 + num2;
		return result;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 태그</title>
</head>
<body>

	<div>선언문 태그 라는건 멤버 변수를 선언할 때 또는 메서드를 선언할 때 사용하는 태그</div>

	<ul>
		<li><%= value1 %> </li>
		<li><%= value2 %> </li>
		<li><%= value3 %> </li>
		<li><%= sum(1, 2) %> </li>
	</ul>

</body>
</html>