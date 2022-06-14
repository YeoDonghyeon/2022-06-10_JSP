<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 Core (1) - 기본 태그</title>
</head>
<body>
	
	<%-- set 태그 : 변수를 선언하는 태그 --%>
	<%-- var 속성 - 변수 이름 --%>
	<%-- value 속성 - 변수에 저장할 값 --%>
	<%-- scope 속성 - 변수의 활동 범위 --%>
<%-- 	<c:set var="name" value="홍길동" /> --%>
	<c:set var="name" value="${param['name'] }" />
	
	<div>name 변수의 값 => ${name }</div>
	
	<c:set var="vlaue" value="1" />
	
	<div>value 변수의 값 => ${value }</div>
	
	<c:set var="vlaue" value="${value + 1 }" />
	
	<div>value 변수의 값 => ${value }</div>
	
	<%-- out 태그 : 값을 출력하는 태드 / EL을 사용하는게 더 편하므로 거의 사용하지 않음 --%>
<%-- 	<c:out value="${value }" /> --%>

	<%-- remove 태그 : 변수를 삭제하는 태그 --%>
	<%-- scope 속성과 함께 사용하면 해당 scope의 변수를 삭제함 --%>
	<c:remove var="value" scope=""/>

</body>
</html>