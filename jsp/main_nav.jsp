<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="/static/js/bootstrap.bundle.js"></script>
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	String logout = request.getParameter("logout");
	//logout 변수에 값이 있으면, 리셋
	if(logout != null){
		session.setAttribute("id", null);
	}
	
	//세션에 저장되어 있는 id값 읽어오기
	String id = (String)session.getAttribute("id");
	//저장되어 있는 id값이 없으면, id='손님' 설정
	if(id == null){
		id = "";
	}
%>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="./assets/icon.png" alt="" width="30" height="28" class="d-inline-block align-text-top">
      Let's IT
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="main_sub.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="registerForm.jsp"> 수강신청 </a>
        </li>
	    <li class="nav-item">
          <a class="nav-link" href="registerList.jsp">신청목록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="joinForm.jsp">회원가입</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="joinList.jsp">회원목록</a>
        </li>
       </ul>
      
      <form class="d-flex" action="searchProc.jsp" method="get">
        <input class="form-control me-2" type="search" placeholder="language" aria-label="Search" name="lang">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      
      <%
      	if(id.equals("")){
      %>
      	&nbsp;	<%= id %> <input class="btn btn-outline-success" 
      						type="button" 
      						value="로그인" 
      						onclick="location.href='loginForm.jsp'" 
      						style="margin-left:20px;">
      <%
      	}
      	else {
      %>
      	&nbsp;	<%= id %> 님 <input class="btn btn-outline-success" 
      						type="button" 
      						value="로그아웃" 
      						onclick="location.href='main_sub.jsp?logout=1'" 
      						style="margin-left:20px;">
      
      <%
      	}
      %>
      
      
    </div>
  </div>
</nav>
</body>
</html>