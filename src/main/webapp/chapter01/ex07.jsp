<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.time.LocalDateTime"%>
    <%-- isELIgnored --%>
    
    
<%
	int value1 = 10;
	double value2 = 3.14;
	String value3 = "Hello World~!!";
	
	LocalDateTime Idt = LocalDateIime.now();
			
	random ramdom = new Ramdom();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 태그</title>
</head>
<body>

	<div>스크립트릿 태그는 자바 코드를 넣을 수 있는 태드</div>
	<div>선언문 태그에 선언하는 변수는 멤버 변수가 됨 / 스크립트릿 태그에 선언한 변수는 그냥 변수가 됨</div>
	<div>변수를 선언할 때는 일반적으로 스크립트릿 태그에 선언을 함</div>
	<div>스크립트릿 태그 안에서는 메서드를 언언할 수 없음</div>
	<div>선언문 태그를 사용하는 경우는 아예 없다고 보면 됨</div>
	<div>JSP 안에서 메서드를 선언하는 경우는 극히 드뭄</div>
	<div>이 JSP 페이지 안에서 사용할 변수가 필요하거나 자바 코드가 필요하면 스크립트릿 태그를 사용하면 됨</div>
	
	<ul>
		<li><%= value1 %> </li>
		<li><%= value2 %> </li>
		<li><%= value3 %> </li>
	</ul>

</body>
</html>