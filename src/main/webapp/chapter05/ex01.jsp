<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 사용</title>
</head>
<body>

	<h1>JSTL을 사용하는 방법</h1>

	<ol>
		<li>JSTL을 Tomcat 홈페이지에서 다운</li>
		<li>프로젝트 내 WEB-INF -> lib 폴더에 다운 받은 JSTL을 넣는다.</li>
		<li>----- 여기까지는 최초로 딱 한번만 하면 됨 -----</li>
		<li>----- 이 밑으로는 JSTL을 사용할 JSP 페이지 마다 해야하는것 -----</li>
		<li>그 페이지에서 JSTL중 어떤걸 사용할 지 지정하는 코드를 입력</li>
		<li>Core 라이브러리를 사용한다면 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %></li>
	</ol>


</body>
</html>