<%@page import="myProject.subjectDo"%>
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
	<p class="text-start fs-1 fw-bold"> <%=request.getParameter("lang") %> 검색 결과 </p>
	<table width="800" border="1">
		<tr align="center">
			<td width="200"> 과목명 </td>
			<td width="150"> 사용 언어 </td>
			<td width="150"> 선생님 </td>
			<td width="150"> 수강료 </td>
		</tr>
		
		<jsp:useBean id="sddo" class="myProject.subjectDo" />
		<jsp:setProperty property="*" name="sddo"/>
		
		<jsp:useBean id="sdao" class="myProject.subjectDao" />
		<%
			//String lang = request.getParameter("lang");
		
			ArrayList<subjectDo> sList = sdao.getSubject(sddo.getLang());
			
			for(int i=0; i<sList.size(); i++){
				subjectDo sdo = sList.get(i);
				
		%>
				<tr height="50" align="center">
					<td width="150"> <%= sdo.getName() %> </td>
					<td width="150"> <%= sdo.getLang() %> </td>
					<td width="150"> <%= sdo.getTeacher() %> </td>
					<td width="150"> <%= sdo.getPrice() %> </td>
				</tr>
		<%
			}
		%>
	</table>
</div>
</body>
</html>