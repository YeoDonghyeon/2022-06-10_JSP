<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 2단</title>
</head>
<body>
	<div>스크립트릿을 사용해 구구단 2단 출력 varsion 1</div>
<%
	for(int back=1; back<=9; back++) {
		int result = 2 * back;
		
		out.print("<div>2 * " + back + " = " + result + "</div>");
	}
%>


	<hr>
	
	<div>스크립트릿을 사용해 구구단 2단 출력 varsion 2</div>
<%
	for(int back=1; back<=9; back++) {
		int result = 2 * back;
%>
		<div>2 * <%=back %> = <%=result %></div>
<%		
	}
%>
	
	
	<hr>

	<div>2 * 1 = 2</div>
	<div>2 * 2 = 4</div>
	<div>2 * 3 = 6</div>
	<div>2 * 4 = 8</div>
	<div>2 * 5 = 10</div>
	<div>2 * 6 = 12</div>
	<div>2 * 7 = 14</div>
	<div>2 * 8 = 16</div>
	<div>2 * 9 = 18</div>

</body>
</html>