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
    		//���ǿ� id ���� ����
    		session.setAttribute("id", id);
    		//main_sub.jsp ȣ��(main_nav.jsp�� id ȣ��)
    		response.sendRedirect("main_sub.jsp");
        	
            //PrintWriter script = response.getWriter();
            //script.println("<script>");
            //script.println("location.href = 'main_sub.jsp'");
            //script.println("</script>");
        }
        else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('��й�ȣ�� Ʋ���ϴ�.')");
            script.println("history.back()");   //���� �������� ����ڸ� ����
            script.println("</script>");
        }
        else if (result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('�������� �ʴ� ���̵��Դϴ�.')");
            script.println("history.back()");    //���� �������� ����ڸ� ����
            script.println("</script>");
        }
        else if (result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('DB ������ �߻��߽��ϴ�.')");
            script.println("history.back()");    //���� �������� ����ڸ� ����
            script.println("</script>");
        }
    %>

</body>
</html>