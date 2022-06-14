<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 Core (2) - 조건 태그</title>
</head>
<body>

	<%-- if 태그 : 자바의 if문임 / 조건식은 test 속성에 넣음 --%>
<%-- 	<c:if test="${param.age ge 10 }" > --%>
<!-- 		<div>10살 이상입니다.</div> -->
<%-- 	</c:if> --%>

<%-- 	<c:if test="${param.age lt 10 }"> --%>
<!-- 		<div>10살 미만입니다.</div> -->
<%-- 	</c:if> --%>

	<%-- choose, when, otherwise 태그 : 자바의 if, else if, else와 같은 역할 --%>
	<%-- choose 태그 : if의 시작과 끝을 알리는 태그 --%>
	<%-- when 태그 : if 또는 else if의 역할을 하는 태그 --%>
	<%-- otherwise 태그 : else의 역할을 하는 태그 --%>
	
	<c:choose>
		<c:when test="${param.age ge 10 }">
			<div>10살 이상입니다.</div>
		</c:when>
		<c:otherwise>
			<div>10살 미만입니다.</div>
		</c:otherwise>
		
		
<%-- 		<c:when test="${param.age lt 10 }"> --%>
<!-- 			<div>10살 미만입니다.</div> -->
<%-- 		</c:when> --%>
	</c:choose>

</body>
</html>