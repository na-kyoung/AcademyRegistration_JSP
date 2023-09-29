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

	<%
		request.setCharacterEncoding("utf-8");
	%>

	<jsp:useBean id="ldo" class="myProject.loginDo" />
	<jsp:setProperty property="*" name="ldo"/>
	
	<jsp:useBean id="ldao" class="myProject.loginDao" />
	
	<%
		//입력받은 데이터 dao 이용하여 DB에 저장
		ldao.insertLogin(ldo);
	%>

<div class="container" style="max-width:450px; border:1px solid #eee;
	border-radius:5px; margin-top:100px; box-shadow:0 10px 20px rgba(0,0,0,0.3); padding:20px">
	<p class="text-start fs-1 fw-bold">회원가입 성공</p>
	<table border="1">
		<tr height="60" align="center">
			<td width="100"> 이름 </td>
			<td width="300">
				<%= ldo.getName() %>
			</td>
		</tr>
		<tr height="60" align="center">
			<td width="100"> 아이디 </td>
			<td width="300">
				<%= ldo.getId() %>
			</td>
		</tr>
		<tr height="60" align="center">
			<td width="100"> 비밀번호 </td>
			<td width="300">
				<%= ldo.getPassword() %>
			</td>
		</tr>
		<tr height="60" align="center">
			<td width="100"> 전화번호 </td>
			<td width="300">
				<%= ldo.getTel() %>
			</td>
		</tr>
		<tr height="60" align="center">
			<td width="100"> 이메일 </td>
			<td width="300">
				<%= ldo.getEmail() %>
			</td>
		</tr>
		<tr height="60" align="center">
			<td colspan="2">
				<input type="button" value="Home" onclick="location.href='main_sub.jsp'">
				<input type="button" value="Login" onclick="location.href='loginForm.jsp'">
				<input type="button" value="List" onclick="location.href='joinList.jsp'">
			</td>
		</tr>
	</table>
</div>
	
</body>
</html>