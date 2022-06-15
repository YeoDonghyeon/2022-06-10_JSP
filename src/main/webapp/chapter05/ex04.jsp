<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 Core (3) - 반복 태그</title>
</head>
<body>

	<c:set var="count" value="5"></c:set>

	<c:forEach var="row" begin="1" end="${count }">
		<div>
			<c:forEach var="col" begin="1" end="${row }">
				★
			</c:forEach>
		</div>
	</c:forEach>

<%
	for(int back=1; back<=9; back++) {
		int result = 2* back;
	
%>
	<div>2 * <%= back %> = <%= result %></div>
<%
	}
%>

	<hr>

	<c:forEach begin="1" end="9" step="1" var="back">
		<div>2 * ${back } = ${back }</div>
	</c:forEach>

</body>
</html>