<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	
	request.setAttribute("name", name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 아래 EL과 같이 지난 시간에 배웠던것들을 활용해서 10을 출력해보세요. --%>
	<%-- 1. 표현식 태그 --%>
	<%= 10 %>
	<%-- 2. 스크립트릿 태그 --%>
	<div>값 : <% out.print(10); %></div>
	
	<hr>

	

	<div>값 : ${10 }</div>
	<div>계산식 : ${3 + 7 }</div>
	<%-- EL이 출력할 변수가 존재하지 않으면 ""이라는 빈 문자열이 출력됨 --%>
	<%-- EL을 사용해서 변수에 들어있는 값을 출력해라 라고 하면 --%>
	<%-- EL은 먼저 request 영역에서 그 변수를 찾음 --%>
	<%-- request 영역에 있으면 그 변수를 사용하고 없으면 그 다음 session 영역에서 그 변수를 찾음 --%>
	<%-- session 영역에 있으면 그 변수를 사용하고 없으면 마지막으로 application 영역에서 그 변수를 찾음 --%>
	<%-- application 영역에 있으면 그 변수를 사용하고 없으면 변수가 없다고 판단하고 빈 문자열을 출력함 --%>
	<div>변수명 : ${param['name'] }</div>

	<%-- EL은 문자열만 있다. "", '' 둘 다 문자열을 생성하는 기호 --%>
	<div>문자열 : ${"Hello World~!" }</div>
	<div>문자열 : ${'Hello World~!' }</div>
	
	<div>비교 연산자 : ${3 gt 7 }</div>
	<%-- empty 연산자 변수의 존재 여ㅕ부 또는 변수에 null, 빈 문자열이 들어있을 경우 true 인 연산자 --%>
	<div>empty 연산자 : ${empty name2 }</div>
	
	<%-- 
		비교 연산자
		> : gt  그레이트
		< : lt  리틀
		>= : ge 그레이트 이퀄
		<= : le 리틀 이퀄
		== : eq 이퀄
		!= : ne 낫 이퀄
		
		논리 연산자
		&& : and
		|| : or
		! : not
	 --%>
	 
	 
</body>
</html>