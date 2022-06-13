<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// request.getMethod() -> 클라이언트가 접근한 방식을 알 수 있음 / GET, POST, ...
	boolean isPost = request.getMethod().equals("POST");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리 프로그램</title>
</head>
<body>

<%
	if(isPost) {
		// 로그인 처리
		out.print("로그인 처리중 입니다.");
		
		
		// request 내장 객체를 사용해서 클라이언트가 전달한 아이디, 비밀번호를 꺼내 출력하세요
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String loginName = "홍길동";
		
		id = id.trim();
		pw = pw.trim();
		
		if(id.isEmpty() || pw.isEmpty()) {
			// 아이디 또는 비밀번호를 입력하지 않았거나 공백으로만 입력했을 경우
			// 다시 로그인 페이지로 돌아가도록 지시
			response.sendRedirect("/w/chapter02/login.jsp");
		} else {
			// 아이디와 비밀번호에 무언가를 입력했다면

			if(loginId.equals(id) && loginPw.equals(pw)) {
				// 아이디와 비밀번호가 정확하다면 세션에 로그인 상태 정보 저장 후 로그인 성공 페이지로 이동을 지시
				session.setAttribute("loginName", loginName);
				response.sendRedirect("/w/chapter02/loginSuccess.jsp");
			} else {
				// 아이디 또는 비밀번호가 정확하지 않다면
				response.sendRedirect("/w/chapter02/login.jsp");
			}
		}
	} else {
		// "POST 방식으로만 접근할 수 있습니다." 를 출력
%>
		<div>POST 방식으로만 접근할 수 있습니다.</div>
<%
	}
%>

</body>
</html>