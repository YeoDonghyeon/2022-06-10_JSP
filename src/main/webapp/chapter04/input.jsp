<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사람 정보 입력 페이지</title>
</head>
<body>

	<form action="/w/chapter04/process.jsp" method="post">
		<div> <label>이름 : <input type="text" name="name" placeholder="이름"> </label> </div>
		<div> <label>나이 : <input type="text" name="age" placeholder="나이"> </label> </div>
		<input type="submit" value="저장">
	</form>

</body>
</html>