<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container" style="max-width:450px; border:1px solid #eee;
	border-radius:5px; margin-top:100px; box-shadow:0 10px 20px rgba(0,0,0,0.3); padding:20px">
	<p class="text-start fs-1 fw-bold">회원가입</p>
	<form action="joinProc.jsp" method="get">
		<table border="1">
			<tr height="60" align="center">
				<td width="100"> 이름 </td>
				<td width="300">
					<input type="text" name="name">
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="100"> 아이디 </td>
				<td width="300">
					<input type="text" name="id">
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="100"> 비밀번호 </td>
				<td width="300">
					<input type="text" name="password">
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="100"> 전화번호 </td>
				<td width="300">
					<input type="text" name="tel">
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="100"> 이메일 </td>
				<td width="300">
					<input type="text" name="email">
				</td>
			</tr>
			<tr height="60" align="center">
				<td colspan="2">
					<input type="submit" value="회원가입">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>