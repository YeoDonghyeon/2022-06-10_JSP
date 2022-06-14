<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>
    
<jsp:useBean id="person" class="chapter03.Person" scope="request" />
<jsp:setProperty property="*" name="person"/>

<jsp:forward page="output.jsp" />