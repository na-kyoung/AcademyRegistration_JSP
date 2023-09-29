<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 수강신청 수정 처리 </h2>
	<hr>
	
	<jsp:useBean id="rdo" class="myProject.registerDo"/>
	<jsp:setProperty property="*" name="rdo"/>
	
	<jsp:useBean id="rdao" class="myProject.registerDao"/>
	
	<%
		//체크박스의 여러데이터를 하나의 스트링으로 저장
		String[] sub = request.getParameterValues("subject");
		String subText = "";
		for(int i=0; i<sub.length; i++){
			subText += sub[i] + " ";
		}
		rdo.setSubject(subText);
		
		int num = Integer.parseInt(request.getParameter("num"));
		rdao.modifyInfo(rdo);
		
		//수정된 데이터를 전체 리스트 보기에서 확인하기
		response.sendRedirect("registerList.jsp");
	%>

</body>
</html>