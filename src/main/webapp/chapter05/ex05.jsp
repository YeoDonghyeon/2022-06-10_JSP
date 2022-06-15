<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="chapter03.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	Person p1 = new Person();
	p1.setName("홍길동");
	p1.setAge(12);
	
	Person p2 = new Person();
	p2.setName("김철수");
	p2.setAge(13);
	
	Person p3 = new Person();
	p3.setName("김영희");
	p3.setAge(14);
	
	List<Person> personList = new ArrayList<>();
	personList.add(p1);
	personList.add(p2);
	personList.add(p3);
	
	request.setAttribute("personList", personList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL의 Core (4) - 반복 태그</title>
</head>
<body>

	

	<%-- forEach를 사용해서 세 사람의 정보를 출력하세요 --%>
	<%-- varStatus 속성 : 현재 반복문의 상태를 저장하는 변수 --%>
	<%-- status 변수가 가지고 있는 멤버 변수 --%>
	<%-- 1. current : 반복문의 반복 횟수(1부터 시작) --%>
	<%-- 2. index : 접근한 데이터의 인덱스 번호(반복 횟수-1) --%>
	<%-- 3. count : 반복문의 반복 횟수(1부터 시작) --%>
	<%-- 4. first : 현재가 첫 번째 반복인지 여부 --%>
	<%-- 5. last : 현재가 마지막 반복인지 여부 --%>
	<%-- 6. begin : 반복문의 시작값(begin 속성) --%>
	<%-- 7. end : 반복문의 종료값(end 속성) --%>
	<%-- 8. step : 반복문의 증가값(step 속성) --%>
	<c:forEach items="${personList }" var="person" varStatus="status" >
		<div>
			<div>----- ${status.count }번째 사람의 정보 -----</div>
			<div>이름 : ${person.name }</div>
			<div>나이 : ${person.age }</div>
		</div>
		
		<hr>
		
	</c:forEach>

</body>
</html>