<%@page import="java.io.PrintWriter"%>
<%@page import="myProject.loginDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="ldo" class="myProject.loginDo" />
	<jsp:setProperty property="*" name="ldo"/>
	<%-- <jsp:setProperty property="password" name="ldo"/> --%>
	
	<%
		request.setCharacterEncoding("utf-8");

        loginDao ldao = new loginDao();
		/* int result = ldao.login(ldo); */
        int result = ldao.loginInfo(ldo.getId(), ldo.getPassword());
		/*int result = ldao.login(request.getParameter("id"),request.getParameter("password")); */
		
		
        if (result ==1){
        	String id = request.getParameter("id");
    		//세션에 id 정보 저장
    		session.setAttribute("id", id);
    		//main_sub.jsp 호출(main_nav.jsp에 id 호출)
    		response.sendRedirect("main_sub.jsp");
        	
            //PrintWriter script = response.getWriter();
            //script.println("<script>");
            //script.println("location.href = 'main_sub.jsp'");
            //script.println("</script>");
        }
        else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다.')");
            script.println("history.back()");   //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('존재하지 않는 아이디입니다.')");
            script.println("history.back()");    //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('DB 오류가 발생했습니다.')");
            script.println("history.back()");    //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
    %>

</body>
</html>