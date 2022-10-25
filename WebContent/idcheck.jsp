<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="./css/reset2.css">
<title>아이디 중복 확인</title>
</head>
<body>
<div class="fr">
	<h2>아이디 중복 검사</h2>
	<form action="idcheckPro.jsp" method="post" class="frm" onsubmit="return invalidCheck(this)">
		<input type="text" id="id" name="id" placeholder="5~12 문자 및 숫자 입력" required autofocus>
		<input type="submit" value="중복확인">
	</form>
	<script>
	function invalidCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.length<5 || id.length>12){
			alert("아이디는 최소 5글자에서 최대 12글자 사이입니다.");
			return false;
		}
	}
	</script>
</div>
</body>
</html>