<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
</head>
<body>

	<h3>회원 가입</h3>
	<form action="/w/member/controller" method="post">
		<div>
			<div> <label for="id">ID :</label> </div>
			<div> <input type="text" name="id" id="id" placeholder="아이디"> </div>
		</div>
		
		<div>
			<div> <label for="pw">PW :</label> </div>
			<div> <input type="text" name="pw" id="pw" placeholder="비밀번호"> </div>
		</div>
		
		<div>
			<div> <label for="name">이름 :</label> </div>
			<div> <input type="text" name="name" id="name" placeholder="이름"> </div>
		</div>
		
		<div>
			<div> <label for="email">이메일 :</label> </div>
			<div> <input type="text" name="email" id="email" placeholder="이메일"> </div>
		</div>
		
		<input type="submit" value="회원가입">
	</form>

</body>
</html>