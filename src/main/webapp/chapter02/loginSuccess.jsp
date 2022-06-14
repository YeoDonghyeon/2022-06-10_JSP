<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 페이지</title>
</head>
<body>

	<%-- 로그인 상태 정보의 이름을 꺼내서 "~~님 환영합니다." 를 출력하고 --%>
	<%-- 그 아래 로그아웃 텍스트 링크를 출력하세요. --%>
	<%-- 텍스트 링크의 경로는 /w/chapter02/logoutProcess.jsp 입니다. --%>
<%
	String loginName = (String) session.getAttribute("loginName");
	if(loginName == null) {
		// 로그인을 하지 않은 상태로 로그인 성공 페이지로 들어왔을 때 로그인 페이지로 이동을 지시
		response.sendRedirect("/w/chapter02/login.jsp");
	} else { 
%>	
		<div><%=loginName %>님 환영합니다.</div>
		<a href="/w/chapter02/logoutProcess.jsp">로그아웃</a>
<%
	}
%>

	

</body>
</html>