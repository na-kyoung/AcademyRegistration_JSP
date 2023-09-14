<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 수강신청 삭제 처리 </h2>
	<hr>
	
	<jsp:useBean id="rdo" class="myProject.registerDo"/>
	<jsp:setProperty property="*" name="rdo"/>
	
	<jsp:useBean id="rdao" class="myProject.registerDao"/>
	
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		rdao.deleteInfo(rdo);
		
		//수정된 데이터를 전체 리스트 보기에서 확인하기
		response.sendRedirect("registerList.jsp");
	%>

</body>
</html>