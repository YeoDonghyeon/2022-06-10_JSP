<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 Core (5) - URL 태그</title>
</head>
<body>

	<%-- include 지시자 태그와 include 표준액션태그와 같은 역할 --%>
<%-- 	<c:import url="ex05.jsp" /> --%>

	<c:url value="ex05.jsp?id=guest&pw=1004" var="url" >
		<c:param name="id" value="guest" />
		<c:param name="pw" value="1004" />
	</c:url>
	
	<div>url = ${url }</div>
	
	<c:redirect url="${url }"></c:redirect>

</body>
</html>