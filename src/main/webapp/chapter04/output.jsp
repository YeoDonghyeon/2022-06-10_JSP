<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사람 정보 출력</title>
</head>
<body>

    <%-- EL을 사용해서 객체명.멤버변수 로 접근하면 알아서 그 멤버 변수의 getter메서드를 호출하도록 바뀜 --%>
    <%-- EL은 먼저 request 영역에서 그 변수를 찾음 --%>
	<%-- request 영역에 있으면 그 변수를 사용하고 없으면 그 다음 session 영역에서 그 변수를 찾음 --%>
	<%-- 그래서 굳이 requestScope를 적어줄 필요없음 --%>
	<%-- 그렇지만 두영역 이상에 같은이름이 들어있으면 구체적으로 찝어주지만 하나만 들어있으면 굳이 적어 줄 필요는 없음 --%>
	<div>이 사람의 이름은 ${person.name } 입니다.</div>
	<div>이 사람의 나이는 ${person.age } 세입니다.</div>

</body>
</html>