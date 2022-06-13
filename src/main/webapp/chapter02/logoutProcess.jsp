<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%-- 로그아웃이 되도록 처리하고 다시 로그인 페이지로 이동하도록 지시하세요 --%>
<%
	session.invalidate();
	response.sendRedirect("/w/chapter02/login.jsp");
%>
