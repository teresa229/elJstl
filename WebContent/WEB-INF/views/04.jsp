
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
		<h2>자바문법</h2>
			<%
				UserVo userVo = (UserVo)request.getAttribute("userVo");
				int num = (int)request.getAttribute("num");
				String str = (String)request.getAttribute("str");
			%>
			UserVo -> name = <%=userVo.getName() %><br>
			UserVo -> email = <%=userVo.getEmail() %><br>
			UserVo -> password = <%=userVo.getPassword() %><br>
			UserVo -> gender = <%=userVo.getGender() %><br>
			
			num= <%=num %><br>
			str= <%=str %><br>
		
		<h2>el</h2>
		userVo -> name = ${userVo.name}<br>
		userVo -> name = ${requestScope.userVo.name} <br><!-- name은 위의 getname을 불러오는 것이다. userVo request.setAttribute("userVo", userVo); 의 "userVo"--> 
		
		userVo -> email = ${requestScope.userVo.email} <br>
		userVo -> password = ${requestScope.userVo.password} <br>
		userVo -> gender = ${requestScope.userVo.gender} <br>
		<br>
		num = ${requestScope.num}<br>
		str = ${requestScope.str}<br>
		<br>
		num = ${num}<br>
		str = ${str}<br>
	
</body>
</html>