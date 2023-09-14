<%@page import="myProject.loginDo"%>
<%@page import="java.util.ArrayList"%>
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
<div class="container" style="max-width:850px; border:1px solid #eee;
	border-radius:5px; margin-top:100px; box-shadow:0 10px 20px rgba(0,0,0,0.3); padding:20px">
	<p class="text-start fs-1 fw-bold">회원목록</p>	
	<table width="800" border="1">
		<tr align="center">
			<td width="150"> 번호 </td>
			<td width="150"> 이름 </td>
			<td width="150"> 아이디 </td>
			<td width="150"> 비밀번호 </td>
			<td width="250"> 전화번호 </td>
			<td width="250"> 이메일 </td>
		</tr>
		
		
		<jsp:useBean id="ldao" class="myProject.loginDao" />
		<%
			ArrayList<loginDo> aList = ldao.getAllLogin();
			
			for(int i=0; i<aList.size(); i++){
				loginDo ldo = aList.get(i);
				
		%>
				<tr height="50" align="center">
					<td width="150"> <%= ldo.getNum() %> </td>
					<td width="150"> <%=ldo.getName() %> </td>
					<td width="150"> <%= ldo.getId() %> </td>
					<td width="150"> <%= ldo.getPassword() %> </td>
					<td width="150"> <%= ldo.getTel() %> </td>
					<td width="150"> <%= ldo.getEmail() %> </td>
				</tr>
		<%
			}
		%>
		<tr height="50" align="center">
			<td colspan="12">
				<input type="button" onclick="location.href='main_sub.jsp'" value="Home">
			</td>
		</tr>
	</table>
</div>
</body>
</html>