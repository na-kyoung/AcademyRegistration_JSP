<%@page import="myProject.registerDo"%>
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
	
	<jsp:useBean id="rdao" class="myProject.registerDao" />
	
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		registerDo rdo = rdao.getOneInfo(num);
	%>
	
<div class="container" style="max-width:800px; border:1px solid #eee;
	border-radius:5px; margin-top:100px; box-shadow:0 10px 20px rgba(0,0,0,0.3); padding:20px">
	<p class="text-start fs-1 fw-bold"> 수강신청 정보 수정 </p>
	<form action="registerModifyProc.jsp" method="get">
	<table border="1">
			<tr height="60" align="center">
				<td width="100"> 이름 </td>
				<td width="300">
					<input type="text" name="name" value="<%= rdo.getName() %>">
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="100"> 전화번호 </td>
				<td width="300">
					<input type="text" name="tel" value="<%= rdo.getTel() %>">
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="100"> 이메일 </td>
				<td width="300">
					<input type="text" name="email" value="<%= rdo.getEmail() %>">
				</td>
			</tr>
			<tr height="300" align="center">
				<td width="100"> 과목 </td>
				<td width="700" style="line-height:300%">
					<!-- <input type="text" name="job"> -->
					<input type="checkbox" name="subject" value="C, C++ 정복하기" > C, C++ 정복하기 <br>
					<input type="checkbox" name="subject" value="MS-SQL 마스터" > MS-SQL 마스터 <br>
					<input type="checkbox" name="subject" value="인공지능 이론" disabled> <del> 인공지능 이론 (마감)</del><br>
					<input type="checkbox" name="subject" value="웹개발자 JSP (기본)" > 웹개발자 JSP (기본) <br>
					<input type="checkbox" name="subject" value="웹개발자 JSP (심화)" > 웹개발자 JSP (심화) <br>
					<input type="checkbox" name="subject" value="Python으로 배우는 알고리즘" > Python과 알고리즘 <br>
					<input type="checkbox" name="subject" value="Notion 100% 활용하기" > Notion 100% 활용하기
				</td>
			</tr>
			<tr height="70" align="center">
				<td width="100"> 결제수단 </td>
				<td width="300">
					<input type="checkbox" name="payment" value="무통장입금" > 무통장입금
					<input type="checkbox" name="payment" value="현장결제" > 현장결제
				</td>
			</tr>
			<tr height="60" align="center">
				<td colspan="2">
					<input type="hidden" name="num" value="<%= rdo.getNum() %>">
					<input type="submit" value="수정하기">
					<input type="button" value="돌아가기" onclick="location.href='registerList.jsp'">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>