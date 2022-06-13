<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>

<%
 	String loginName = (String) session.getAttribute("loginName");
	if(loginName != null) {
		response.sendRedirect("/w/chapter02/loginSuccess.jsp");
	}
%>


<form action="/w/chapter02/loginProcess.jsp" method="post">
	<label>ID : <input type="text" name="id" placeholder="아이디"></label>
	<br>
	
	<label>PW : <input type="text" name="pw" placeholder="비밀번호"></label>
	<br>
	
	<input type="submit" value="로그인">
</form>

</body>
</html>