<%@page import="myProject.registerDo"%>
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
	<p class="text-start fs-1 fw-bold"> 수강신청 목록 </p>
	<table width="800" border="1">
		<tr align="center">
			<td width="150"> 번호 </td>
			<td width="150"> 이름 </td>
			<td width="150"> 전화번호 </td>
			<td width="550"> 신청 과목 </td>
			<td width="150"> 결제 수단 </td>
		</tr>
		
	<jsp:useBean id="rdo" class="myProject.registerDo" />
	<jsp:setProperty property="*" name="rdo"/>
		
	<jsp:useBean id="rdao" class="myProject.registerDao" />
	
	<%
		ArrayList<registerDo> aList = rdao.getAllInfo();
		
		for(int i=0; i<aList.size(); i++){			
			registerDo rgdo = aList.get(i);
			
	%>
		<tr height="50" align="center">
			<td width="150"> <%= rgdo.getNum() %> </td>
			<td width="150">
				<a href="registerInfo.jsp?num=<%= rgdo.getNum() %>">
					<%=rgdo.getName() %>
				 </a>
			</td>
			<td width="150"> <%= rgdo.getTel() %> </td>
			<td width="550"> <%= rgdo.getSubject() %> </td>
			<td width="150"> <%= rgdo.getPayment() %> </td>
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